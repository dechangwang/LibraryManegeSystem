using System;
using System.Data;
using System.Configuration;
using System.Collections;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using System.Data.SqlClient;

public partial class lostBookRecord : System.Web.UI.Page
{
	
    protected void Page_Load(object sender, EventArgs e)
    {
        string readerState = Session["readerName"].ToString();
        if (readerState == null)
        {
            Response.Redirect("Default.aspx");
        }
            txtReaderBarCode.Text = readerState;
    }
    protected void btnReaderSearch_Click(object sender, EventArgs e)
    {
   }
    
    protected void btnBookSearch_Click(object sender, EventArgs e)
    {
    }

    protected void btnSave_Click(object sender, EventArgs e)
    {
        string readerNumber = txtReaderBarCode.Text;
        string readerName = txtReaderName.Text;
        string bookId = bookCode.Text;
        string bName = bookName.Text;
        string phone = txtTel.Text;
        string email = txtEmail.Text;
        Response.Write(email);
    }
}
