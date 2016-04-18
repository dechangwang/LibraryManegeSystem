using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class NewBook1 : System.Web.UI.Page
{
    public static string result = "fail";
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
        string ISBN = number.Text;
        //Response.Write(Author);
        result = "添加成功";
    }
    public string getOperationResult()
    {

        return result;
    }
}