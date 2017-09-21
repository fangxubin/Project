<%@ page language="java" import="java.util.*"
	contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
 
<script src="js/livestockManage/byproduct.js"></script>


<script type="text/javascript">
   	//检测登录
   	if ("<%=session.getAttribute("user")%>" == "null") {
   	    alert("您未登录，请先登录!");
   		window.location.href = "login.jsp";
   	}
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
<body>
	<!-- 动态导入jsp页面，导入导航条页面 -->
	<jsp:include page="../../include/head.jsp" flush="true"/>
	
	<div class="row " style="margin: 36px 0 0 0;">
		<div class="col-md-2 menu" >
			<!-- 导入jsp页面，导入菜单栏页面 -->
			<jsp:include page="../../include/menu.jsp" flush="true"/>
		</div>
		
		<!-- 普通页面 -->
		<div class="col-md-10 list clearfix" align="center">
			<div style="margin:30px 0 20px 0;">
				<span style="font-size:25px;">修改副产品</span>
			</div>
			<!-- <form action="byproduct_update_list.action" method="post" id="updateForm" class="clearfix"> -->
			<form id="updateForm" class="clearfix" style="margin:10px 0 10px 0;">
				<div class="col-lg-3 input-group">
					 	 <input type="hidden" value="${byproducts.byproductId}" name="updateId">
					名称：<input type="text" value="${byproducts.byproductName}" name="byproname" id="byproname" class="form-control">
					数量：<input type="text" value="${byproducts.byproductQuantity}" name="bypronum" id="bypronum" class="form-control">
				</div>
			</form>
			<a href="byproduct_list_list.action" style="text-decoration: none;">
				<button class="btn btn-info">取消修改</button>
			</a>
			<button class="btn btn-info" id="submitUpdate">确定修改</button>
		</div>
	</div>
	<jsp:include page="../../include/foot.jsp" flush="true"/>
</body>
</html>