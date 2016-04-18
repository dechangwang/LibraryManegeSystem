using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class BookCatalogue : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void TextBox1_TextChanged(object sender, EventArgs e)
    {
       // string name = selectItem.; //Request.Form.Get("selection");//HiddenField1.Value;
      //  Response.Write("this is " + name);
       string m =  searchItem.Value;
      // Response.Write(m);
       string searchText = TextBox1.Text;
       Response.Redirect("searchResult.aspx?search="+m+"&searchText="+searchText);
            
    }
    protected void HiddenField1_ValueChanged(object sender, EventArgs e)
    {

    }
}