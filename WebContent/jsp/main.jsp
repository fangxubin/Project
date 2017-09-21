<%@page import="org.apache.struts2.ServletActionContext"%>
<%@page import="com.livestock.model.TbByproduct"%>
<%@page import="com.livestock.model.TbUser"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">

<!-- 引入css -->
<link rel="stylesheet" type="text/css" href="js/bootstrap-3.3.7-dist/css/bootstrap.min.css" />
<!-- 引入js -->
<script src="js/jquery-3.1.0.min.js"></script>
<script src="js/bootstrap-3.3.7-dist/js/bootstrap.min.js"></script>

<%
	String tip = (String) session.getAttribute("tip");
	if (tip == null) 
		tip = "";
	session.removeAttribute("tip");
%>

<script type="text/javascript">
	//检测登录
	if ("<%=session.getAttribute("user")%>" == "null") {
	    alert("您未登录，请先登录!");
		window.location.href = "login.jsp";
	}

    if('<%=tip%>' !='')
 		alert('<%=tip%>');

</script>

 
 
<title>系统首页</title>
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

.table-responsive {
    overflow:;
}

.table th, .table td { 
	text-align: center; 
}

</style>



</head>
<body>
	<!-- 动态导入jsp页面，导入导航条页面 -->
	<jsp:include page="include/head.jsp" flush="true"/>
	
	<div class="row " style="margin: 36px 0 0 0;">
		<div class="col-md-2 menu" >
			<!-- 导入jsp页面，导入菜单栏页面 -->
			<jsp:include page="include/menu.jsp" flush="true"/>
		</div>
		
		<!-- 普通页面 -->
		<div class="col-md-10 list" >
			<%-- <br><br><br><br><br><br><br>
			<%TbUser user = (TbUser) request.getSession().getAttribute("user"); %>
			<h1 align="center">
				<%=user.getUserName() %>,欢迎您！
			</h1> --%>
			<img src="img/5.png" style="height: 554.567px;width: 100%;">
		</div>
	</div>
	
	<jsp:include page="include/foot.jsp" flush="true"/>
</body>
</html>