<%@ Page Language="C#" AutoEventWireup="true" CodeFile="NewBook.aspx.cs" Inherits="NewBook1" %>
<%@ Register Src="head.ascx" TagName="header" TagPrefix="uc1" %>


<!DOCTYPE html>


<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>AddBook</title>
    <script>
        var ResultOperation = "<%=getOperationResult()%>"
        if (ResultOperation != "fail")
            alert(ResultOperation);
   </script>
    <link href = "Css/CssOfAddBook.css" type = "text/css" rel = "stylesheet"/>
    <script src = "js/changeBookInfo.js"></script>
</head>
<body id ="back">

    <form id="form2" runat="server" onsubmit = "return checkinfo1()">

    <div id = "title"></div>
    <div id = "titleright"></div>
    <div id = "forauthor"></div>
    <div id = "forname"></div>
    <div id = "forpublishment"></div>
    <div id = "fordate"></div>
    <div id = "forprice"></div>
    <div id = "fornumber"></div>
    <div id = "fornumberofborrow"></div>

        <label for = "author" id = "labelforauthor" style = " color:#4cff00">作者：</label>
        <asp:TextBox ID = "author" name = "author" onblur = "checkauthor()"  runat = "server"/>

        <label for = "name" id = "labelforname" style = " color:#4cff00">书名：</label>
        <asp:TextBox ID = "name" name = "name" onblur = "checkname()"  runat = "server"/>

        <label for = "publishment" id = "labelforpublishment" style = " color:#4cff00">出版社：</label>
        <asp:TextBox ID = "publishment" name = "publishment" onblur = "checkpublishment()"  runat = "server"/>

        <label for = "date" id = "labelfordate" style = " color:#4cff00">日期：</label>
        <asp:TextBox ID = "date" name = "date" onblur = "checkdate() " type = "Date" runat = "server"/>

        <label for = "price" id = "labelforprice" style = " color:#4cff00">价格：</label>
        <asp:TextBox ID = "price" name = "price" onblur = "checkprice()"  runat = "server"/>

        <label for = "number" id = "labelfornumber" style = " color:#4cff00">ISBN：</label>
        <asp:TextBox ID = "number" name = "number" onblur = "checknumber()" runat = "server"/>

        <asp:Button ID = "submit" Text = "添加" onmouseover = "change1()" onmouseout = "out1()" runat = "server" OnClick="submit_Click"/>
        <input id = "reset" type = "reset" value = "重置" onmouseover = "change2()" onmouseout = "out2()" runat = "server"/>
    <uc1:header ID="Header2" runat="server" />
    </form>
</body>
</html>

