<%@ Page Language="C#" AutoEventWireup="true" CodeFile="borrowBook.aspx.cs" Inherits="borrowBook" %>
<%@ Register Src="head.ascx" TagName="header" TagPrefix="uc1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
   <script>
       var ResultOperation = "<%=backFront()%>"
       if (ResultOperation != "noOperation")
       alert(ResultOperation);
   </script>
</head>
<body style="background:#f7fbfa">
    <form id="form1" runat="server">
    <div>
     <uc1:header ID="Header1" runat="server" />
                       <asp:Label ID="Label3" style="margin-left:2%;font-size:20px;" runat="server" Text=""><b>当前位置:</b> 图书借阅</asp:Label>
        <img src="Image/logo.png" style="float:right;margin-right:12%;width:10%;height:50px;margin-top:20px;"/>
    </div>
        <div>

            <asp:Image ID="Image1" src="Image/bookBorrow.png" runat="server" />
        </div>
                         <div style = "margin-left:5%; width:90%; background-color:#0130cb; height:50px;"></div>

       
        <div style="width:60%;margin-left:30%;">
            
            <asp:Label ID="Label1" runat="server" Text="读者账号"></asp:Label>
            <asp:TextBox ID="ReaderNumber" style="margin-top:20px;" runat="server" Height="25px" Width="294px"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidatorReader" runat="server" ControlToValidate="ReaderNumber"
                        ErrorMessage="读者账号不能为空"></asp:RequiredFieldValidator>
            <br />
            <asp:Label ID="Label2" runat="server" Text="图书编号"></asp:Label>
            <asp:TextBox ID="BookID" runat="server" style="margin-top:20px;" Height="25px" Width="294px"></asp:TextBox>
             <asp:RequiredFieldValidator ID="RequiredFieldValidatorBook" runat="server" ControlToValidate="BookID"
                        ErrorMessage="书籍编号不能为空"></asp:RequiredFieldValidator>
            <br />

            <br />
            <asp:Button ID="Button1" style="margin-left:8.6%;font-size:20px;background:#cbe0d3" runat="server" Text="图书借阅" Height="34px" Width="300px" OnClick="Button1_Click" />
       
        <asp:TextBox ID="TextBox1" type="hidden" runat="server"></asp:TextBox>
             </div>
    </form>
</body>
</html>
