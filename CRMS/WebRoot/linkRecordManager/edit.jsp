<%@page import="java.sql.ResultSet"%>
<%@page import="com.sise.DBHelperControl.*"%>
<%@ page language="java" import="java.util.*" pageEncoding="GBK"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>联系记录修改</title>
    
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
		else{
		parent.frame.cols="195,*";
		displayBar=true;
		obj.value="关闭左边管理菜单";
		}
	}

	function fullmenu(url){
		if (url==null) {url = "admin_left.asp";}
		parent.leftFrame.location = url;
	}
	
	function cheForm(){
			
				alert("修改成功！");
				return true;							
	 }
	
	//-->
	</SCRIPT>

  </head>
  
  <body>
  <%
    String ss=request.getParameter("id");
  	session.setAttribute("id", ss);
    String s1="select * from cm_link_record where linkid='"+ss+"'";
    ResultSet rs=DBHelper.query(s1);
    %>
    <form action="servlet/link_record_edit" method="post" onsubmit="return cheForm();">
    <table class="table" cellspacing="1" cellpadding="2" width="99%" align="center" border="0">
  <tbody>
  
  <% 
  	request.setCharacterEncoding("GBK");
	response.setCharacterEncoding("GBK");
  while(rs.next()){
  %>
  
    <tr>
      <th class="bg_tr" align="left" colspan="2" height="25">修改编号&nbsp;&nbsp;<%=rs.getString(2)%>&nbsp;&nbsp;记录信息
      <input onClick="switchBar(this)" type="button" value="关闭左边管理菜单" name="SubmitBtn" /><img src="icon/return.jpg" />
      <a href="http://localhost:8080/CRMS/linkRecordManager/all_connection.jsp" target="main">返回</a></th>
    </tr>



    <tr>
      <td class="td_bg" width="17%" height="25">联系类型<span class="TableRow2"></span></td>
      <td width="83%" class="td_bg"><input type="text" name="t1" value="<%=rs.getString(5)%>"/></td>
    </tr>


	<tr>
      <td class="td_bg" width="17%" height="25">联系方式</td>
      <td class="td_bg" width="83%"><input type="text" name="t2" value="<%=rs.getString(6)%>"/></td>
    </tr>

	<tr>
      <td class="td_bg" width="17%" height="25">记录时间</td>
      <td class="td_bg" width="83%"><input type="text" name="t3" value="<%=rs.getString(7)%>"/></td>
    </tr>


	<tr>
      <td class="td_bg" width="17%" height="25">记录人员<span class="TableRow2"></span></td>
      <td class="td_bg" width="83%"><input type="text" name="t4" value="<%=rs.getString(8)%>"/></td>
    </tr>
    
    <tr>
      <td class="td_bg" width="17%" height="25">我方人员<span class="TableRow2"></span></td>
      <td class="td_bg" width="83%"><input type="text" name="t5" value="<%=rs.getString(9)%>"/></td>
    </tr>

	<tr>
      <td class="td_bg" width="17%" colspan="2"  height="25">
      
      <input type="submit" value="修改"/><input type="reset" value="重置"/></td>
    </tr>

  </tbody>
  <%} %>
</table>
</form>
  </body>
</html>
