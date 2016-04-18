using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class DeleteBook : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["AdminNum"] == null)
        {
            Response.Redirect("index.aspx");
        }
        string Number = Request.QueryString.Get("number");
        Response.Write(Number);
    }
}