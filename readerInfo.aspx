<%@ Page Language="C#" AutoEventWireup="true" CodeFile="readerInfo.aspx.cs" Inherits="readerInfo" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>读者基本信息</title>
</head>
<body style="background-color:#f8f8f8">
    <form id="form1" runat="server">
       <asp:Image ID="Image2" src="Image/head-top.png" style="width:100%;height:150px;" runat="server" />
    <div>
        
        <asp:Image ID="Image1" style="width:40%;margin-left:20%;" runat="server" src="Image/readerInfo.png" Height="43px" Width="427px" />
        <br /><br />
        <div style="width:64%; margin-left:20%; height: 343px;">
        <asp:Label ID="Label1" runat="server" Text="读者账号"></asp:Label>
        <asp:TextBox ID="ReaderID" runat="server" style="margin-left:5%" Height="32px" Width="238px" ReadOnly="true"></asp:TextBox>
        <asp:Label ID="Label2" runat="server" Text="读者姓名"></asp:Label>
        <asp:TextBox ID="Name" runat="server" style="margin-left:5%" Height="32px" Width="238px"></asp:TextBox>
        <br />
        <asp:Label ID="Label3" runat="server" Text="读者性别"></asp:Label>
        <asp:TextBox ID="Sex" runat="server" style="margin-left:5%;margin-top:10px;" Height="32px" Width="238px"></asp:TextBox>
        <asp:Label ID="Label4" runat="server" Text=" 电&nbsp;&nbsp; 话"></asp:Label>
        &nbsp;<asp:TextBox ID="Phone" runat="server" style="margin-left:4.7%"  Height="32px" Width="238px" ></asp:TextBox>
        <br />
        <asp:Label ID="Label5" runat="server" Text="邮 &nbsp;&nbsp;箱 "></asp:Label>
        &nbsp;<asp:TextBox ID="Email" type="Email" runat="server" style="margin-left:4.7%;margin-top:10px;"  Height="32px" Width="238px"></asp:TextBox>
        <asp:Label ID="Label6" runat="server" Text="已借书数"></asp:Label>
        <asp:TextBox ID="HavaBorrowedNum" runat="server" style="margin-left:5%;margin-top:10px;" Height="32px" Width="238px" ReadOnly="true"></asp:TextBox>
        <br />
        <asp:Label ID="Label7" runat="server" type="number  " Text="最大借书数"></asp:Label>
        <asp:TextBox ID="MaxNumBookBorrow" runat="server" style="margin-left:3.4%;margin-top:10px;" Height="32px" Width="238px" ReadOnly="true"></asp:TextBox>
            <asp:Button ID="Button1" runat="server" style="margin-left:13%;margin-top:10px;font-size:20px;background:#7f9d9c" Height="41px" OnClick="Button1_Click" Text="修 改 信 息" Width="248px" />
        </div>
    </div>
    </form>
</body>
</html>
