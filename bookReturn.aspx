<%@ Page Language="C#" AutoEventWireup="true" CodeFile="bookReturn.aspx.cs" Inherits="bookReturn" %>
<%@ Register Src="head.ascx" TagName="header" TagPrefix="uc1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <script>
        var ResultOperation = "<%=getOperationResult()%>"
        if (ResultOperation != "fail")
            alert(ResultOperation);
   </script>
        <link href="js/style.css" rel="stylesheet" type="text/css" />
    <style>
        .td1 {
        width:15%;
        text-align:center;
        height:60px;
        }
        .td2 {
        width:20%;
        text-align:center;
         height:60px;
        }
        .td3 {
             width:20%;
        text-align:center;
         height:60px;
        }
        .td4 {
            width:12%;
        text-align:center;
         height:60px;
        }
            
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div style="height: 235px" >
     <uc1:header ID="Header2" runat="server" />
        <br />
               <asp:Label ID="Label1" style="margin-left:2%;font-size:20px;" runat="server" Text=""><b>当前位置:</b> 图书归还</asp:Label>
         <img src="Image/logo.png" style="float:right;margin-right:12%;width:10%;height:50px;"/>
    </div>
       <br />
           <div>
            <asp:Image ID="Image1" src="Image/bookReturn.png" runat="server" />
        </div>
                         <div style = "margin-left:5%; width:90%; background-color:#0130cb; height:50px;"></div>

        <div style="width:60%;margin-left:30%;">
            
            <asp:Label ID="Label2" runat="server" Text="读者账号"></asp:Label>
            <asp:TextBox ID="ReaderNumber" style="margin-top:20px;" runat="server" Height="25px" Width="294px"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidatorReader" runat="server" ControlToValidate="ReaderNumber"
                        ErrorMessage="读者账号不能为空"></asp:RequiredFieldValidator>
            <br />
            <asp:Label ID="Label3" runat="server" Text="图书编号"></asp:Label>
            <asp:TextBox ID="BookID" runat="server" style="margin-top:20px;" Height="25px" Width="294px"></asp:TextBox>
             <asp:RequiredFieldValidator ID="RequiredFieldValidatorBook" runat="server" ControlToValidate="BookID"
                        ErrorMessage="书籍编号不能为空"></asp:RequiredFieldValidator>
            <br />

            <br />
            <asp:Button ID="Button1" style="margin-left:8.6%;font-size:20px;background:#cbe0d3" runat="server" Text="图书归还" Height="34px" Width="300px" OnClick="Button1_Click" />
       
        <asp:TextBox ID="TextBox1" type="hidden" runat="server"></asp:TextBox>
             </div>
       
       
       
    </form>
</body>
</html>
