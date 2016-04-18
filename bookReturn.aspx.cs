using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


public partial class bookReturn : System.Web.UI.Page
{
    public static string result = "fail";
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
        string readerNumber = ReaderNumber.Text;
       //搜索图书修改图书状态 修改读者借书数量
        //BookID.Text = readerNumber + "hi";
        result = "还书成功";
    }
    public string getOperationResult()
    {

        return result;
    }
}