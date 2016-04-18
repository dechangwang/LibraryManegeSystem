<%@ Page Language="C#" AutoEventWireup="true" CodeFile="BookCatalogue.aspx.cs" Inherits="BookCatalogue" %>
<%@ Register Src="head.ascx" TagName="header" TagPrefix="uc1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <link rel="stylesheet" href="js/string-style.css" media="screen" type="text/css" />

</head>
<body style="background-color:#f8f8f8">
    <div style="text-align:center;clear:both">
<script src="/gg_bd_ad_720x90.js" type="text/javascript"></script>
<script src="/follow.js" type="text/javascript"></script>
</div>
    <form id="form1" runat="server">
    <div style="height: 265px;">
         <uc1:header ID="Header2" runat="server" />
         <br />
               <asp:Label ID="Label1" style="margin-left:5%;float:left;font-size:20px;" runat="server" Text=""><b>当前位置:</b>书目检索</asp:Label>
         <img src="Image/search-top.png" style="float:right;margin-right:12%;margin-top:0px; width:10%;height:50px;"/>

    </div>
        <br />
         <div style="width:500px; background:#fff;margin-left:30%;border:1px solid #dee0d4; height: 49px;">  
              <select name="SelectItem" id="searchItem" runat="server" style="height:48px;background:#dee;font-size:20px; cursor: pointer; vertical-align: middle;">
                  <option  value="book">书  名</option>
                   <option value="publisher">出版社</option>
                   <option value="author">作  者</option>
              </select>
             <input  type="hidden" name="selection"/>
             <script>
                 var values = document.getElementById("searchItem").value;
             </script>
        <asp:HiddenField ID="HiddenField1" runat="server" OnValueChanged="HiddenField1_ValueChanged" />
           
        <asp:TextBox ID="TextBox1" runat="server" Height="40px"   Width="306px" style="margin-top: 0px;border:none;" OnTextChanged="TextBox1_TextChanged"></asp:TextBox>
              <asp:RequiredFieldValidator ID="RequiredFieldValidatorName" runat="server" ControlToValidate="TextBox1"
                        ErrorMessage=""></asp:RequiredFieldValidator>    
        <asp:ImageButton ID="ImageButton1" src="Image/search.png" runat="server" Height="40px" style="margin-right: 0px;float:right; margin-top:5px" Width="50px" />
        </div>
         <div id="contentContainer" class="trans3d"> 
             <h3 style="margin-left:60px;">热门检索</h3>
	<section id="carouselContainer" class="trans3d">
		<figure id="item1" class="carouselItem trans3d"><a href="searchResult.aspx?search=book&searchText=oracle"><div class="carouselItemInner trans3d">oracle</div></a></figure>
		<figure id="item2" class="carouselItem trans3d"><a href="searchResult.aspx?search=book&searchText=数据库"><div class="carouselItemInner trans3d">数据库</div></a></figure>
		<figure id="item3" class="carouselItem trans3d"><a href="searchResult.aspx?search=book&searchText=操作系统"><div class="carouselItemInner trans3d">操作系统</div></a></figure>
		<figure id="item4" class="carouselItem trans3d"><a href="searchResult.aspx?search=book&searchText=数据结构"><div class="carouselItemInner trans3d">数据结构</div></a></figure>
		<figure id="item5" class="carouselItem trans3d"><a href="searchResult.aspx?search=book&searchText=oracle 11g教程"><div class="carouselItemInner trans3d">oracle 11g教程</div></a></figure>
		<figure id="item6" class="carouselItem trans3d"><a href="searchResult.aspx?search=book&searchText=软件架构"><div class="carouselItemInner trans3d">软件架构</div></a></figure>
		<figure id="item7" class="carouselItem trans3d"><a href="searchResult.aspx?search=book&searchText=设计模式"><div class="carouselItemInner trans3d">设计模式</div></a></figure>
		<figure id="item8" class="carouselItem trans3d"><a href="searchResult.aspx?search=book&searchText=离散数学"><div class="carouselItemInner trans3d">离散数学</div></a></figure>
		<figure id="item9" class="carouselItem trans3d"><a href="searchResult.aspx?search=book&searchText=高等数学"><div class="carouselItemInner trans3d">高等数学</div></a></figure>
	</section>
	</div>

  <script src='js/libs.min.js'></script>

  <script src="js/index.js"></script>
        <br />
        <div style="float:right;width:30%;height:400px;margin-right:5%;">
            <h3>&nbsp;&nbsp;热门图书</h3><ul>
               <li style="font-size:25px;list-style-type:none;"><a href="searchResult.aspx?search=book&searchText=货币战争">货币战争</a></li>
                
               <li style="font-size:25px;list-style-type:none;"><a href="searchResult.aspx?search=book&searchText=牛奶可乐经济学">牛奶可乐经济学</a></li>
                <li style="font-size:25px;list-style-type:none;"><a href="searchResult.aspx?search=book&searchText=平凡的世界">平凡的世界</a></li>
                <li style="font-size:25px;list-style-type:none;"><a href="searchResult.aspx?search=book&searchText=盗墓笔记"> 盗墓笔记</a></li>
                
               <li style="font-size:25px;list-style-type:none;"><a href="searchResult.aspx?search=book&searchText=PPT讲义">PPT讲义100%</a></li>
                <li style="font-size:25px;list-style-type:none;"><a href="searchResult.aspx?search=book&searchText=大国博弈">大国博弈</a></li>
                
            </ul>
        </div>
    </form>
</body>
</html>
