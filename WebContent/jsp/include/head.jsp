<%@ page language="java" import="java.util.*"
	contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE HTML>
<html>
<head>
  
<title>导航栏</title>
 
 
 <style>
/*
导航栏样式设置
*/
.container {
    width: 100%;
}
.navbar {
	min-height: 30px;
	margin:0;
}

.navbar-nav>li>a {
	padding-top: 8px;
	padding-bottom: 8px;
} 
.navbar-brand {
	height: 20px;
	padding-top: 8px;
} 
/* .dropdown-toggl:hover{background:#C4E3F3;border:1px solid #1E90FF;} */

</style> 
 
  
</head>
<body >
	<!-- 顶端导航栏 -->
	<!-- 此处paddding设置左右文字边距 -->
	<div class="navbar-fixed-top" style="background-color:rgb(202, 229, 249);padding:0px 10px 0px 30px;">
		<div class="navbar " role="navigation" style="background-color:rgb(202, 229, 249);border:0;">
			<div class="navbar-header">
				<a class="navbar-brand" href="jsp/main.jsp" style="color: black;">
					<span class="glyphicon glyphicon-home" >首页</span>
				</a>
			</div>
			
			<div class="collapse navbar-collapse" >
				<ul class="nav navbar-nav navbar-right">
					<li class="dropdown">
					
						<a href="#" class="dropdown-toggle" data-toggle="dropdown">
							<span class="glyphicon glyphicon-user" style="color: black;">用户 </span>
						</a>
						<ul class="dropdown-menu " >
		                    <li>
		                    	<a href="jsp/systemManage/user_msgshow.jsp">
		                    	<i class="glyphicon glyphicon-tag"></i>
		                    		个人信息
		                    	</a>
		                    </li>
		                     <li class="divider"></li>
		                    <li>
		                    	<a href="jsp/systemManage/changePwd.jsp">
		                    	<i class="glyphicon glyphicon-edit"></i>
		                    		修改密码
		                    	</a>
		                    </li>
	                	</ul>
					</li>
					<!-- <li >
						<a href="#">
							<span class="glyphicon glyphicon-cog">设置</span>
						</a>
					</li> -->
					<li>
						<a href="javascript:void(0);">
							<span class="glyphicon glyphicon-log-in" style="color: black;">后台登录</span>
						</a>
					</li>
					<li>
						<a href="user_logout_login.action">
						<span class="glyphicon glyphicon-log-out" style="color: black;">退出</span>
						</a>
					</li>
				</ul>
			</div><!-- /.nav-collapse -->
		</div><!-- /.container -->
	</div>	

 
 
</body>
</html>