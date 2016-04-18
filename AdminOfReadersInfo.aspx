<%@ Page Language="C#" AutoEventWireup="true" CodeFile="AdminOfReadersInfo.aspx.cs" Inherits="AdminOfReadersInfo" %>
<%@ Register Src="head.ascx" TagName="header" TagPrefix="uc1" %>
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel = "stylesheet" href = "Css/CssOfReadersInfo.css"/>
    <script lang = "JavaScript" src = "js/ReadersInfo.js"></script>
</head>
<body>
    <div id = "index"></div>
    <hr id = "forhr"/>
    <form id="form1" runat="server" onsubmit = "return en()">
     <uc1:header ID="Header2" runat="server" />
   
        <table style="margin-top:15%;">
            <tr class = "main">
            <th class = "th"></th>
            <th class = "th">编号</th>
            <th class = "th">账户</th>
            <th class = "th">姓名</th>
            <th class = "th">性别</th>
            <th class = "th">电话</th>
            <th class = "th">邮箱</th>
            <th class = "th">借书数量</th>
            <th class = "th">操作</th>
        </tr>
            <% System.Collections.Generic.List<LibraryEntity.Reader> list = getList();
                   string name1 ="";
                   string ac="";
                   if (list != null)
                   {
                       for (int i = 0; i < 5; i++)
                       {
                           LibraryEntity.Reader read = list[i];
                           name1 = read.account;
                           ac = read.readerID;
                         
                          
                    %>   
            <tr class="main">
                <td class = "main"><img src = "PictureOfReadersInfo/frai.jpg" /></td>
                <td id="number"><%=ac %></td>
                <td id="account"><%=read.account %></td>
                <asp:TextBox ID="TextBox" type="hidden" Text ="<%=read.account %>" runat="server"></asp:TextBox>
                <td class = "user" id = "name" runat = "server">1</td>
                <td class = "user" id = "sex" runat = "server">1</td>
                <td class = "user" id = "phone" runat = "server">1</td>
                <td class = "user" id = "email" runat = "server">454281389@qq.com</td>
                <td id="numberofborrow"><%=read.borrowingNum %></td>
             
                <td class = "main"><a href="AdminOfReadersInfo.aspx?id=<%=read.readerID %>">
                    <asp:Image ID="Image1" src="PictureOfReadersInfo/trash.jpg" runat="server" />
                    </a></td>
            </tr>
            <%}
                   } %>
        </table>
    </form>
  

</body>
</html>
