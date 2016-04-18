using System;
using System.Data;
using System.Configuration;
using System.Collections;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using System.Data.SqlClient;

public partial class History : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["readerName"] == null)
        {
            Response.Redirect("Default.aspx");
        }
        gvBookBorrow.DataSource = getDataSource();
        //gvBookBorrow.DataKeyNames = new string[] { "bookCode" }; //设置主键
        gvBookBorrow.DataBind();                            //绑定GridView控件
    }

    protected void gvBookBorrow_SelectedIndexChanging(object sender, GridViewSelectEventArgs e)
    {

    }

    protected void gvBookBorrow_RowDataBound(object sender, GridViewRowEventArgs e)
    {
        if (e.Row.RowType == DataControlRowType.DataRow)
        {   

        }
    }

    private DataTable getDataSource()
    {
        DataTable dt = new DataTable();
        DataColumn dc = new DataColumn("bookName");
        dc.DataType = Type.GetType("System.String");
        dt.Columns.Add(dc);
        dc = new DataColumn("bookType");
        dc.DataType = Type.GetType("System.String");
        dt.Columns.Add(dc);
        dc = new DataColumn("bookConcern");
        dc.DataType = Type.GetType("System.String");
        dt.Columns.Add(dc);
        dc = new DataColumn("author");
        dc.DataType = Type.GetType("System.String");
        dt.Columns.Add(dc);
        dc = new DataColumn("backDate");
        dc.DataType = Type.GetType("System.String");
        dt.Columns.Add(dc);
        dc = new DataColumn("price");
        dc.DataType = Type.GetType("System.Double");
        dt.Columns.Add(dc);
        dc = new DataColumn("bookDays");
        dc.DataType = Type.GetType("System.Int32");
        dt.Columns.Add(dc);


        DataRow dr = dt.NewRow();
        dr["bookName"] = "测试书1";       //图书编号
        dr["bookType"] = "类型1";         //图书名称
        dr["bookConcern"] = "出版社1";
        dr["author"] = "作者1";
        dr["price"] = "108";
        dr["backDate"] = "2015-08-01";
        dr["bookDays"] = "15";
        dt.Rows.Add(dr);
        dr = dt.NewRow();
        dr["bookName"] = "测试书2";
        dr["bookType"] = "类型2";
        dr["bookConcern"] = "出版社2";
        dr["author"] = "作者2";
        dr["backDate"] = "2015-07-20";
        dr["price"] = "62";
        dr["bookDays"] = "50";
        dt.Rows.Add(dr);

        dr = dt.NewRow();
        dr["bookName"] = "测试书2";
        dr["bookType"] = "类型2";
        dr["bookConcern"] = "出版社2";
        dr["author"] = "作者2";
        dr["backDate"] = "2015-07-20";
        dr["price"] = "62";
        dr["bookDays"] = "50";
        dt.Rows.Add(dr);
        return dt;
    }
}