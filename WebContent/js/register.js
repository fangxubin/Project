/**
 * 验证用户名是否符合规范
 * @returns {Boolean}
 */
function checkuname(){
	//var patrn=/^[A-Za-z0-9_\u4e00-\u9fa5]{4,20}$/;
	var patrn=/^[A-Za-z\u4e00-\u9fa5]{1}([a-zA-Z0-9]|[._]|[\u4e00-\u9fa5]){3,20}$/;
	if (!patrn.test($("#uname").val())) {
		return false;
	}else{
		return true;
	}
}

/**
 * 页面加载完成后验证用户名格式是否正确，错误给出提示
 */
$(document).ready(function(){
	$("#pwd1").focus(function(){
		if(!checkuname()){
			alert("用户名格式错误！");
			//$("#username_msg").text("用户名格式错误 ");
			//$("#uname").val("");
		}
	});
	
});

/**
 * 先验证密码和确认密码格式是否正确
 * 如何格式正确，再验证是否一致
 * @returns {Boolean}
 */
function checkpwd(){
	var patrn1=/^(\w){6,20}$/;
	//先验证密码和确认密码格式是否正确
	if(patrn1.test($("#pwd1").val())){
		//如何格式正确，再验证是否一致
		if($("#pwd1").val()==$("#pwd2").val()){
			return true;
		}else{
			alert("密码不一致");
			/*$("#pwd1").val("");
			$("#pwd2").val("");*/
			return false;
		}
	}else{
			$("#username_msg").text("密码格式不正确");
			/*$("#pwd1").val("");
			$("#pwd2").val("");*/
			return false;
	}
}
/**
 * 页面加载完成后验证密码是否正确，错误给出提示
 */
$(document).ready(function(){
	$("#pwd2").blur(function(){
		if(!checkpwd()){
			return false;
		}
		else{
			return true;
		}
	});
});

