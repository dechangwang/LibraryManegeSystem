<%@ Page Language="C#" AutoEventWireup="true" CodeFile="AdminLogin.aspx.cs" Inherits="Default2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel = "stylesheet" href = "Css/CssOfAdminLogin.css"/>
    <script src = "js/AdminLogin.js" lang = "JavaScript"></script>
</head>
<body>
    <div id = "bg"></div>
    <form id = "form1" runat="server" onsubmit = "checkinfo()">
        <div id = "title"></div>
        <label for = "account" id = "labelforaccount">管理员账户：</label>
        <label for = "password" id = "labelforpassword">管理员密码：</label>
        <hr id = "forhr"/>
        <div id = "foraccount"></div>
        <p>
            <asp:TextBox ID="account" runat="server" Height="27px" style="margin-left: 495px; margin-top: 140px" Width="417px" onblur = "checkaccount()" MaxLength = "18"></asp:TextBox>
        </p>
        <p>
            
            &nbsp;</p>
    <p style="margin-left: 261px; margin-top: 50px">
        <asp:TextBox ID="password" runat="server" Height="27px" style="margin-top: 0px; margin-left: 232px;" TextMode="Password" Width="420px" onblur = "checkpassword()"></asp:TextBox>
    </p>
        <asp:Button ID="Button1" runat="server" style="margin-left: 546px; margin-top: 69px" Text="登陆" Width="314px" Height="36px" OnClick="Button1_Click" />

    </form>
    </body>
</html>
