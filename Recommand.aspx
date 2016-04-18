<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Recommand.aspx.cs" Inherits="Recommand" %>
<%@ Register Src="head.ascx" TagName="header" TagPrefix="uc1" %>
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel = "stylesheet" href = "Css/CssOfRecommand.css"/>
    <script lang = "JavaScript" src = "js/Recommand.js"></script>
</head>
<body>
    <div id = "titleleft"></div>
    <form id="form1" runat="server" onsubmit = "return checkinfo()">
    <div id = "forauthor"></div>
    <div id = "forname"></div>
    <div id = "forpublishment"></div>
    <div id = "fordate"></div>
    <div id = "forprice"></div>
        <label for = "author" id = "labelforauthor" style = " color:cadetblue">作者：</label>
        <asp:TextBox ID = "author" name = "author" onblur = "checkauthor()"  runat = "server"/>

        <label for = "name" id = "labelforname" style = " color:cadetblue">书名：</label>
        <asp:TextBox ID = "name" name = "name" onblur = "checkname()"  runat = "server"/>

        <label for = "publishment" id = "labelforpublishment" style = " color:cadetblue">出版社：</label>
        <asp:TextBox ID = "publishment" name = "publishment" onblur = "checkpublishment()"  runat = "server"/>

        <label for = "date" id = "labelfordate" style = " color:cadetblue">日期：</label>
        <asp:TextBox ID = "date" name = "date" onblur = "checkdate() " type = "Date" runat = "server"/>

        <label for = "price" id = "labelforprice" style = " color:cadetblue">价格：</label>
        <asp:TextBox ID = "price" name = "price" onblur = "checkprice()"  runat = "server"/>

        <asp:Button ID = "submit" Text = "添加" onmouseover = "change1()" onmouseout = "out1()" runat = "server" OnClick="submit_Click" />
        <input id = "reset" type = "reset" value = "重置" onmouseover = "change2()" onmouseout = "out2()" runat = "server"/>
    </form>
    <hr id = "forhr"/>
    <uc1:header ID="Header2" runat="server" />
</body>
</html>
