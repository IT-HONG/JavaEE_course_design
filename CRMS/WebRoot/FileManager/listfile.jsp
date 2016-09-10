<%@page import="com.sise.DBHelperControl.DBHelper"%>
<%@page import="java.sql.ResultSet"%>
<%@ page language="java" import="java.util.*" pageEncoding="GBK"%>
<%
       response.setContentType("text/html;charset=GBK");
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>listfile.jsp</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  
  <body>
  <table border="2" cellspacing="0" cellpadding="0" bgcolor="#95BDFF"
		width="60%" align="center">
		<%
			String s1 = "select * from cm_documents";
			ResultSet rs = DBHelper.query(s1);
			while (rs.next()) {
		%>
		<tr>
			<td height="30">нд╪Ч</td>
			<td><%=rs.getString("dc_name")%></td>
			<td><a href="http://localhost:8080/CRMS/servlet/DownLoadServlet?filename=<%=java.net.URLEncoder.encode(rs.getString("dc_name"),"utf-8")%>" >обть</a></td>
		</tr>
		<%
			}
		%>
	</table>
  </body>
</html>
