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
<title>点餐</title>
<link rel="stylesheet" href="themes/Bootstrap.css">
<link rel="stylesheet" href="themes/jquery.mobile.structure-1.4.0.min.css" />
<link rel="stylesheet" href="themes/jquery.mobile.icons.min.css" />
<script src="themes/jquery-1.8.2.min.js"></script>
<script src="themes/jquery.mobile-1.4.0.min.js"></script>
<script type="text/javascript">
function jump(flag){
	location.href = "manager.jsp";
}
</script>
</head>
<body>
	<div data-role="page" data-add-back-btn="true">
		<div data-role="content" data-theme="a">
			<div data-role="fieldcontain" align="left">
				<fieldset data-role="controlgroup" data-type="horizontal">
					<select name="category" id="category">
						<option>分类</option>
						<option value="mon">面食</option>
						<option value="tue">小炒</option>
						<option value="wed">炖菜</option>
					</select> 
					<a href="javascript:void(0)" data-role="button" data-theme="d" data-icon="bullets" onclick="jump()">管理</a>
				</fieldset>
			</div>
			<ul data-role="listview" data-inset="true" data-divider-theme="a"
				data-filter="true" data-filter-placeholder="搜索菜名">
				<li data-icon="gear"><a href="">A list item</a></li>
				<li data-icon="gear"><a href="">A list item</a></li>
				<li data-icon="gear"><a href="">A list item</a></li>
				<li data-icon="gear"><a href="">A list item</a></li>
				<li data-icon="gear"><a href="">A list item</a></li>
				<li data-icon="gear"><a href="">A list itemB</a></li>
			</ul>
		</div>
	</div>
</body>
</html>