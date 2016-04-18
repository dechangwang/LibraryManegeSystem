using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class index : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void TextBox1_TextChanged(object sender, EventArgs e)
    {
        string searchText = TextBox1.Text;
        string m = searchItem.Value;
        Response.Redirect("searchResult.aspx?search="+m+"&searchText="+searchText);
       
        
    }
}