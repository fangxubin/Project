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
<title>修改密码</title>
<link rel="stylesheet" type="text/css" href="js/bootstrap-3.3.7-dist/css/bootstrap.css" />
<script src="js/jquery-3.1.0.min.js"></script>
<script src="js/bootstrap-3.3.7-dist/js/bootstrap.js"></script>


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
				<span style="font-size:25px;">修改密码</span>
			</div>
			<form method="post" action="user_changePwd_login.action" class="clearfix" id="changePwd">
				<div class="col-lg-3 input-group">
					<input type="password" name="old_pwd" placeholder="原始密码" class="form-control">
					<input type="password" name="new_pwd" id="new_pwd" placeholder="新密码" class="form-control">
					<input type="password" name="new_pwd1" id="new_pwd1" placeholder="确认密码" class="form-control">
				</div>
				<div style="margin-top: 20px;">
					<a href="jsp/main.jsp" style="text-decoration: none;">
						<button class="btn btn-info">返回</button>
					</a>
					<input type="submit" value="修改" class="btn btn-info" onclick="if(!changePwd()) return false">
				</div>
			</form>
		</div>
	</div>
	<jsp:include page="../include/foot.jsp" flush="true"/>
</body>
<script type="text/javascript">
/**
 * 检查密码格式
 * @returns {Boolean}
 */
function changePwd(){
	var patrn=/^(\w){6,20}$/;
	//先验证密码和确认密码格式是否正确
	if(patrn.test($("#new_pwd").val())&&patrn.test($("#new_pwd1").val())){
		//如果格式正确，再验证是否一致
		if($("#new_pwd").val()==$("#new_pwd1").val()){
			$("#changePwd").submit();
			return true;
		}else{
			alert("密码不一致");
			$("#new_pwd1").val("");
		}
	}else{
		alert("密码格式不正确");
		$("#new_pwd").val("");
		$("#new_pwd1").val(""); 
	}
	return false;
}
</script>
</html>