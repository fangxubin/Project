

function next(){
	//设置属性和值：$(selector).attr(attribute,value)
	$("#checkCodeImg").attr("src", "livestock/getValidateCode.action?ran="+Math.random());
	
}

function checkCode() {
	$.ajax("livestock/checkValidateCode.action?code="+$("#code").val()+"&r="+new date()).success(function(data){
	    if (data == "0") {
	        $("#log").submit();
	        return true;
	    }else {
	        alert("效验码错误!");
	        $("#code").val("");
	        next();
	        return false;
	    }
	}).error(function(e){
		alert(e);
	});
}
        