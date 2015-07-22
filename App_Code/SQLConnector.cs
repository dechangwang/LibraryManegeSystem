using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data.OracleClient;

using LibraryEntity;

/// <summary>
/// Author：Andy
/// 
/// Build Time：2015-07-14 21:47:27
/// 
/// </summary>

namespace SQLConnector
{
    public abstract class AbstractConnector
    {
        private static string connString = string.Concat(
                @"Data Source=",
                @"    (DESCRIPTION=",
                @"        (ADDRESS_LIST=",
                @"            (ADDRESS=",
                @"                (PROTOCOL=TCP)",
                @"                (HOST=10.60.40.233)",
                @"                (PORT=1521)",
                @"            )",
                @"        )",
                @"        (CONNECT_DATA=",
                @"            (SERVICE_NAME=bookmanage)",
                @"        )",
                @"    );",
                @"Persist Security Info=True;",
                @"User Id=scott;",
                @"Password=tiger"
                );

        private static OracleConnection conn = new OracleConnection(connString);

        protected abstract void ToDo(OracleCommand cmd);

        protected void connect()
        {
            try
            {
                conn.Open();

                OracleCommand cmd = conn.CreateCommand();

                ToDo(cmd);

                cmd.Dispose();
            }
            catch (Exception ex)
            {
                Console.WriteLine(ex.Message);
            }
            finally
            {
                conn.Close();
            }
        }

        public string ToDate(DateTime dt){
            return "to_date(" + dt.ToString("yyyyMMddHHmmss") + ", 'yyyymmddhh24miss')";
        }

        public string ToStr(String s)
        {
            return "'" + s + "'";
        }
    }

    /* TEST
        public class SelectBookInfoTest : AbstractConnector
    {
        private List<BookInfo> list;

        public List<BookInfo> GetList()
        {
            return list;
        }

        public SelectBookInfoTest()
        {
            list = new List<BookInfo>();

            connect();
        }


        protected override void ToDo(OracleCommand cmd)
        {
            cmd.CommandText = "select * from bookinfo";

            OracleDataReader odr = cmd.ExecuteReader();

            while (odr.Read())
            {
                list.Add(new BookInfo(
                    odr[0].ToString(),
                    odr[1].ToString(),
                    odr[2].ToString(),
                    odr[3].ToString(),
                    (DateTime)odr[4],
                    (Decimal)odr[5],
                    Int32.Parse(odr[6].ToString()),
                    Int32.Parse(odr[7].ToString())
                    ));
            }
        }
    }

    public class InsertBookInfo : AbstractConnector
    {
        private BookInfo value;

        public InsertBookInfo(BookInfo info)
        {
            value = info;

            connect();
        }


        protected override void ToDo(OracleCommand cmd)
        {
            string sql = "insert into bookinfo values(:isbn, :name, :writer, :publisher, :publishDate, :price, :loan, :total)";

            sql = sql.Replace(":isbn", ToStr(value.ISBN));
            sql = sql.Replace(":name", ToStr(value.name));
            sql = sql.Replace(":writer", ToStr(value.writer));
            sql = sql.Replace(":publisher", ToStr(value.publisher));
            sql = sql.Replace(":publishDate", ToDate(value.publishDate));
            sql = sql.Replace(":price", value.price.ToString());
            sql = sql.Replace(":loan", value.loanAmount.ToString());
            sql = sql.Replace(":total", value.totalAmount.ToString());

            cmd.CommandText = sql;

            Console.WriteLine("* :" + cmd.ExecuteNonQuery());
        }
    }

    public class DeleteBookInfo : AbstractConnector
    {
        private string name;

        public DeleteBookInfo(string toDel)
        {
            name = toDel;

            connect();
        }


        protected override void ToDo(OracleCommand cmd)
        {
            string sql = "delete from bookinfo where name=:name";
            sql = sql.Replace(":name", ToStr(name));

            Console.WriteLine(sql);

            cmd.CommandText = sql;

            cmd.ExecuteNonQuery();
        }
    }

    public class UpdateBookInfo : AbstractConnector
    {
        private BookInfo value;

        public UpdateBookInfo(BookInfo info)
        {
            value = info;

            connect();
        }


        protected override void ToDo(OracleCommand cmd)
        {
            string sql = "update bookinfo set loanamount=:loan, totalamount=:total where name=:name";
            sql = sql.Replace(":loan", value.loanAmount.ToString());
            sql = sql.Replace(":total", value.totalAmount.ToString());
            sql = sql.Replace(":name", ToStr(value.name));

            Console.WriteLine(sql);

            cmd.CommandText = sql;

            Console.WriteLine(cmd.ExecuteNonQuery());
        }
    }
    */


    /// <select>
    /// fake! simple!
    /// 
    /// example:
    ///     list = new SelectBook().GetList();
    /// 
    /// </select>

    public class SelectBook : AbstractConnector
    {
        private List<Book> list;
        public List<Book> GetList()
        {
            return list;
        }

        public SelectBook()
        {
            list = new List<Book>();

            connect();
        }

        protected override void ToDo(OracleCommand cmd)
        {
            string sql = "select * from book";

            cmd.CommandText = sql;

            OracleDataReader odr = cmd.ExecuteReader();

            while (odr.Read())
            {
                list.Add(new Book(
                    odr["bookId"].ToString(),
                    odr["ISBN"].ToString(),
                    odr["state"].ToString(),
                    (DateTime)odr["loadDate"]
                    ));
            }
        }
    }

    public class SelectBookInfo : AbstractConnector
    {
        private List<BookInfo> list;
        public List<BookInfo> GetList()
        {
            return list;
        }

        public SelectBookInfo()
        {
            list = new List<BookInfo>();

            connect();
        }

        protected override void ToDo(OracleCommand cmd)
        {
            string sql = "select * from bookbasixinfo";

            cmd.CommandText = sql;

            OracleDataReader odr = cmd.ExecuteReader();

            while (odr.Read())
            {
                list.Add(new BookInfo(
                    odr["ISBN"].ToString(),
                    odr["BOOK_NAME"].ToString(),
                    odr["WRITER"].ToString(),
                    odr["PRESS"].ToString(),
                    (DateTime)odr["PUBLISH_DATE"],
                    (Decimal)odr["PRICE"],
                    Int32.Parse(odr["LOAN_AMOUNT"].ToString()),
                    Int32.Parse(odr["TOTAL_AMOUNT"].ToString())
                    ));
            }
        }
    }

    public class SelectBookBorrow : AbstractConnector
    {
        private List<BookBorrow> list;
        public List<BookBorrow> GetList()
        {
            return list;
        }

        public SelectBookBorrow()
        {
            list = new List<BookBorrow>();

            connect();
        }

        protected override void ToDo(OracleCommand cmd)
        {
            string sql = "select * from bookborrow";

            cmd.CommandText = sql;

            OracleDataReader odr = cmd.ExecuteReader();

            while (odr.Read())
            {
                list.Add(new BookBorrow(
                    odr["borrowId"].ToString(),
                    odr["bookId"].ToString(),
                    odr["readerId"].ToString(),
                    (DateTime)odr["borrowDate"],
                    Int32.Parse(odr["renewTimes"].ToString()),
                    (DateTime)odr["expireDate"]
                    ));
            }
        }
    }

    public class SelectBookReturn : AbstractConnector
    {
        private List<BookReturn> list;
        public List<BookReturn> GetList()
        {
            return list;
        }

        public SelectBookReturn()
        {
            list = new List<BookReturn>();

            connect();
        }

        protected override void ToDo(OracleCommand cmd)
        {
            string sql = "select * from bookreturn";

            cmd.CommandText = sql;

            OracleDataReader odr = cmd.ExecuteReader();

            while (odr.Read())
            {
                list.Add(new BookReturn(
                    odr["returnId"].ToString(),
                    odr["bookId"].ToString(),
                    odr["readerId"].ToString(),
                    (DateTime)odr["returnDate"]
                    ));
            }
        }
    }

    public class SelectBookFine : AbstractConnector
    {
        private List<BookFine> list;
        public List<BookFine> GetList()
        {
            return list;
        }

        public SelectBookFine()
        {
            list = new List<BookFine>();

            connect();
        }

        protected override void ToDo(OracleCommand cmd)
        {
            string sql = "select * from bookfine";

            cmd.CommandText = sql;

            OracleDataReader odr = cmd.ExecuteReader();

            while (odr.Read())
            {
                list.Add(new BookFine(
                    odr["fineId"].ToString(),
                    odr["bookId"].ToString(),
                    odr["readerId"].ToString(),
                    (DateTime)odr["fineDate"],
                    (Decimal)odr["fine"],
                    odr["reason"].ToString()
                    ));
            }
        }
    }

    public class SelectReader : AbstractConnector
    {
        private List<Reader> list;
        public List<Reader> GetList()
        {
            return list;
        }

        public SelectReader()
        {
            list = new List<Reader>();

            connect();
        }

        protected override void ToDo(OracleCommand cmd)
        {
            string sql = "select * from reader";

            cmd.CommandText = sql;

            OracleDataReader odr = cmd.ExecuteReader();

            while (odr.Read())
            {
                list.Add(new Reader(
                    odr["readerId"].ToString(),
                    odr["account"].ToString(),
                    odr["password"].ToString(),
                    Int32.Parse(odr["borrowingNum"].ToString()),
                    Int32.Parse(odr["maxBorrowNum"].ToString())
                    ));
            }
        }
    }

    public class SelectManager : AbstractConnector
    {
        private List<Manager> list;
        public List<Manager> GetList()
        {
            return list;
        }

        public SelectManager()
        {
            list = new List<Manager>();

            connect();
        }

        protected override void ToDo(OracleCommand cmd)
        {
            string sql = "select * from manager";

            cmd.CommandText = sql;

            OracleDataReader odr = cmd.ExecuteReader();

            while (odr.Read())
            {
                list.Add(new Manager(
                    odr["managerId"].ToString(),
                    odr["account"].ToString(),
                    odr["password"].ToString()
                    ));
            }
        }
    }

    public class SelectPersonInfo : AbstractConnector
    {
        private List<PersonInfo> list;
        public List<PersonInfo> GetList()
        {
            return list;
        }

        public SelectPersonInfo()
        {
            list = new List<PersonInfo>();

            connect();
        }

        protected override void ToDo(OracleCommand cmd)
        {
            string sql = "select * from personinfo";

            cmd.CommandText = sql;

            OracleDataReader odr = cmd.ExecuteReader();

            while (odr.Read())
            {
                list.Add(new PersonInfo(
                    odr["personId"].ToString(),
                    odr["name"].ToString(),
                    odr["sex"].ToString(),
                    odr["telephone"].ToString(),
                    odr["email"].ToString()
                    ));
            }
        }
    }

    /// <>
    /// 
    /// 
    /// 
    /// </>
}
