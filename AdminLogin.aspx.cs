using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Default2 : System.Web.UI.Page
{

    protected void Page_Load(object sender, EventArgs e)
    {
        Session["AdminNum"] = null;
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string adminAccount = account.Text;
        string adminPassword = password.Text;


        if (adminAccount != null && adminPassword != null) {
            if (adminAccount == "123")
            {
                account.Text = adminAccount + "不存在";
            }
            else
            {
                if (adminPassword == "321")
                {
                    Session["AdminNum"] = adminAccount;
                    Response.Redirect("index.aspx");
                }
            }
        
        }
       /* if (adminAccount != null && adminPassword != null)
        {
            Manager manager = new ManagerAccountSQL(adminAccount).GetManager();

            if (manager == null)
            {
                //账号不存在
            }
            else
            {
                if (adminPassword.Equals(manager.password))
                {
                    Session["AdminNum"] = adminAccount;
                    Response.Redirect("index.aspx");
                }
                else
                {
                    //密码错误
                }
            }
        }
        else
        {
            //输入不全
        }
        */

      //下面在数据库中查找管理元的信息 若密码正确 跳转到首页
        //同时将管理员信息存在session里
     //   Session["AdminNum"] = adminAccount;
       // Response.Redirect("index.aspx");
        
    }
    
}