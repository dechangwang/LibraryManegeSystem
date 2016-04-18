using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class borrowBook : System.Web.UI.Page
{
   public static string failOrNo ="noOperation";
    
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["AdminNum"] == null)
        {
            Response.Redirect("index.aspx");
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        
        //这里得到图书编号 和读者账号
        string bookId = BookID.Text.Trim();
        string raderNumber = ReaderNumber.Text;
     //若数据库中该图书不可解在显示不可解信息
        if (bookId == "123")
        {
            failOrNo = "fail";
        }
        else
        {
            failOrNo = "secceed";
        }

    }
    public string backFront()
    {
        return failOrNo;
    }
}