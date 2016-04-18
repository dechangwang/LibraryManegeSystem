<%@ Page Language="C#" AutoEventWireup="true" CodeFile="readerRegister.aspx.cs" Inherits="readerRegister" %>


<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 346px;
        }
        .auto-style2 {
            width: 248px;
        }
        .auto-style3 {
            width: 26px;
        }
        </style>
</head>
<body style="background-color:#f8f8f8">
    <form id="form1" runat="server">
    <div>
        <asp:Image ID="Image1" src="Image/head-top.png" style="width:100%;height:150px;" runat="server" />
     <table style="height:432px; width:91%;">
            <tr>
        
                            <td style="text-align: right" class="auto-style1">
                                账号：&nbsp; </td>
                            <td class="auto-style3">
                    <asp:TextBox ID="txtUserName" runat="server" Height="29px" Width="280px"></asp:TextBox>
                            </td>
               
                            <td class="auto-style2">
                                &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidatorName" runat="server" ControlToValidate="txtUserName"
                        ErrorMessage="名称不能为空"></asp:RequiredFieldValidator></td>
                        </tr>
               <tr>
                    <td style="text-align: right" class="auto-style1">
                                姓名：&nbsp; </td>
                    <td> 
                  
                    <asp:TextBox ID="ReaderName" runat="server" Height="29px" Width="280px" OnTextChanged="TextBox1_TextChanged"></asp:TextBox>
</td>
               </tr>
                       
                        <tr>
                            <td style="text-align: right" class="auto-style1">
                                登录密码：</td>
                            <td class="auto-style3">
                    <asp:TextBox ID="txtPass" runat="server" TextMode="Password" Height="32px" Width="280px"></asp:TextBox></td>
                            <td class="auto-style2">
                                &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidatorPass" runat="server" ControlToValidate="txtPass"
                        ErrorMessage="密码不能为空"></asp:RequiredFieldValidator></td>
                        </tr>
                        <tr>
                            <td style="text-align: right" class="auto-style1">
                                确认密码：</td>
                            <td class="auto-style3">
                    <asp:TextBox ID="txtQpass" runat="server" TextMode="Password" Height="28px" Width="280px"></asp:TextBox>
                            </td>
                            <td class="auto-style2">
                                &nbsp;<asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="txtPass"
                        ControlToValidate="txtQpass" ErrorMessage="密码不一致" Width="111px"></asp:CompareValidator></td>
                        </tr>
         <tr>
              <td style="text-align: right" class="auto-style1"> 性别：&nbsp;</td>
             <td> <asp:TextBox ID="Sex" runat="server" Height="30px" Width="280px"></asp:TextBox>
</td>
         </tr>
         <tr>
              <td style="text-align: right" class="auto-style1"> 邮箱：&nbsp;</td>
             <td> 
                 <asp:TextBox ID="Email" runat="server" type="Email" Height="32px" Width="280px"></asp:TextBox>
              </td>
         </tr>
         <tr>
             <td style="text-align: right" class="auto-style1"> 电话：&nbsp;</td>
             <td>
                 <asp:TextBox ID="Phone" runat="server" Height="29px" Width="280px"></asp:TextBox>
             </td>
         </tr>
       
                        <tr>
                        
      
                            <td colspan="2" style="text-align: center">
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                <asp:Button ID="btnAdd" runat="server" style="background:#f1e6e6;border-radius:6px; "  Text="注册" OnClick="btnAdd_Click" Height="40px" Width="111px" />&nbsp;&nbsp;&nbsp; 
                                <input id="Button2"  type="reset" style="width:106px; height:40px; background:#f1e6e6;border-radius:6px; float:right;margin-right:10%;"  value="重置" /></td>
                     <td>&nbsp;</td>
                        </tr>
              
        </table>
   <div>
    </div>
        </div> 
    </form>
</body>
</html>
