/**
 * 全选框
 */
function check() {
	var flag = document.getElementById("all").checked;
	var cks = document.getElementsByName("ck");
	
	if (flag) {
		for (var i = 0; i < cks.length; i++) {
			cks[i].checked = true;
		}
	} else {
		for (var i = 0; i < cks.length; i++) {
			cks[i].checked = false;
		}
	}
}


/**
 * 批量删除
 */
$(function(){
	$("#deletePart").click(function(){
		if(confirm("确定删除选中项吗？")){
			//默认获取数组，要在id选择器后加个0，不然取不到
			var ckAll = $("#all")[0].checked;
			var cks = document.getElementsByName("ck");
			var num=[];
			var j=0;
			if (ckAll) {
				$.ajax({
					url:'byproduct_deletePart_list.action',
					type:'POST',
					data:{flag:'0'},
					success:function(data){
						if(data=='0'){
							window.location.href="byproduct_list_list.action";
						}
					}
				}); 
			} else {
				for (var i = 0; i <cks.length; i++) {
				 	if((cks[i].checked)){
						num[j]=cks[i].value;
						j++;
					}
				}
				$.ajax({
					url:'byproduct_deletePart_list.action',
					type:'POST',
					//使数组拼接成字符串传入
					traditional: true, 
					data:{num:num,flag:'1'},
					success:function(data){
						if(data=='1'){
							window.location.href="byproduct_list_list.action";
						}
					}
				});
			}
		}
	});
});

/**
 * 删除单条记录
 */
function submitDelete(id){
	if(confirm("确认删除吗？")){
		$.ajax({
			url:'byproduct_delete_list.action',
			type:'POST',
			data:{deleteId:id},
			dataType:'json',
			success:function(data){
				if(data.msg==1){
					window.location.href="byproduct_list_list.action";
					
				}
			},
			error:function(XMLHttpRequest, textStatus, errorThrown) {  
	            alert(XMLHttpRequest.status);  
	            alert(XMLHttpRequest.readyState);  
	            alert(textStatus);  
	        }  
		});
	}
} 

/*
 * add
 * */
$(function() {
	/**
	 * add.jsp
	 * 提交新增数据
	 */
    $('#submitAdd').click(function() {
        if(checkFormat()){
	    	if(confirm("确定添加？")){
		    	$.ajax({
		            url: 'byproduct_addByName_list.action',
		            type: 'POST',
		            data: $("#addForm").serialize(),
		            success: function() {
		            	window.location.href="byproduct_list_list.action";
		            },
		            error:function(XMLHttpRequest, textStatus, errorThrown) {  
		                alert(XMLHttpRequest.status);  
		                alert(XMLHttpRequest.readyState);  
		                alert(textStatus);  
		            }  
		        });
	    	}
        }else{
        	alert("请检查数据！");
        }
    });
    
}); 
/**
 * 
//检查数据格式
 */
function checkFormat(){
	var patrn=/^[\u4e00-\u9fa5]+$/;
	if((patrn.test($("#byproname").val()))&&(parseInt($("#bypronum").val())>0)){
		return true;
	}else{
		return false;
	}
	
}


$(function() {
	/**
	 * update.jsp
	 * 提交修改
	 */
    $('#submitUpdate').click(function() {
        if(checkFormat()){
	    	if(confirm("确定修改？")){
		    	$.ajax({
		            url: 'byproduct_update_list.action',
		            type: 'POST',
		            data: $("#updateForm").serialize(),
		            success: function() {
		            	window.location.href="byproduct_list_list.action";
		            },
		            error:function(XMLHttpRequest, textStatus, errorThrown) {  
		                alert(XMLHttpRequest.status);  
		                alert(XMLHttpRequest.readyState);  
		                alert(textStatus);  
		            }  
		        });
	    	}
        }else{
        	alert("请检查数据！");
        }
    });
}); 