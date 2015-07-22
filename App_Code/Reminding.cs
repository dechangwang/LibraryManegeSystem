
/// Author: wht

using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Timers;
using LibraryEntity;
using System.Net.Mail;
using System.Text;
using SQLConnector;

/// <summary>
/// 借阅超期未还提醒箱
/// </summary>
namespace Reminding
{
    public class Reminder
    {
        Timer rt;
        public void Start() { rt.Start(); }
        public void Stop() { rt.Stop(); }
        /// <summary>
        /// 初始化提醒工具
        /// </summary>
        /// <param name="interval">使用毫秒设置，默认3天</param>
        //                                sec    min  hour day  
        public Reminder(double interval = 1000 * 60 * 60 * 24 * 3)
        {
            rt = new Timer(interval);
            rt.Enabled = true;
            rt.AutoReset = true;
            rt.Elapsed += _ChkAndRmd;
        }

        /// <summary>
        /// 获取执行的次数
        /// </summary>        
        public string DoneTimes()
        {
            return times.ToString();
        }
        int times = 0;

        class AddrPack
        {
            public string UserEmail;
            public string BookTitle;
            public AddrPack(string email, string title) { UserEmail = email; BookTitle = title; }
        }


        void _ChkAndRmd(object sender, ElapsedEventArgs e)
        {
            var addrs = _GetEmails();
            _SendEmails(addrs);
            ++times;
        }

        List<AddrPack> _GetEmails()
        {
            // 获取借书列表、藏书列表和个人信息
            var BorrowedBooks = (new SelectBookBorrow()).GetList();
            var RegisteredBooks = (new SelectBook()).GetList();
            var ReaderAccounts = (new SelectReader()).GetList();
            var ReaderInfos = (new SelectPersonInfo()).GetList();
            var InfoOfBooks = (new SelectBookInfo()).GetList();
            

            // 抽出所有超过时间的借阅单
            var ExpiredBooks = BorrowedBooks.Where(x => x.expireDate < DateTime.Now);

            // 抽出所有借出的书籍
            var BooksAtReader = RegisteredBooks.Where(x => x.state == "fake/借出").Select(x => x.bookID);

            // 求二者之交，访问Email
            var AddrPacks = new List<AddrPack>();
            foreach (var ex in ExpiredBooks)
            {
                if(BooksAtReader.Contains(ex.bookID)) // 求交
                {
                    // 收集对应的邮件地址
                    var CurReader = ReaderAccounts.Where(x => x.readerID == ex.readerID).FirstOrDefault();
                    var CurEmail = ReaderInfos.Where(x => x.personID == CurReader.account).FirstOrDefault().email;
                    // 收集对应的书籍名称
                    var CurBook = RegisteredBooks.Where(x => x.bookID == ex.bookID).FirstOrDefault();
                    var CurTitle = InfoOfBooks.Where(x => x.ISBN == CurBook.ISBN).FirstOrDefault().name;
                    // 保存结果
                    AddrPacks.Add(new AddrPack(CurEmail, CurTitle));
                }
            }

            return AddrPacks;
        }

        void _SendEmails(List<AddrPack> addrs)
        {
            foreach (var m in addrs)
            {
                try
                {
                    SmtpClient smtp = new SmtpClient("127.0.0.1", 25);
                    MailMessage msg = new MailMessage("lib@dbcp.moe", m.UserEmail, "您的书籍没有归还。", "您好，您借阅的书籍 " + m.BookTitle + "已到期，请尽快归还。谢谢！");
                    smtp.Send(msg);
                }
                catch (Exception ex)
                {
                    var str = new StringBuilder();
                    str.Append("\r\n# " + DateTime.Now.ToString("yyyy-MM-dd HH:mm:ss"));
                    str.Append(" ! " + ex.GetBaseException().ToString());

                    
                    var savepath = HttpRuntime.AppDomainAppPath + @"/log/"; // HttpContext.Current.Server.MapPath(@"~/log/");

                    if (!System.IO.Directory.Exists(savepath)) System.IO.Directory.CreateDirectory(savepath);

                    System.IO.File.AppendAllText(savepath + "mail-" + DateTime.Now.ToString("yyyyMMdd") + ".log", str.ToString(), System.Text.Encoding.UTF8);
                    //HttpContext.Current.Server.ClearError();
                }
            }
        }
    }
}
