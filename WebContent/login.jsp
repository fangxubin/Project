<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<base href="<%=basePath%>">
	<title>登录</title>
	
 	<link rel="stylesheet" href="css/reset.css">
    <link rel="stylesheet" href="css/supersized.css">
    <link rel="stylesheet" href="css/style.css">
    
 	<script src="js/jquery-1.8.1.min.js"></script>
	<script src="js/jquery.spritely-0.6.js"></script>
    <script src="js/supersized.3.2.7.min.js"></script>
    <script src="js/supersized-init.js"></script>
	
<%
    String tip = (String) session.getAttribute("tip");
    if (tip == null) 
    	tip = "";
    session.removeAttribute("tip"); 
%>
<script type="text/javascript">
	if ('<%=tip%>' != '') 
		alert('<%=tip%>');

</script>
	

</head>
<body>
<div style="font-size: 40px;line-height: 100px" >禽畜养殖管理系统</div>

<div class="form0">
	<form method="post" action="user_login_main.action" id="log">
		<div >
			<input type="text" name="username" placeholder="用户名">
		</div>
		
		<div >
			<input type="password" name="password" placeholder="密码">
		</div>
	
		<div >
			<input type="text" id="code" placeholder="验证码" />
		</div>
		
		<div class="code">
			<img id="checkCodeImg" src="getValidateCode.action" >
			
			<a onclick="next()" href="javascript:void(0);" style="color: white;">看不清？换一张</a>
		</div>
	
		<div>
			<input type="radio" value="1" name="role" class="role">管理员&nbsp;
			<input type="radio" value="0" name="role" checked="checked" class="role">普通用户
			
		</div>
	
		<div >
			<input type="checkbox" class="chk" checked="checked"/>记住密码？
		</div>
		
		<div >
			<input type="button" value="登录"  id="checkCode" class="login">
		</div>
	
	</form>	
	<br/>
	<div>
		<a href="jsp/register.jsp" >
			注册新用户？
		</a>
	</div>
</div>	

</body>
<script>
function next(){
	//设置属性和值：$(selector).attr(attribute,value)
	$("#checkCodeImg").attr("src", "getValidateCode.action?ran="+Math.random());
}


$(function(){
	$("#checkCode").click(function(){
		$.ajax({
			url:'checkValidateCode.action',
			type:'POST',
			data:{code:$("#code").val()},
			success:function(flag){
				if(flag=="0"){
					$("#log").submit();
				}else{
					alert("验证码错误");
					next();
					//将验证码输入框清空
					$("#code").val("");
				}
			},
			error:function(XMLHttpRequest, textStatus, errorThrown) {  
	            alert(XMLHttpRequest.status);  
	            alert(XMLHttpRequest.readyState);  
	            alert(textStatus);  
	        } 
		});
	});
});

</script>
</html>