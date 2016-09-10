<%@page import="java.sql.ResultSet"%>
<%@page import="com.sise.DBHelperControl.*"%>
<%@ page language="java" import="java.util.*" pageEncoding="GBK"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
request.setCharacterEncoding("GBK");
response.setCharacterEncoding("GBK");
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>查询结果</title>
    
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
		if (displayBar)
		{
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
	</script>

  </head>
  
  <body>
  	<%
  	String s1=request.getParameter("searchid");
  	String s2=request.getParameter("s1");
  	session.setAttribute("searchkey", s1);
  	System.out.println(s1+" "+s2);
  	String s5="select * from cm_link_record where "+s2+" like '%"+s1+"%'";
  	
  	//String s4="select * from cm_link_record where linkid like '%"+session.getAttribute("searchkey")
  			//+"%' or linktime like '%"+session.getAttribute("searchkey")+"%' or recordtime like '%"
  			//+session.getAttribute("searchkey")+"%' or client like '%"
  			//+session.getAttribute("searchkey")+"%' or linkman like '%"+session.getAttribute("searchkey")+"%'";
  	ResultSet rs1=DBHelper.query(s5);
  	%>
    
    
    <table class="table" cellspacing="1" cellpadding="2" width="99%" align="center" border="0">
    <tr>
      <th class="bg_tr" align="left" colspan="6" height="25">查询联系记录结果如下
        <input onClick="switchBar(this)" type="button" value="关闭左边管理菜单" name="SubmitBtn" />
     </th>
    </tr>

	<tr>
      <th class="bg_tr" align="left" height="25">编号</th>
	  <th class="bg_tr" align="left" height="25">联系时间</th>
      <th class="bg_tr" align="left" height="25">记录时间</th>
	  <th class="bg_tr" align="left" height="25">联系客户</th>
      <th class="bg_tr" align="left" height="25">负责联系人</th>
	  <th class="bg_tr" align="left" height="25">其他操作</th>
    </tr>

	<% 
	while(rs1.next()){
	%>	
    <tr>  
      <td class="td_bg" width="15%" height="23"><%=rs1.getString(2)%></td>
      <td class="td_bg" width="15%" height="23"><%=rs1.getString(1)%></td>
	  <td class="td_bg" width="15%" height="23"><%=rs1.getString(7)%></td>
	  <td class="td_bg" width="15%" height="23"><%=rs1.getString(3)%></td>
	  <td class="td_bg" width="20%" height="23"><%=rs1.getString(4)%></td>  	  
	  <td class="td_bg" width="20%" height="23">
	  <img src="icon/look.jpg"/>
	  <a href="http://localhost:8080/CRMS/linkRecordManager/detail.jsp?id=<%=rs1.getString(1)%>">查看</a>  
      <img src="icon/update.jpg"/>
      <a href="http://localhost:8080/CRMS/linkRecordManager/edit.jsp?id=<%=rs1.getString(1)%>">修改</a>
      <img src="icon/delete.png"/>
      <a onclick="return check()" href="servlet/link_record_del?id=<%=rs1.getString(1)%>">删除</a>
      </td>
    </tr>
   
    <%} %>
    </table>
  </body>
</html>
