<%@ Page Language="C#" AutoEventWireup="true" CodeFile="searchResult.aspx.cs" Inherits="searchResult" %>
<%@ Register Src="head.ascx" TagName="header" TagPrefix="uc1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>书名检索结果页面</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
           <uc1:header ID="Header2" runat="server" />


    </div>
        <div >
            <ul style="width:100%;border-bottom: 1px solid #100f0f;">
                    <li class="auto-style5">书籍名称</li>
                    <li class="auto-style6">作者</li>
                    <li class="auto-style6">出版日期</li>
                    <li class="auto-style6">出版社</li>
                    <li  class="auto-style7"><a href="#"> 归还</a></li>
                </ul>
             <% System.Collections.Generic.List<LibraryEntity.BookInfo> list = getList();
                   string name ="";
                   if (list != null) {
                       for (int i = 0; i < list.Count; i++ ){
                           LibraryEntity.BookInfo b = list[i];
                           name = b.name;
                           string author = b.writer;
                          
                    %>
                <ul style="width:100%;border-bottom: 1px solid #100f0f;">
                    <li class="auto-style5" style=""><%Response.Write(name);%></li>
                    <li class="auto-style6"><%Response.Write(author); %></li>
                    <li class="auto-style6"><%Response.Write(b.publishDate); %></li>
                    <li class="auto-style6"><%Response.Write(b.publisher); %></li>
                    <li  class="auto-style7"><a href="#"> 归还</a></li>
                </ul>
                <%} } %>
        </div>
       
    </form>
</body>
</html>
