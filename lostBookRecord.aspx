<%@ Page Language="C#" AutoEventWireup="true" CodeFile="lostBookRecord.aspx.cs" Inherits="lostBookRecord" %>

<%@ Register Src="head.ascx" TagName="header" TagPrefix="uc1" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>无标题页</title>
    <link href="book_css.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
    <div align="center">
        <table border="0" cellpadding="0" cellspacing="0" style="border-right: #669900 0px solid;
            border-top: #669900 0px solid; border-left: #669900 0px solid; border-bottom: #669900 0px solid;
            background-color: #ffffff" width="100%">
            <tr>
                <td>
                    <uc1:header ID="Header1" runat="server" />
                </td>
            </tr>
            <tr>
                <td style="height: 25px; text-align: left">
                    <span style="color: #990000">&nbsp;&nbsp;当前位置：读者管理&gt;遗失书籍挂失&nbsp;</span></td>
            </tr>
            <tr><td style="height: 25px;"></td></tr>
            <tr align="center">
                <td >
                    <table align="center" border="0" cellpadding="0" cellspacing="0" 
                        width="50%">
                        <tr>
                            <td style="width: 30%; height: 30px">
                                <div align="right">
                                    读者账号：</div>
                            </td>
                             <td style="width: 10%; height: 25px;"></td>
                            <td style="height: 25px" width="50%">
                                <asp:TextBox ID="txtReaderBarCode" Width="80%" runat="server" Readonly="true"></asp:TextBox></td>
                            <td style="height: 25px" width="20%">
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td style="width: 30%; height: 30px;">
                                <div align="right">
                                    读者姓名：</div>
                            </td>
                             <td style="width: 10%; height: 25px;"></td>
                            <td>
                                <asp:TextBox ID="txtReaderName" runat="server"  Width="80%"></asp:TextBox></td>
                            <td>
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td style="width: 30%; height: 30px">
                                <div align="right">
                                    遗失图书编号：</div>
                            </td>
                             <td style="width: 10%; height: 25px;"></td>
                            <td style="height: 25px" width="50%">
                                <asp:TextBox ID="bookCode" Width="80%" runat="server" ></asp:TextBox></td>
                            <td style="height: 25px" width="20%">
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td style="width: 30%; height: 30px;">
                                <div align="right">
                                    遗失图书名称：</div>
                            </td>
                             <td style="width: 10%; height: 25px;"></td>
                            <td>
                                <asp:TextBox ID="bookName" runat="server"  Width="80%"></asp:TextBox></td>
                            <td>
                                &nbsp;</td>
                        </tr>
                        
                        <tr>
                            <td style="width: 30%; height: 30px">
                                <div align="right">
                                    联系电话：</div>
                            </td>
                              <td style="width: 10%; height: 25px;"></td>
                           <td>
                                <asp:TextBox ID="txtTel" runat="server" Width="80%"></asp:TextBox></td>
                            <td>
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td style="width: 30%; text-align: right; height: 30px;">
                                电子邮箱：</td>
                             <td style="width: 10%; height: 25px;"></td>
                            <td>
                                <asp:TextBox ID="txtEmail" type="Email" runat="server"  Width="80%"></asp:TextBox></td>
                            <td>
                            </td>
                        </tr>
                        <tr>
                            <td style="width: 30%; text-align: right">
                                备&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 注：</td>
                             <td style="width: 10%; height: 25px;"></td>
                            <td style="height: 120px;">
                                <asp:TextBox ID="txtRemark" runat="server" Height="100px" TextMode="MultiLine"  Width="80%"></asp:TextBox></td>
                            <td>
                            </td>
                        </tr>
                        <tr>
                        <td colspan="4" style="text-align: center; height: 25px;"></td>
                        </tr>
                        <tr>
                        <td colspan="4" style="text-align: center; height: 40px;">
                        <table width="50%"  align="center" ><tr>
                            <td style="text-align: center; height: 40px;width:50%">
                                <asp:Button ID="btnSave" runat="server" OnClick="btnSave_Click" Text="申请挂失" /></td>
                            <td  style="text-align: center;width:50%">
                                <input id="Button3" onclick="window.close();" type="button" value="关　闭" /></td></tr></table>
                                </td>
                        </tr>
                    </table>
                </td>
            </tr>
            <tr><td style="height:20px"></td></tr>
            <tr>
                <td>
                </td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
