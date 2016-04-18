<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ChangeBookInfoPage.aspx.cs" Inherits="ChangeBookInfoPage" %>
<%@ Register Src="head.ascx" TagName="header" TagPrefix="uc1" %>
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>ChangeBookInfo</title>
    <link href = "Css/CssOfChangeBookInfo.css" type = "text/css" rel = "stylesheet"/>
    <script src="js/ChangeBookInfo.js"></script>
</head>
<body id ="back">
    <form id="form2" runat="server">
    <div id = "titleright"></div>
    <div id = "forauthor"></div>
    <div id = "forname"></div>
    <div id = "forpublishment"></div>
    <div id = "fordate"></div>
    <div id = "forprice"></div>
    <div id = "fornumber"></div>
    <div id = "fornumberofborrow"></div>

        <label for = "author" id = "labelforauthor" style = " color:#4cff00">作者：</label>
        <asp:TextBox runat = "server" type = "text" id = "author" name = "author" onblur = "checkauthor()"/>

        <label for = "name" id = "labelforname" style = " color:#4cff00">书名：</label>
        <asp:TextBox runat = "server" type = "text" id = "name" name = "name" onblur = "checkname()"/>

        <label for = "publishment" id = "labelforpublishment" style = " color:#4cff00">出版社：</label>
        <asp:TextBox runat = "server" id = "publishment" name = "publishment" onblur = "checkpublishment()"/>

        <label for = "date" id = "labelfordate" style = " color:#4cff00">日期：</label>
        <asp:TextBox runat = "server" type = "text" id = "date" name = "date" onblur = "checkdate()"/>

        <label for = "price" id = "labelforprice" style = " color:#4cff00">价格：</label>
        <asp:TextBox runat = "server" type = "text" id = "price" name = "price" onblur = "checkprice()"/>

        <label for = "number" id = "labelfornumber" style = " color:#4cff00">数量：</label>
        <asp:TextBox runat = "server" type = "text" id = "number" name = "number" onblur = "checknumber()"/>

        <label for = "numberofborrow" id = "labelfornumberofborrow" style = " color:#4cff00">借出数量：</label>
        <asp:TextBox runat = "server" type = "text" id = "numberofborrow" name = "numberofborrow" onblur = "checknumberofborrow()"/>

        <asp:Button runat = "server" type = "submit" id = "submit" Text = "修改" onmouseover = "change1()" onmouseout = "out1()" OnClick="submit_Click"/>
        <asp:Button runat = "server" type = "reset" id = "reset" Text = "重置" onmouseover = "change2()" onmouseout = "out2()"/>
    <uc1:header ID="Header2" runat="server" />
    
    </form>
    
</body>
</html>
