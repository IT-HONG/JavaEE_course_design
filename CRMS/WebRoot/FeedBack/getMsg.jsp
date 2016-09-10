<%@ page language="java" import="java.util.*" pageEncoding="GBK"%>
<%@ page import="java.sql.*" %>
<jsp:useBean id="connDB" class="com.connect.ConnectionManager" scope="page"></jsp:useBean>
<ul>
<%
	//执行SQL语句
	PreparedStatement ps = connDB.getConnection().prepareStatement("select theme,id from cm_client_feedback order by id desc");
ResultSet rs=ps.executeQuery();	//获取反馈信息
if(rs.next()){
	do{
	%>
	<li><a href="FeedBack/feedback.jsp?id=<%=rs.getInt(2)%>"><%=rs.getString(1) %></a></li>
	<%
	}while(rs.next());
}else{
	out.print("<li>暂无新闻信息！</li>");
}
%>
</ul>