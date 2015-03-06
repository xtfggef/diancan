add.jsp<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
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
<link rel="stylesheet"
	href="themes/jquery.mobile.structure-1.4.0.min.css" />
<link rel="stylesheet" href="themes/jquery.mobile.icons.min.css" />
<script src="themes/jquery-1.8.2.min.js"></script>
<script src="themes/jquery.mobile-1.4.0.min.js"></script>
</head>
<body>
	<div data-role="page" data-add-back-btn="true">
		<div data-role="content" data-theme="a">
			<div data-role="fieldcontain">
				<label for="category">分类名:</label> <input type="text"
					name="category" id="category" value="" />
				<div class="ui-block-a">
					<button type="submit" data-theme="d">取消</button>
				</div>
				<div class="ui-block-b">
					<button type="submit" data-theme="a">确定</button>
				</div>

			</div>
		</div>
	</div>
</body>
</html>