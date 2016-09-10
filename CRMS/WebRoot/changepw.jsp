<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
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

<title>My JSP 'changepw.jsp' starting page</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

</head>

<body bgcolor="#eff7ff">
	<form action="servlet/changepwCheck" method="post">
		<table width="100%" height="100%" cellpadding="0" cellspacing="0">
			<tr>
				<td valign="middle" align="center">当前密码<input type="password"
					name="old_pw"><br> 新 密 码<input type="password"
					name="new_pw"><br> 确认密码<input type="password"
					name="sure_pw"><br>
					<button type="submit" value="text" name="login">修改</button>
				</td>
			</tr>
		</table>
	</form>
</body>
</html>
