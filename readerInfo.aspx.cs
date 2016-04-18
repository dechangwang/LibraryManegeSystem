using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class readerInfo : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["readerName"] != null)
        {
            ReaderID.Text = Session["readerName"].ToString();
            /*
             下面的内容需要根据读者的编号在数据查找出来赋值
             */
            Name.Text = "数据库查出name'值";
            Sex.Text = "数据库查出来赋值";
            Phone.Text = "数据库查出来赋值";
            Email.Text = "数据库查出来赋值";
            HavaBorrowedNum.Text = "数据库查出来赋值";
            MaxNumBookBorrow.Text = "数据库查找赋值";
          //  Response.Write(ReaderID);
        }
        else
        {
            Response.Redirect("Default.aspx");
        }
    }
    protected void Button1_Click(object sender, EventArgs e) //点击修改后调用
    {
        string name = Name.Text;
        string sex = Sex.Text;
        string phone = Phone.Text;
        string eMail = Email.Text;
        //下面需要将修改后的信息添加到数据库中
    }
}