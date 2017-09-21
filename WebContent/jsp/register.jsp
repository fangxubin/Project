<%@ page language="java" import="java.util.*"
	contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE html>
<html>
<head>
	<base href="<%=basePath%>">
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8"> 
	<title>注册</title>
	
	
	<link rel="stylesheet" href="css/reset.css">
    <link rel="stylesheet" href="css/supersized.css">
 	<script src="js/jquery-1.8.1.min.js" type="text/javascript"></script>
    <script src="js/supersized.3.2.7.min.js"></script>
    <script src="js/supersized-init.js"></script>
	
	
	<link rel="stylesheet" href="//apps.bdimg.com/libs/jqueryui/1.10.4/css/jquery-ui.min.css">
	<script src="//apps.bdimg.com/libs/jquery/1.10.2/jquery.min.js"></script>
	<script src="//apps.bdimg.com/libs/jqueryui/1.10.4/jquery-ui.min.js"></script>
	
	
	<link rel="stylesheet" type="text/css" href="css/register.css" />
	<script type="text/javascript" src="js/register.js"></script>
	<%
		//获取注册失败提示信息
		String tip = (String) request.getAttribute("tip");
		if (tip == null) 
			tip = "";
		request.removeAttribute("tip"); 
	%>
	
	<script type="text/javascript">
		if('<%=tip%>' !='')
	 	   alert('<%=tip%>');
	</script>
	
	<script type="text/javascript">
		$(function() {
			//工具提示框
		  $( document ).tooltip({
		      position: {
		          my: "center top",
		          at: "right bottom",
		          using: function( position, feedback ) {
		            $( this ).css( position );
		            $( "<div>" )
		              .addClass( "arrow" )
		              .addClass( feedback.vertical )
		              .addClass( feedback.horizontal )
		              .appendTo( this );
		          }
		      }
		  });
		});
	</script>
	
<style type="text/css">
		/*提示工具框*/
.ui-tooltip, .arrow:after {
    background: transparent;
    border: 1px solid black;
  }
  .ui-tooltip {
    padding: 10px 20px;
    color: lime;
    border-radius: 20px;
    /* font: bold 14px "Helvetica Neue", Sans-Serif; */
    font: 1px;
    text-transform: uppercase;
    box-shadow: 0 0 7px black;
  }
  .arrow {
    width: 70px;
    height: 16px;
    overflow: hidden;
    position: absolute;
    left: 50%;
    margin-left: -35px;
    bottom: -16px;
  }
  .arrow.top {
    top: -16px;
    bottom: auto;
  }
  .arrow.left {
    left: 20%;
  }
  .arrow:after {
    content: "";
    position: absolute;
    left: 20px;
    top: -20px;
    width: 25px;
    height: 25px;
    box-shadow: 6px 5px 9px -9px black;
    -webkit-transform: rotate(45deg);
    -moz-transform: rotate(45deg);
    -ms-transform: rotate(45deg);
    -o-transform: rotate(45deg);
    tranform: rotate(45deg);
  }
  .arrow.top:after {
    bottom: -20px;
    top: auto;
  }
</style>
	
	
</head>
<body>
<div style="font-size: 40px;line-height: 100px" >用户注册</div>
<div class="form0">
	<form method="post" action="user_register_login.action" onsubmit="return checkpwd()" id="log">
		<div >
			<input type="text" name="registername" id="uname" placeholder="用户名" 
			onblur="return checkuname()" title="4-20个字符(包括小写字母、数字、下划线、中文)，一个汉字为两个字符。一旦注册成功用户名不能被修改">
		</div>
		<div>
			<input type="password" name="password1" id="pwd1" placeholder="密码" 
			title="密码由6-20个字符组成，请使用英文字母加数字或符号的组合密码，不能单独使用英文字母、数字或符号作为您的密码。">
		</div>
		<div>
			<input type="password" name="password2" id="pwd2" placeholder="确认密码">
		</div>
		<div>
			<input type="text" id="code" placeholder="验证码"/>
		</div>
	
		<div class="code" >
			<img id="checkCodeImg" src="getValidateCode.action">
			
			<a onclick="next()" href="javascript:void(0);" style="color: white;">看不清？换一张</a>
		</div>
		
		<div class="register_msg">
				
		</div>
		<div>	
			<a href="login.jsp">
				<input type="button" value="返回" class="login" >
			</a>
			<input type="button" value="注册" class="login" id="checkCode">
		</div>
		<div>
			<input type="checkbox" class="chk" value="agree" name="agree" checked="checked"/>
				已阅读并同意
			<a href="jsp/agreement.jsp">
				《禽畜养殖管理系统用户协议》
			</a>
		</div>
	</form>		
</div>	
</body>
<!-- <script type="text/javascript" src="js/register.js"></script> -->
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