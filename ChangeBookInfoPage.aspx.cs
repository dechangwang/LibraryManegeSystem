using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class ChangeBookInfoPage : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["AdminNum"] == null)
        {
            Response.Redirect("index.aspx");
        }
    }
    protected void submit_Click(object sender, EventArgs e)
    {
        string Author = author.Text;
        string Name = name.Text;
        string Publishment = publishment.Text;
        string Date = date.Text;
        string Price = price.Text;
        string Number = number.Text;
        string NumberOfBorrow = numberofborrow.Text;
      //这里得到图书的信息 在此修改
    }
    
}