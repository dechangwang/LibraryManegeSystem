<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Pulishment.aspx.cs" Inherits="Pulishment" %>
<%@ Register Src="head.ascx" TagName="header" TagPrefix="uc1" %>
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel = "stylesheet" href = "Css/CssOfPulishment.css"/>
    <script lang = "JavaScript" src = "js/Pulishment.js"></script>
</head>
<body>
    <form id="form1" runat="server" onsubmit = "return checkinfo()">
        <label id = "labelforlist">罚款原因：</label>
        <asp:DropDownList ID="DropDownList1" runat="server" Enabled = "true">
            <asp:ListItem Value = "书籍缺页"></asp:ListItem>
            <asp:ListItem Value = "书籍丢失"></asp:ListItem>
            <asp:ListItem Value = "超时借阅"></asp:ListItem>
            <asp:ListItem Value = "书籍撕毁"></asp:ListItem>
            <asp:ListItem Value = "乱涂乱画"></asp:ListItem>
        </asp:DropDownList>

        <label id = "labelforreader">读者编号：</label>
        <asp:TextBox runat = "server" ID = "reader" onblur = "checkreader()"></asp:TextBox>
        <div id = "forreader"></div>

        <label id = "labelforcash">罚款金额：</label>
        <asp:TextBox runat = "server" ID = "cash" onblur = "checkcash()"></asp:TextBox>
        <div id = "forcash"></div>

        <label id = "labelfortime">罚款时间：</label>
        <asp:TextBox runat = "server" ID = "time" onblur = "checktime()" type = "Date"></asp:TextBox>
        <div id = "fortime"></div>

        <label id = "labelforbook">图书编号：</label>
        <asp:TextBox runat = "server" ID = "book" onblur = "checkbook()"></asp:TextBox>
        <div id = "forbook"></div>

        <asp:Button runat = "server" Text = "添加信息" ID = "button" onmouseover = "change1()" onmouseout = "out1()" OnClick = "Button1_Click"/>
        <input type = "reset" value = "重置" id = "reset" onmouseover = "change2()" onmouseout = "out2()"/>
    </form>
    <uc1:header ID="Header2" runat="server" />
    <hr id = "forhr"/>
    <div id = "titleleft"></div>
</body>
</html>
