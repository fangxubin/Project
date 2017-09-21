<%@ page language="java" import="java.util.*"
	contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
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

.table-responsive {
    overflow:;
}
.table th, .table td { 
	text-align: center; 
}
.form-control{
	margin-top:10px;
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
		<div class="col-md-10 list" align="center">
			<div style="margin:30px 0 20px 0;">
				<span style="font-size:25px;">新增副产品</span>
				
			</div>
					
			<!-- 普通提交form表单，刷新页面会重复提交 -->
			<!-- <form action="byproduct_addByName_list.action" method="post" >	
				名称：<input type="text" name="byproname"  ><br/>
				数量：<input type="text" name="bypronum" ><br/>
				<input type="submit" value="添加">
			</form> -->
			
			<!-- 使用ajax提交form表单，避免了舒心页面重复提交问题 -->
			<form id="addForm" class="clearfix" style="margin:10px 0 10px 0;">
				<div class="col-lg-3 input-group">
					<input type="text" name="byproname"  id="byproname" placeholder="名称" class="form-control ">
					<input type="text" name="bypronum" id="bypronum" placeholder="数量" class="form-control ">
				</div>
			</form>
			<a href="byproduct_list_list.action" style="text-decoration: none;">
				<button class="btn btn-info">取消</button>
			</a>
			<button id="submitAdd" class="btn btn-info">添加</button>	
		</div>
	</div>
	<jsp:include page="../../include/foot.jsp" flush="true"/>
</body>
<script>

</script>
</html>