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

.input-group .form-control {
    float: none;
}
a{
	text-decoration: none;
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
		<div class="col-md-10 list" >
			<div style="padding: 10px 30% 2px;margin: 15px 0 15px 0;" >
				<!-- clearfix清除浮动 -->
				<form action="byproduct_findByName_list.action" method="post" class="bs-example bs-example-form clearfix" >
					<div class="col-lg-10">
						<div class="input-group">
							<input type="text" name="byproductName"  placeholder="请输入副产品名称"  class="form-control "> 
							<span class="input-group-btn">
								<input type="submit" value="查询"  class="btn btn-info">
							</span>
						</div>
					</div>
				</form>
			</div>
			<div class="table-responsive" >
				<table class="table table-hover table-condensed table-bordered " style="width: 80%;margin: 0px 10% 30px;">
					<caption class="text-center" style="color:black;font-size:20px;">副产品列表</caption>
					<!-- 列表标题栏 -->
					<thead>
						<tr>
							<th><input type="checkbox" id="all" onchange="check()" name="ckAll"></th>
							<th>编号</th>
							<th>名称</th>
							<th>数量(Kg)</th>
							<th>统计时间</th>
							<th colspan="2">操作</th>
						</tr>
					</thead>
		
					<!-- jstl标签遍历获取的副产品数据 -->
					<c:forEach items="${byproducts}" var="pro" varStatus="status">
						<!-- 列表数据栏 -->
						<tbody>
							<tr>
								<td><input type="checkbox" name="ck" id="ck"
									value="${pro.byproductId}"></td>
								<td>
									${status.index+1+(pageBean.currentPage-1)*pageBean.pageSize}</td>
								<td>${pro.byproductName}</td>
								<td>${pro.byproductQuantity}</td>
								<td>${pro.staticsTime}</td>
								<td>
									<%-- <form action="byproduct_findById_update.action" method="post">
										<input type="hidden" value="${pro.byproductId}" name="updateId" />
										<input type="submit" value="修改" class="btn btn-link">
									</form> --%>
									<a href="byproduct_findById_update.action?updateId=${pro.byproductId}">
										<button class="btn btn-link">修改</button>
									</a>
								</td>
								<td>
									<button onclick="submitDelete(${pro.byproductId})" class="btn btn-link">删除</button>
								</td>
							</tr>
						</tbody>
					</c:forEach>
				</table>
		
				<div align="center">
					<button  id="deletePart" class="btn btn-info"><span class="glyphicon glyphicon-remove" aria-hidden="true"></span>批量删除</button> &nbsp;&nbsp;&nbsp;&nbsp; 
					<a href="jsp/livestockManage/byproduct/add.jsp" style="text-decoration: none;">
						<button class="btn btn-info"><span class="glyphicon glyphicon-plus" aria-hidden="true"></span>新增数据</button>
					</a>
				</div>
			</div>
	
			<div align="center" style="margin:33px 30px;">
				<s:iterator value="pageBean">
					<tr >
						<td colspan="6" align="center" bgcolor="#5BA8DE">
							当前第<s:property value="currentPage" />页&nbsp; &nbsp; 
								共<s:property value="totalPage" />页 &nbsp;&nbsp; 
								共<s:property value="allRow" />条记录
							<br> <s:if test="%{currentPage == 1}">    
		          				首页  上一页  
		        			</s:if> <!-- currentPage为当前页 --> <s:else>
								<a href="byproduct_list_list.action?page=1">首页</a>
								<a
									href="byproduct_list_list.action?page=<s:property value="%{currentPage-1}"/>">上一页</a>
							</s:else> <s:if test="%{currentPage != totalPage}">
								<a
									href="byproduct_list_list.action?page=<s:property value="%{currentPage+1}"/>">下一页</a>
								<a
									href="byproduct_list_list.action?page=<s:property value="totalPage"/>">尾页</a>
							</s:if> <s:else>    
					         	下一页  尾页    
					         </s:else>
						</td>
					</tr>
				</s:iterator>
			</div>
		</div>
	</div>
	
	<jsp:include page="../../include/foot.jsp" flush="true"/>
</body>
</html>