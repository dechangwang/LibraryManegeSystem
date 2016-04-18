<%@ Page Language="C#" AutoEventWireup="true" CodeFile="History.aspx.cs" Inherits="History" %>
<%@ Register Src="head.ascx" TagName="header" TagPrefix="uc1" %>
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel = "stylesheet" href = "Css/CssOfHistory.css"/>
    <script lang = "JavaScript" src = "JS/History.js"></script>
</head>
<body>
    <hr id = "forhr"/> 
    <div id = "titleleft"></div>
    <form id="form1" runat="server">
        <table>
            <tr style = "text-align:center" id = "fortable">
                <td>
                    &nbsp;<asp:GridView ID="gvBookBorrow" runat="server" CellPadding="4"
                        ForeColor="#333333" GridLines="None" PageSize="10" Width="180%" AutoGenerateColumns="False" OnRowDataBound="gvBookBorrow_RowDataBound" OnSelectedIndexChanging="gvBookBorrow_SelectedIndexChanging">
                        <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                        <Columns>
                            <asp:BoundField DataField="bookName" HeaderText="图书编号" />
                            <asp:BoundField DataField="bookType" HeaderText="图书名称" />
                            <asp:BoundField DataField="bookConcern" HeaderText="出版社" />
                            <asp:BoundField DataField="author" HeaderText="作者" />
                            <asp:BoundField DataField="price" HeaderText="图书定价" />
                            <asp:BoundField DataField="backDate" HeaderText="归还日期" />
                            
                        </Columns>
                        <RowStyle BackColor="#EFF3FB" />
                        <EditRowStyle BackColor="#2461BF" />
                        <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                        <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                        <HeaderStyle BackColor="#99C89D" Font-Bold="True" ForeColor="White" />
                        <AlternatingRowStyle BackColor="White" />
                    </asp:GridView>
                </td>
            </tr>
        </table>
    </form>
    <uc1:header ID="Header2" runat="server" />
</body>
</html>
