using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Pulishment : System.Web.UI.Page
{
    public static string failOrNo = "noOperation";
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["AdminNum"] == null)
        {
            Response.Redirect("index.aspx");
        }
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        string Reason = DropDownList1.Text;
        string Reader = reader.Text;
        string Cash = cash.Text;
        string Time = time.Text;
        string Book = book.Text;
        /*Response.Write(Reason);
        Response.Write(Reader);
        Response.Write(Cash);    插入这些信息到相应的表里面，并且跳转页面
        Response.Write(Time);
        Response.Write(Book);*/
       /* if ()
        {
            failOrNo = "fail";
        }
        else
        {
            failOrNo = "secceed";
        }*/
    }
    public string backFront()
    {
        return failOrNo;
    }
}