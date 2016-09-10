<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>login.jsp</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<link href="css/style1.css" rel="stylesheet" type="text/css">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  
  <body>
   <form id="login" action="/JavaEE_course_design/news/loginAction.action" method="post">
    <center><h1>登 录</h1></center>
    <fieldset id="inputs">
        <input id="username" name="username" type="text" placeholder="用户名" autofocus required>   
        <input id="password" name="password" type="password" placeholder="密码" required>
    </fieldset>
    <fieldset id="actions">
        <input type="submit" id="submit" value="登录">
        <a href="">忘记密码?</a><a href="register.html">注册新用户</a>
    </fieldset>
</form>
  </body>
</html>
