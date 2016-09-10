<%@ page language="java" import="java.util.*" pageEncoding="GBK"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<base href="<%=basePath%>">
<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="description" content="">
<meta name="author" content="">
<title>客户关系管理系统主页</title>
<!-- CSS -->
<link rel="stylesheet" href="css/supersized.css">
<link rel="stylesheet" href="css/login.css">
<link href="css/bootstrap.min.css" rel="stylesheet">
<!-- HTML5 shim, for IE6-8 support of HTML5 elements -->
<!--[if lt IE 9]>
	<script src="js/html5.js"></script>
<![endif]-->
<script src="js/jquery-1.8.2.min.js"></script>
<script src="js/login.js"></script>
</head>
<body>

	<div class="page-container">
		<div class="main_box">
			<div class="login_box">
				<div>
					<center><h1><font face="微软雅黑">客户信息管理系统</font></h1></center>
				</div>

				<div class="login_form">
					<form action="servlet/LoginServlet" method="post">
						<div class="form-group">
							<label for="j_password" class="t">角&nbsp;&nbsp;&nbsp;&nbsp;色：</label>
							<select class=TxtUserCssClass name="role">
								<option value="客户">客户</option>
								<option value="管理员">管理员</option>
								<option value="超级管理员">超级管理员</option>
							</select>
						</div>
						<div class="form-group">
							<label for="j_username" class="t">用户名：</label> <input id="email"
								value="" name="TxtUserName" type="text" class="form-control x319 in"
								autocomplete="off">
						</div>
						<div class="form-group">
							<label for="j_password" class="t">密&nbsp;&nbsp;&nbsp;&nbsp;码：</label>
							<input id="password" value="" name="TxtPassword" type="password"
								class="password form-control x319 in">
						</div>
						
						<div class="form-group">
							<label class="t"></label> <label for="j_remember" class="m">
								<input id="j_remember" type="checkbox" value="true">&nbsp;记住登陆账号!
							</label>
						</div>
						<div class="form-group space">
							<label class="t"></label>
							<button type="submit" id="submit_btn"
								class="btn btn-primary btn-lg">&nbsp;登&nbsp;录&nbsp;</button>
							<input type="reset" value="&nbsp;重&nbsp;置&nbsp;"
								class="btn btn-default btn-lg">
						</div>
					</form>
				</div>
			</div>
		</div>
	</div>

	<!-- Javascript -->

	<script src="js/supersized.3.2.7.min.js"></script>
	<script src="js/supersized-init.js"></script>
	<script src="js/scripts.js"></script>
</body>

</html>
