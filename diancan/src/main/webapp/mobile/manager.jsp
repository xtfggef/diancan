<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<!doctype html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width,initial-scale=1">
<title>管理界面</title>
<link rel="stylesheet" href="themes/Bootstrap.css">
<link rel="stylesheet" href="themes/jquery.mobile.structure-1.4.0.min.css" />
<link rel="stylesheet" href="themes/jquery.mobile.icons.min.css" />
<script src="themes/jquery-1.8.2.min.js"></script>
<script src="themes/jquery.mobile-1.4.0.min.js"></script>
<script src="themes/jquery.validate.min.js"></script>
<script type="text/javascript">
$(document).ready(function() {
	$("#addCateForm").validate({
		rules : {
			cname : {
				required : true
			},
		},
		messages : {
			cname : {
				required : "请输入分类"
			}
		},
		submitHandler : function(form) {
			form.submit();
		}
	});
});

function jump(){
	location.href = "index.jsp";
}
</script>
</head>
<body>
	<div data-role="page" data-add-back-btn="true">
		<div data-role="content" data-theme="a">
			<a href="javascript:void(0)" data-role="button" data-theme="c" data-icon="plus" onclick="jump()">去点菜</a>
			<div data-role="tabs" id="tabs">
			  <div data-role="navbar">
			    <ul>
			      <li><a href="#addcate" data-ajax="false">增加分类</a></li>
			      <li><a href="#addfood" data-ajax="false">增加菜</a></li>
			      <li><a href="#report" data-ajax="false">查看报表</a></li>
			    </ul>
			  </div>
			  <div id="addcate">
			    <form id="addCateForm" action="addCategory" method="post">
					<div data-role="fieldcontain">
						<table>
							<tr>
								<td><label for="cname">分类名:</label></td>
								<td><input type="text" name="cname" id="cname"/></td>
							</tr>
						 </table>
						<button type="submit" data-theme="d">提交</button>
					</div>
				</form> 
			  </div>
			  <div id="addfood">
			 	<form id="addFoodForm" action="addFood" method="post">
					<div data-role="fieldcontain">
						<table>
							<tr>
								<td><label for="fname">菜名:</label></td>
								<td><input type="text" name="fname" id="fname"/></td>
							</tr>
							<tr>
								<td><label for="cprice">价格:</label></td>
								<td><input type="text" name="cprice" id="cprice"/></td>
							</tr>
						 </table>
						<button type="submit" data-theme="d">提交</button>
					</div>
				</form> 
			  </div>
			  <div id="report">
			  <form id="reportForm" action="addGoods" method="post">
					<div data-role="fieldcontain">
						<table>
							<tr>
								<td><label for="category">分类:</label></td>
								<td><input type="text" name="category" id="category"/></td>
							</tr>
						 </table>
						<button type="submit" data-theme="d">提交</button>
					</div>
				</form> 
			  </div>
			</div>
		</div>
	</div>
</body>
</html>