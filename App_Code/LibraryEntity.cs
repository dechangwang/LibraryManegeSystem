using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

/// <summary>
/// Author：Andy
/// 
/// Build Time：2015-07-13 15:13:52
/// 
/// Update Time：2015-07-13 22:44:12
/// add public to constructors.
/// 
/// </summary>

namespace LibraryEntity
{
    //具体到某一本书的信息
    public class Book
    {
        ///图书编号
        public string bookID;
        //ISBN编号
        public string ISBN;
        //入库时间
        public DateTime loadDate;
        //图书状态(可借出/已借出/已损坏/已丢失/已归还/已注销)
        public string state;

        public Book (string _bookID, string _isbn, string _state, DateTime _loadDate)
        {
            bookID = _bookID;
            ISBN = _isbn;
            state = _state;
            loadDate = _loadDate;
        }
    }

    //ISBN编码相同的书的信息
    public class BookInfo
    {
        //ISBN编号
        public string ISBN;
        //书名
        public string name;
        //作者
        public string writer;
        //出版社
        public string publisher;
        //出版日期
        public DateTime publishDate;
        //定价
        public Decimal price;
        //已借出数量
        public int loanAmount;
        //总可借数量(包括已借出/已归还/可借出，不包括已损坏/已丢失/已注销)
        public int totalAmount;

        public BookInfo(string _isbn, string _name, string _writer, string _publisher, 
            DateTime _publishDate, Decimal _price, int _loanAmount, int _totalAmount)
        {
            ISBN = _isbn;
            name = _name;
            writer = _writer;
            publisher = _publisher;
            publishDate = _publishDate;
            price = _price;
            loanAmount = _loanAmount;
            totalAmount = _totalAmount;
        }
    }

    public class BookBorrow
    {
        //借书编号
        public string borrowID;
        //图书编号
        public string bookID;
        //读者编号
        public string readerID;
        //借阅时间
        public DateTime borrowDate;
        //续借次数
        public int renewTimes;
        //到期时间
        public DateTime expireDate;

        public BookBorrow(string _borrowID, string _bookID, string _readerID, DateTime _borrowDate, 
            int _renewTimes, DateTime _expireDate)
        {
            borrowID = _borrowID;
            bookID = _bookID;
            readerID = _readerID;
            borrowDate = _borrowDate;
            renewTimes = _renewTimes;
            expireDate = _expireDate;
        }
    }

    public class BookReturn
    {
        //还书编号
        public string returnID;
        //图书编号
        public string bookID;
        //读者编号
        public string readerID;
        //归还时间
        public DateTime returnDate;

        public BookReturn(string _returnID, string _bookID, string _readerID, DateTime _returnDate)
        {
            returnID = _returnID;
            bookID = _bookID;
            readerID = _readerID;
            returnDate = _returnDate;
        }
    }

    public class BookFine
    {
        //罚款编号
        public string fineID;
        //图书编号
        public string bookID;
        //读者编号
        public string readerID;
        //罚款时间
        public DateTime fineDate;
        //罚款金额
        public Decimal fine;
        //罚款原因(丢失/损坏/超时)
        public string reason;

        public BookFine(string _fineID, string _bookID, string _readerID, DateTime _fineDate, 
            Decimal _fine, string _reason)
        {
            fineID = _fineID;
            bookID = _bookID;
            readerID = _readerID;
            fineDate = _fineDate;
            fine = _fine;
            reason = _reason;
        }
    }

    public class Reader
    {
        //读者编号
        public string readerID;
        //读者账号
        public string account;
        //读者密码
        public string password;
        //已借书数量
        public int borrowingNum;
        //最大可借书数量
        public int maxBorrowNum;

        public Reader(string _readerID, string _account, string _password, int _borrowingNum,
            int _maxBorrowNum)
        {
            readerID = _readerID;
            account = _account;
            password = _password;
            borrowingNum = _borrowingNum;
            maxBorrowNum = _maxBorrowNum;
        }
        public string  getAcc(){
            return account;
        }
    }

    public class Manager
    {
        //管理员编号
        public string managerID;
        //管理员账号
        public string account;
        //管理员密码
        public string password;

        public Manager(string _managerID, string _account, string _password)
        {
            managerID = _managerID;
            account = _account;
            password = _password;
        }
    }

    public class PersonInfo
    {
        //个人信息编号
        public string personID;
        //姓名
        public string name;
        //性别
        public string sex;
        //电话号码
        public string telephone;
        //电子邮箱
        public string email;

        public PersonInfo(string _personID, string _name, string _sex, string _telephone, string _email)
        {
            personID = _personID;
            name = _name;
            sex = _sex;
            telephone = _telephone;
            email = _email;
        }
    }
}
