<%@ Page Language="C#" AutoEventWireup="true" CodeFile="index.aspx.cs" Inherits="index" %>
<%@ Register Src="head.ascx" TagName="header" TagPrefix="uc1" %>
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">

<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>图书馆管理系统首页</title>
    <link href="js/bootstrap.css" rel='stylesheet' type='text/css' />
<link href="js/style.css" rel="stylesheet" type="text/css" media="all" />


<script type="text/javascript" src="js/jquery-1.7.2.min.js"></script> 


<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />

<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<!--webfont-->
<!-- start menu -->
<script type="text/javascript" src="js/megamenu.js"></script>
				<script type="text/javascript">
				    $(window).load(function () {
				        $("#flexiselDemo").flexisel({
				            visibleItems: 1,
				            animationSpeed: 1000,
				            autoPlay: true,
				            autoPlaySpeed: 2000,
				            pauseOnHover: true,
				            enableResponsiveBreakpoints: true,
				            responsiveBreakpoints: {
				                portrait: {
				                    changePoint: 480,
				                    visibleItems: 1
				                },
				                landscape: {
				                    changePoint: 640,
				                    visibleItems: 2
				                },
				                tablet: {
				                    changePoint: 768,
				                    visibleItems: 3
				                }
				            }
				        });

				    });
		</script>
		<script type="text/javascript" src="js/jquery.flexisel.js"></script>
</head>
   
<body>
    <form id="form1" runat="server">
    <div>
     <uc1:header ID="Header2" runat="server" />
        
    </div>  
        <br />
          <div style="width:500px; background:#fff;margin-left:30%;border:1px solid #dee0d4; height: 49px;">  
              <select runat="server" name="selectItem" id="searchItem" style="height:48px;background:#dee;font-size:20px; cursor: pointer; vertical-align: middle;">
                  <option selected="selected" value="book">书  名</option>
                   <option value="publisher">出版社</option>
                   <option value="author">作  者</option>
              </select>
               <script>
                   var values = document.getElementById("searchItem").value;

             </script>
                    

        <asp:TextBox ID="TextBox1" runat="server" Height="40px"  OnTextChanged="TextBox1_TextChanged" Width="306px" style="margin-top: 0px;border:none;"></asp:TextBox>
              <asp:RequiredFieldValidator ID="RequiredFieldValidatorName" runat="server" ControlToValidate="TextBox1"
                        ErrorMessage=""></asp:RequiredFieldValidator>    
        <asp:ImageButton ID="ImageButton1" src="Image/search.png" runat="server" Height="40px" style="margin-right: 0px;float:right; margin-top:5px" Width="50px" />
        </div>
        <br />
         <br />
        <div style="width:500px;height:580px;float:left; margin-left:8%;">
            <a  style="float:left;" href="searchResult.aspx?search=book&searchText=oracle"><img  style="background:#f7f7f7" src="Image/oracle2.jpg" alt="" /></a>
            
              <a style="float:left;margin-left:0px;" href="searchResult.aspx?search=book&searchText=Oracle"><img  style="background:#f7f7f7;" src="Image/oracle3.jpg" alt="" /></a>
            <br /> <br />
             <a  style="float:left;" href="searchResult.aspx?search=book&searchText=人生"><img  style="background:#f7f7f7" src="Image/1.jpg" alt="" /></a>
            
              <a style="float:left;margin-left:0px; height: 284px; " href="searchResult.aspx?search=book&searchText=追风筝的人"><img  style="background:#f7f7f7;" src="Image/2.jpg" alt="" /></a>
        </div>
        	   	<div style="width:400px;height:230px;float:left;background:#f7f7f7;margin-left:30px;">

			   	  	
			   	  	 <ul id="flexiselDemo" style="background:#f7f7f7">	
					<li >
						<div class="book">
							<a href="searchResult.aspx?search=book&searchText=oracleEssentials"><img  style="background:#f7f7f7" src="Image/oracle1.jpg" alt="" /></a></div>
					</li>
					<li>
					<div class="book">
							<a href="searchResult.aspx?search=book&searchText=DBA思想的天空"><img src="Image/dba.jpg" alt="" /></a>
							
							</div>
					</li>	
					<li>
					<div class="book">
							<img style="background:#f7f7f7" src="Image/oracle1.jpg" alt="" />
                        </div>
							
					</li>	
					<li>
					<div class="book">
							<img style="background:#f7f7f7"  src="Image/dba.jpg" alt="" />
							
						</div>
					</li>	
					<li>
					<div class="book">
							<img style="background:#f7f7f7" src="Image/oracle1.jpg" alt="" />
						
						</div>
					</li>							    	  	       	   	  									    	  	       	   	    	
				</ul>


			   	  </div>
        <div style="width:25%;height:350px;float:left; margin-left:5%;">
            <asp:Image ID="Image1" src="Image/4.jpg" runat="server" />
        </div>
    </form>

</body>
</html>
