<%@ Control Language="C#" AutoEventWireup="true" CodeFile="head.ascx.cs" Inherits="head" %>
<style>
    .top-head {
    float: left;
    height: 50px;
    padding: 0 3px;
    text-align: center;
    border-right: 1px solid #f5f5f5;
    border-left: 1px solid #f5f5f5;
    line-height: 50px;
        width: 66px;
    }
 .top-head:hover {
         border-right: 1px solid #eee;
    border-left: 1px solid #eee;
    background: #eddddd;
    }
    a {
        text-decoration:none;
        color:black;
    }
    *{
		margin: 0px;
		padding: 0px;
	}
		#nav{
		width: 600px;
		height: 50px;
		margin: 0 auto;
		background: #d2f7f4;
	}
ul{
	list-style: none;
}
ul li{
	float: left;
	
	line-height: 50px;
	text-align: center;
	position: relative;
}
a{
	padding: 0 10px;
	text-decoration: none;
	color: #000;
	display: block;
}
a:hover{
	color: #fff;
	background: #666;
}
ul li ul li{
	float: none;
	background: #eee;
	margin-top: 2px;
}
ul li ul{
	position: absolute;
	left: 0px;
	top:50px;
	display: none;
}
ul li ul li a:hover {
	background-color: #06f;
}
ul li:hover ul {
	display: block;
        z-index:158999;

}

</style>
<div >
       <img src="Image/head-top.png" style="width:100%;height:149px;"/>
    </div>
   
  <div style="background-color:#d2f7f4;height:50px;"> 
       <div style="width:30%;height:50px; float:left;text-align:center;">
           <h3 style="margin-top:10px; height: 29px; width: 338px;"> &nbsp;图书馆管理系统欢迎您！</h3>
       </div>
        <div style="width: 50%;height:50px;float:right;">
           
                <div id="nav">
		<ul>
			<li><a href="index.aspx">首页</a>
			</li>
			<li>
                <a href="Default.aspx">读者登录</a>
         
			</li>
            <li><a href="bookCatalogue.aspx">书目检索</a></li>
              <li><a href="AdminOfReadersInfo.aspx">读者管理</a>
                 <ul>
					<li><a href="readerInfo.aspx">信息修改</a></li>
                     <li><a href="History.aspx">借阅历史</a></li>
					
				</ul>
            </li>
			<li><a href="#">图书管理</a>
                <ul>
                    <li><a href="Recommand.aspx">读者荐购</a></li>
                    <li><a href="bookRenew.aspx">图书续借</a></li>
					<li><a href="NewBook.aspx">新书征订</a></li>
					<li><a href="DeleteBook.aspx">图书注销</a></li>
                    <li><a href="ChangeBookInfoPage.aspx" style="z-index:90000;">信息修改</a></li>
                     <li><a href="Pulishment.aspx">图书罚款</a></li>
				</ul>
			</li>
			
			
          
            <li><a href="#">图书借还</a>
                <ul>
                     <li><a href="bookBorrowOrder.aspx">图书预约</a></li>
					<li><a href="borrowBook.aspx">图书借阅</a></li>
					<li><a href="bookReturn.aspx">图书归还</a></li>
                    
                   
				</ul>
			</li>
            <li><a href="Default.aspx">退出系统</a></li>

		</ul>
	</div>

        </div>
   
</div>


