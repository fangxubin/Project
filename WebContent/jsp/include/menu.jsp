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

  
<title>菜单栏</title>



 
<style>
/*
侧栏菜单样式设置
*/

.leftMenu .panel-heading{font-size:14px;padding-left:20px;height:36px;line-height:36px;color:white;position:relative;cursor:pointer;}/*转成手形图标*/
.leftMenu .panel-heading span{position:absolute;right:10px;top:12px;}
.leftMenu .menu-item-left{padding: 2px; background: transparent; border:1px solid transparent;border-radius: 6px;}
.leftMenu .menu-item-left:hover{background:#C4E3F3;border:1px solid #1E90FF;}
.panel-primary > .panel-heading {
   color: black;
   background-color: rgb(202, 229, 249);
   border-color: rgb(202, 229, 249);
}
.panel {
    border-color: rgb(202, 229, 249);
    box-shadow: 0 1px 1px white;
}
.panel-group .panel + .panel {
    margin-top: 1px;
}
.panel-group .panel-heading + .panel-collapse > .list-group, .panel-group .panel-heading + .panel-collapse > .panel-body {
   	font-size: 14px;
   	border: 0px solid white;
}
.list-group-item {
padding: 6px;
    height: 30px;
   	background-color: rgb(225, 240, 251);
   	border: 1px solid white;
}
.leftMenu .menu-item-left {
	padding:0;
   	margin-left: 10px;
    border: 0px solid transparent;
}
.panel-group{
	max-height: 100%;
}
.dropdown-menu{
	background-color: rgb(202, 229, 249);
	text-align: center;
}
</style>
 
  
</head>
<body >
	<!-- 左侧导航栏  -->
		
	<div class="panel-group table-responsive " role="tablist" style="margin-top:1px;box-shadow: 0 6px 12px rgba(0,0,0,.175);max-height:554px;" id="menulist">
	    <div class="panel panel-primary leftMenu " >
	        <!-- 利用data-target指定要折叠的分组列表 -->
	        <div class="panel-heading" id="collapseListGroupHeading1" data-toggle="collapse" data-target="#collapseListGroup1" role="tab" >
	            <h4 class="panel-title">
	               	<i class="glyphicon glyphicon-th-list"></i> 
	               	 禽畜信息管理
	                <span class="glyphicon glyphicon-chevron-down right"></span>
	            </h4>
	        </div>
	        <!-- .panel-collapse和.collapse标明折叠元素 .in表示要显示出来 -->
	        <!-- <div id="collapseListGroup1" class="panel-collapse collapse in" role="tabpanel" aria-labelledby="collapseListGroupHeading1"> -->
	        <div id="collapseListGroup1" class="panel-collapse collapse" role="tabpanel" aria-labelledby="collapseListGroupHeading1">    
	            <ul class="list-group">
	              <li class="list-group-item">
	                <!-- 利用data-target指定URL -->
	                <button class="menu-item-left">
	                    <span class="glyphicon glyphicon-triangle-right"></span>养殖场信息管理
	                </button>
	              </li>
	              <li class="list-group-item">
	                <button class="menu-item-left" >
	                    <span class="glyphicon glyphicon-triangle-right"></span>禽畜信息管理
	                </button>
	              </li>
	              <li class="list-group-item">
	                <button class="menu-item-left">
	                    <span class="glyphicon glyphicon-triangle-right"></span>基本信息维护
	                </button>
	              </li>
	              <li class="list-group-item">
	                <button class="menu-item-left">
	                    <span class="glyphicon glyphicon-triangle-right"></span>基本信息查询
	                </button>
	              </li>
	              <li class="list-group-item">
	                <button class="menu-item-left">
	                    <span class="glyphicon glyphicon-triangle-right"></span>基本诊断与防治记录
	                </button>
	              </li>
	              <li class="list-group-item">
	                <button class="menu-item-left">
	                    <span class="glyphicon glyphicon-triangle-right"></span>常见疾病查询
	                </button>
	              </li>
	              <li class="list-group-item">
	                <button class="menu-item-left">
	                    <span class="glyphicon glyphicon-triangle-right"></span>疫苗注射
	                </button>
	              </li>
	              <li class="list-group-item">
	                <button class="menu-item-left">
	                    <span class="glyphicon glyphicon-triangle-right"></span>卫生管理
	                </button>
	              </li>
	              <li class="list-group-item">
	                <button class="menu-item-left" data-target="byproduct_list_list.action">
	                    <span class="glyphicon glyphicon-triangle-right" ></span>副产品
	                </button>
	              </li>
	            </ul>
	        </div>
	    </div><!--panel end-->
	      
	      <div class="panel panel-primary leftMenu">
	          <div class="panel-heading" id="collapseListGroupHeading2" data-toggle="collapse" data-target="#collapseListGroup2" role="tab" >
	              <h4 class="panel-title">
	                 	<i class="glyphicon glyphicon-eye-open"></i> 
	                 	 养殖场实时监测
	                  <span class="glyphicon glyphicon-chevron-down right"></span>
	              </h4>
	          </div>
	          <div id="collapseListGroup2" class="panel-collapse collapse" role="tabpanel" aria-labelledby="collapseListGroupHeading2">
	              <ul class="list-group">
	                <li class="list-group-item">
	                  <button class="menu-item-left">
	                      <span class="glyphicon glyphicon-triangle-right"></span>实时数据显示
	                  </button>
	                </li>
	                <li class="list-group-item">
	                  <button class="menu-item-left">
	                      <span class="glyphicon glyphicon-triangle-right"></span>视频监控
	                  </button>
	                </li>
	                <li class="list-group-item">
	                  <button class="menu-item-left">
	                      <span class="glyphicon glyphicon-triangle-right"></span>远程控制
	                  </button>
	                </li>
	                <li class="list-group-item">
	                  <button class="menu-item-left">
	                      <span class="glyphicon glyphicon-triangle-right"></span>往期数据显示
	                  </button>
	                </li>
	              </ul>
	          </div>
	      </div> 
	      
	      
	      <div class="panel panel-primary leftMenu">
	          <div class="panel-heading" id="collapseListGroupHeading3" data-toggle="collapse" data-target="#collapseListGroup3" role="tab" >
	              <h4 class="panel-title">
	                 	<i class="glyphicon glyphicon-tree-conifer"></i>  
	                 	 	资源管理
	                  <span class="glyphicon glyphicon-chevron-down right"></span>
	              </h4>
	          </div>
	          <div id="collapseListGroup3" class="panel-collapse collapse" role="tabpanel" aria-labelledby="collapseListGroupHeading3">
	              <ul class="list-group">
	                <li class="list-group-item">
	                  <button class="menu-item-left">
	                      <span class="glyphicon glyphicon-triangle-right"></span>耗材管理
	                  </button>
	                </li>
	                <li class="list-group-item">
	                  <button class="menu-item-left">
	                      <span class="glyphicon glyphicon-triangle-right"></span>药品管理
	                  </button>
	                </li>
	                <li class="list-group-item">
	                  <button class="menu-item-left">
	                      <span class="glyphicon glyphicon-triangle-right"></span>饲料管理
	                  </button>
	                </li>
	                <li class="list-group-item">
	                  <button class="menu-item-left">
	                      <span class="glyphicon glyphicon-triangle-right"></span>设备管理
	                  </button>
	                </li>
	              </ul>
	          </div>
	      </div>  
	
	<div class="panel panel-primary leftMenu">
	          <div class="panel-heading" id="collapseListGroupHeading4" data-toggle="collapse" data-target="#collapseListGroup4" role="tab" >
	              <h4 class="panel-title">
	             		<i class="glyphicon glyphicon-bell"></i> 
	             		 自动报警
	                  <span class="glyphicon glyphicon-chevron-down right"></span>
	              </h4>
	          </div>
	          <div id="collapseListGroup4" class="panel-collapse collapse" role="tabpanel" aria-labelledby="collapseListGroupHeading4">
	              <ul class="list-group">
	                <li class="list-group-item">
	                  <button class="menu-item-left">
	                      <span class="glyphicon glyphicon-triangle-right"></span>自动报警记录
	                  </button>
	                </li>
	                <li class="list-group-item">
	                  <button class="menu-item-left">
	                      <span class="glyphicon glyphicon-triangle-right"></span>自动报警阈值设置
	                  </button>
	                </li>
	              </ul>
	          </div>
	      </div>  
	      
	      <div class="panel panel-primary leftMenu">
	          <div class="panel-heading" id="collapseListGroupHeading5" data-toggle="collapse" data-target="#collapseListGroup5" role="tab" >
	              <h4 class="panel-title">
	             		<i class="glyphicon glyphicon-cog"></i> 
	             		 系统设置
	                  <span class="glyphicon glyphicon-chevron-down right"></span>
	              </h4>
	          </div>
	          <div id="collapseListGroup5" class="panel-collapse collapse" role="tabpanel" aria-labelledby="collapseListGroupHeading5">
	              <ul class="list-group">
	                <li class="list-group-item">
	                  <button class="menu-item-left">
	                      <span class="glyphicon glyphicon-triangle-right" ></span>权限管理
	                  </button>
	                </li>
	                <li class="list-group-item">
	                  <button class="menu-item-left">
	                      <span class="glyphicon glyphicon-triangle-right"></span>数据备份与恢复
	                  </button>
	                </li>
	              </ul>
	          </div>
	      </div>  
	  </div>
 
</body>
<script type="text/javascript">
	$(function(){
		$(".panel-heading").click(function(e){
			//切换折叠指示图标
			$(this).find("span").toggleClass("glyphicon-chevron-down");
			$(this).find("span").toggleClass("glyphicon-chevron-up");
		});
		
		/*
		页面跳转
		*/
		$("#menulist").click(function(event){
			var $target = $(event.target);
			if($target.is("button")){
				var url=$target.attr("data-target");
				if(url){
					/*
					ajax两种方法
					*/
				/* 	$.ajax({
						url:'user_isLogin_list',
						type:'POST',
						dataType:'json',
						success:function(data){
							alert(data.msg);
						}
					}); */
					$.get("user_isLogin_list").done(function(data){
						if(data.msg==1){
							window.location.href = url;								
						}else{
							window.location.href = "login.jsp";
						}
					}); 
				}
			}
		});
	});
</script>

</html>