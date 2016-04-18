using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
   
   
    protected void Page_Load(object sender, EventArgs e)
    {
       Session["readerName"] = null;
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
       string Account = account.Text;
       string Password = password.Text;
        
        if (Account != null)
        {
            //当输入不为空时  应该在数据库根据账号查找密码是否正确 若正确跳转到首页
            //同时将读者accout 保存在session中
            //否则使 输出错误信息
            Session["readerName"] = Account;
            Response.Redirect("index.aspx");
        }
       // Response.Redirect("index.aspx");
    }


    protected void password_TextChanged(object sender, EventArgs e)
    {

    }
    protected void account_TextChanged(object sender, EventArgs e)
    {
      
    }
    protected void right_Click(object sender, EventArgs e)
    {
        string Account = account.Text;
        if (Account == "")
        {
            account.Text = "请输入账号";
        }
    }
}