<%@page import="java.sql.ResultSet"%>
<%@page import="com.sise.DBHelperControl.DBHelper"%>
<%@ page language="java" import="java.util.*" pageEncoding="gbk"%>
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
    
    <title>My JSP 'ClientDisp.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<link href="css/css.css" rel="stylesheet" type="text/css">


  </head>
	  
<%
	String id=request.getParameter("id");
	String sql="select * from cm_client where cid='"+id+"'";
	ResultSet rs=DBHelper.query(sql);
	if(rs.next()){
 %>
  <body>
	<form>

<table class="table" cellspacing="1" cellpadding="2" width="99%" align="center" 
border="0">
  <tbody>
    <tr>
      <th class="bg_tr" align="left" colspan="2" height="25"><img src="icon/insert.jpg">客户信息</th>
    </tr>

    <tr>
      <td class="td_bg" width="17%" height="25">客户编号<span class="TableRow2"></span></td>
      <td width="83%" class="td_bg"><%=rs.getString(1) %></td>
    </tr>
    
    <tr>
      <td class="td_bg" width="17%" height="25">客户姓名<span class="TableRow2"></span></td>
      <td width="83%" class="td_bg"><%=rs.getString(2) %></td>
    </tr>

    <tr>
      <td class="td_bg" height="25">地址</td>
      <td width="83%" class="td_bg"><%=rs.getString(3) %></td>
    </tr>

    <tr>
      <td class="td_bg" width="17%" height="25">电话</td>
      <td class="td_bg" width="83%"><%=rs.getString(4) %></td>
    </tr>

	<tr>
      <td class="td_bg" width="17%" height="25">电子邮件</td>
      <td class="td_bg" width="83%"><%=rs.getString(5) %></td>
    </tr>

	<tr>
      <td class="td_bg" width="17%" height="25">登记时间</td>
      <td class="td_bg" width="83%"><%=rs.getString(6) %></td>
    </tr>
    
	<tr>
      <td class="td_bg" width="17%" height="25">下次联系时间</td>
      <td class="td_bg" width="83%"><%=rs.getString(7) %></td>
    </tr>
    
	<tr>
      <td class="td_bg" width="17%" height="25">所属人员</td>
      <td class="td_bg" width="83%"><%=rs.getString(8) %><td>
    </tr>
    
	<tr>
      <td class="td_bg" width="17%" height="25">客户等级</td>
      <td class="td_bg"><%=rs.getString(9) %></td>
    </tr>

	<tr>
      <td class="td_bg" width="17%" height="25">所属行业</td>
      <td class="td_bg"><%=rs.getString(10) %></td>
    </tr>

	<tr>
      <td class="td_bg" width="17%" height="25">城市</td>
      <td width="83%" class="td_bg"><%=rs.getString(11) %></td>
    </tr>
	
	<tr>
      <td class="td_bg" width="17%" height="25">省份</td>
      <td width="83%" class="td_bg"><%=rs.getString(12) %></td>
    </tr>
    
	<tr>
      <td class="td_bg" width="17%" height="25">开户行</td>
      <td width="83%" class="td_bg"><%=rs.getString(13) %></td>
    </tr>

	<tr>
      <td class="td_bg" width="17%" height="25">银行账号</td>
      <td width="83%" class="td_bg"><%=rs.getString(14) %></td>
    </tr>
	
	<tr>
      <td class="td_bg" width="17%" height="25">信用</td>
      <td width="83%" class="td_bg"><%=rs.getString(15) %></td>
    </tr>
	
	<tr>
      <td class="td_bg" width="17%" height="25">积分</td>
      <td width="83%" class="td_bg"><%=rs.getString(16) %></td>
    </tr>
	
	<tr>
      <td class="td_bg" width="17%" colspan="2"  height="25"><input type="button" value="确定" onclick="javascript: window.close();"/></td>
    </tr>

  </tbody>
</table>
</form>
  </body>
  <%
  }
  rs.close();
   %>
</html>
