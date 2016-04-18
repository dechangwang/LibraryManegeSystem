using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using LibraryEntity;
using Searching;

public partial class AdminOfReadersInfo : System.Web.UI.Page
{
   public List<Reader> list = new List<Reader>();
    protected void Page_Load(object sender, EventArgs e)
    {
        string str = Request.QueryString.Get("id");
        if (str != null)
        {
           // 这里需要根据图书的ID删除
        }
        for (int i = 0; i < 5; i++)
        {
            Reader rea = new Reader(i+"ID", "account" + i, "123", 12, 20);
            list.Add(rea);
          
        }
        
    }
    public List<Reader> getList()
    {
        return list;
    }
    protected void ImageButton_Click(object sender, EventArgs e)
    {
       /* string Number = number.InnerText;
        string Account = account.InnerText;
        string Name = name.InnerText;
        string Sex = sex.InnerText;
        string Phone = phone.InnerText;
        string Email = email.InnerText;
        string NumberOfBorrow = numberofborrow.InnerText;
        Response.Write(Email);  //可以获取这些值，用于删除操作，此行用来检测参数传递正确性；
        */
    }
    protected void ImageButton_Click(object sender, ImageClickEventArgs e)
    {
        string str = this.name.ID;
    }
    protected void TextBox1_DataBinding(object sender, EventArgs e)
    {
   //     string str = TextBox.Text;
      //  Response.Write(str);
    }
}