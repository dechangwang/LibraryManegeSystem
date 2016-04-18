using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using LibraryEntity;
using Searching;

public partial class searchResult : System.Web.UI.Page
{
    List<BookInfo> list; 
    protected void Page_Load(object sender, EventArgs e)
    {
       
        string result = Request.QueryString.Get("search").ToString();
        string inputText = Request.QueryString.Get("searchText").ToString();
        if (inputText != null)
        {
           // Response.Write(result+""+inputText);
            list = Searcher.SearchFromBookInfo(inputText).ToList();
        }
        else
        {
            Response.Write("no result");
            DataGrid grid = new DataGrid();
           // DataGridColumn column = new DataGridColumn();
            //grid.Columns.Add      
        }
    }
    public List<BookInfo> getList()
    {
        return list;
    }
}