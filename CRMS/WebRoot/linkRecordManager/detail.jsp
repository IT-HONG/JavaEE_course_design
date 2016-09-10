<%@page import="com.sise.DBHelperControl.*"%>
<%@page import="java.sql.ResultSet"%>
<%@ page language="java" import="java.util.*" pageEncoding="GBK"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>详细记录</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<link href="css/css.css" rel="stylesheet" type="text/css">
	<SCRIPT language=javascript>
	<!--
	var displayBar=true;
	function switchBar(obj){
		if (displayBar){
			parent.frame.cols="0,*";
			displayBar=false;
			obj.value="打开左边管理菜单";
		}
		lse{
			parent.frame.cols="195,*";
			displayBar=true;
			obj.value="关闭左边管理菜单";
		}	
	}

	function fullmenu(url){
		if (url==null) {url = "admin_left.asp";}
		parent.leftFrame.location = url;
		}
	//-->
	</SCRIPT>
	

  </head>
  
  <body>
    <%
    String ss=request.getParameter("id");
    String s1="select * from cm_link_record where linkid='"+ss+"'";
    ResultSet rs=DBHelper.query(s1);
    %>
    
    
	<table class="table" cellspacing="1" cellpadding="2" width="99%" align="center" border="0">
	<%
	while(rs.next()){
	%>
    <tbody>
     
     <tr>
      <th class="bg_tr" align="left" colspan="2" height="25">查看编号&nbsp;&nbsp;<%=rs.getString(2)%>&nbsp;&nbsp;的详细信息<input onClick="switchBar(this)" type="button" value="关闭左边管理菜单" name="SubmitBtn" /></th>
     </tr>

    <tr>
      <th class="bg_tr" align="left" height="25" width="17%">课程</th>
	<th width="83%"  class="bg_tr" align="left" height="25" width="17%">成绩</th>
    </tr>

    <tr>
      <td class="td_bg" width="17%" height="25">联系时间</td>
      <td class="td_bg" width="83%"><%=rs.getString(1)%></td>
    </tr>

	<tr>
      <td class="td_bg" width="17%" height="25">联系客户</td>
      <td class="td_bg" width="83%"><%=rs.getString(3)%></td>
    </tr>

	<tr>
      <td class="td_bg" width="17%" height="25">联系人</td>
      <td class="td_bg" width="83%"><%=rs.getString(4)%></td>
    </tr>
    
    <tr>
      <td class="td_bg" width="17%" height="25">联系类型</td>
      <td class="td_bg" width="83%"><%=rs.getString(5)%></td>
    </tr>
    
    <tr>
      <td class="td_bg" width="17%" height="25">联系方式</td>
      <td class="td_bg" width="83%"><%=rs.getString(6)%></td>
    </tr>
    
    <tr>
      <td class="td_bg" width="17%" height="25">记录时间</td>
      <td class="td_bg" width="83%"><%=rs.getString(7)%></td>
    </tr>
    
    <tr>
      <td class="td_bg" width="17%" height="25">记录人员</td>
      <td class="td_bg" width="83%"><%=rs.getString(8)%></td>
    </tr>
    
    <tr>
      <td class="td_bg" width="17%" height="25">我方人员</td>
      <td class="td_bg" width="83%"><%=rs.getString(9)%></td>
    </tr>
    


	<tr>
      <td class="td_bg" colspan="2"  height="25"><img src="icon/return.jpg" />
      <a href="http://localhost:8080/CRMS/linkRecordManager/all_connection.jsp" target="main">返回</a></td>
    </tr>
  </tbody>
  <%} %>
</table>
    
  </body>
</html>
