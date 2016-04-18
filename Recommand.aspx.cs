using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Recommand : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["readerName"] == null)
        {
            Response.Redirect("Default.aspx");
        }
    }
    protected void submit_Click(object sender, EventArgs e)
    {
        string Author = author.Text;
        string Name = name.Text;
        string Publishment = publishment.Text;
        string Date = date.Text;
        string Price = price.Text;
        Response.Write(Author+"这是书名"+Name);
    }
}