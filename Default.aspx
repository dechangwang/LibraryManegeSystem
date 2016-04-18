<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Login Page</title>
    <script src = "js/Login.js"></script>
    <link href = "Css/LoginPage.css" type = "text/css" rel = "stylesheet"/>
</head>
<body style = "background-image:url(PictureOfLogin/50.jpg)" id = "picture" onload = "setTimeout()">
    <div id = "title">
        <p>欢迎欢迎</p>

    </div>
    <form id="form1" runat="server" method = "post">
        <asp:TextBox runat = "server" ID = "account" onblur = "checkAccount()" placeholder = "请输入您的账号"></asp:TextBox>
        <asp:TextBox runat = "server" ID = "password" placeholder = "请输入您的密码" TextMode = "Password"></asp:TextBox>
        <asp:Button  runat = "server"  Text = "登陆" ID = "buttonfirst" onmouseover = " change() " onmouseout = "changeout()" OnClick = "Button1_Click"/>
        <asp:Button runat = "server" Text ="Can't Login?" ID = "right" onmouseover = " change3() " onmouseout = "changeout3()" OnClick="right_Click"/>

    </form>
    <div id = "tip"></div>
    <form  id = "form2" action="readerRegister.aspx">
       <a href="readerRegister.aspx"><input type = "submit" value ="No Account?" id = "left" onmouseover = " change1() " onmouseout = "changeout1()"/></a> 
    </form>
    <form   id = "form3">
        
            </form>
</body>
</html>
