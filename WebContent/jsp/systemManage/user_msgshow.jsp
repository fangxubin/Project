<%@page import="com.livestock.model.TbUser"%>
<%@ page language="java" import="java.util.*"
	contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>


<!DOCTYPE HTML>
<html>
<head>
<base href="<%=basePath%>">
<title>显示个人信息</title>

<link rel="stylesheet" type="text/css" href="js/bootstrap-3.3.7-dist/css/bootstrap.css" />
<script src="js/jquery-3.1.0.min.js"></script>
<script src="js/bootstrap-3.3.7-dist/js/bootstrap.js"></script>


<script type="text/javascript">
	//检测登录
	if ("<%=session.getAttribute("user")%>" == "null") {
	    alert("您未登录，请先登录!");
		window.location.href = "login.jsp";
	}

</script>

<style type="text/css">
.menu{
	position: fixed;
	height: 100%;
	padding: 36px 0 0 0;
	top: 0;
}

.list{
	float:right;
	height: 100%;
	padding:0;
	top: 0;
}

.table th, .table td { 
	text-align: center; 
} 
.form-control{
	margin-top:10px;
}
.input-group .form-control {
    float: none;
}
</style>

</head>
<body >
	<!-- 动态导入jsp页面，导入导航条页面 -->
	<jsp:include page="../include/head.jsp" flush="true"/>
	
	<div class="row " style="margin: 36px 0 0 0;">
		<div class="col-md-2 menu" >
			<!-- 导入jsp页面，导入菜单栏页面 -->
			<jsp:include page="../include/menu.jsp" flush="true"/>
		</div>
		
		<!-- 普通页面 -->
		<div class="col-md-10 list clearfix" align="center">
			<div style="margin:30px 0 20px 0;">
				<span style="font-size:25px;">个人信息</span>
			</div>
			<div class="table-responsive">
				<% TbUser user=(TbUser) session.getAttribute("user");%>
				<table class="table table-hover table-bordered" style="width: 50%;margin: 0px 10% 30px;">
					<tr>
						<td>用户名</td>
						<td><%=user.getUserName() %></td>
					</tr>
					<tr>
						<td>密码</td>
						<td><%=user.getUserName() %></td>
					</tr>
					<tr>
						<td>角色</td>
						<td><%=user.getUserRole()==1?"管理员":"普通用户" %></td>
					</tr>
				</table>
				
				<div style="margin-top: 20px;">
					<a href="jsp/main.jsp">
						<button class="btn btn-info">返回</button>
					</a>
				</div>
			</div>
		</div>
	</div>
	<jsp:include page="../include/foot.jsp" flush="true"/>
</body>
</html>