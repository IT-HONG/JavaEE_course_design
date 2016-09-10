<%@page import="com.sise.LoginCheck.LoginBean"%>
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE jsp PUBLIC "-//W3C//DTD jsp 4.01 Transitional//EN">
<jsp>
<head>
<base href="<%=basePath%>">

<title>客户关系管理系统主页</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
</head>
<%
	String roleName = null;
	//获取在LoginServlet.java中保存在session对象中的数据
	ArrayList login = (ArrayList) session.getAttribute("login");
	if (login == null || login.size() == 0) {
		response.sendRedirect("http://localhost:8084/CRMS/login.jsp");
	} else {
		for (int i = login.size() - 1; i >= 0; i--) {
			LoginBean nn = (LoginBean) login.get(i);
			roleName = nn.getRole();
		}
	}
%>
<frameset rows="59,*" frameborder="no" border="0" framespacing="0">
	<frame src="top.jsp" noresize="noresize" frameborder="0"
		name="topFrame" marginwidth="0" marginheight="0" scrolling="no">
	<frameset rows="*" cols="201,*" id="frame">
	<%
		if (roleName.equals("客户")) {
	%>
	<frame src="left_c.jsp" name="leftFrame" noresize="noresize"
			marginwidth="0" marginheight="0" frameborder="0" scrolling="auto">


	<%
		} else if (roleName.equals("管理员")) {
	%>
	<frame src="left_adm.jsp" name="leftFrame" noresize="noresize"
			marginwidth="0" marginheight="0" frameborder="0" scrolling="auto">
	<%
		}
	%>
	
	<%-- 	<frame src="left.jsp" name="leftFrame" noresize="noresize"
			marginwidth="0" marginheight="0" frameborder="0" scrolling="auto">--%>
		<frame src="right.jsp" name="main" marginwidth="0" marginheight="0"
			frameborder="0" scrolling="yes">
	</frameset>
	<frame src="UntitledFrame-1" noresize="noresize" frameborder="0"
		name="bottomFrame" marginwidth="0" marginheight="0" scrolling="no">
	<noframes>
		<body></body>
	</noframes>
</frameset>

</jsp>
