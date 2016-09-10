<%@page import="javax.servlet.jsp.tagext.TryCatchFinally"%>
<%@page import="java.sql.ResultSet"%>
<%@ page  import="java.sql.*" pageEncoding="GBK"%>
<jsp:useBean id="mydb" class="com.app.DBHelper" scope="page"/>
<html>
<head>
    <title>数据查询</title>
    <link href="<%=request.getContextPath()%>/css/css.css" rel="stylesheet" type="text/css">
	</head>
  <%
  ResultSet rs=null;
  boolean mark=true;
  String mess="";
  String subsqlvalue=request.getParameter("subsqlvalue");//上一个页面的参数
  String subsql=request.getParameter("subsql");
  if(subsql==null||subsql.equals("")){//判断为空时输出
  mark=false;
  mess+="<li>请输入<b>查询条件!</b></li>";
  }

  if(subsqlvalue==null||subsqlvalue.equals("")){
  mark=false;
  mess+="<li>请输入<b>查询的值！</b></li>";
  }
  if(mark)
  {
  if(subsql.equals("lid")){
  try{
  Integer.parseInt(subsqlvalue);
  }catch(Exception e){mark=false;mess="输入的<b>联系人编码</b>不是数字!";}
 }

 }

 
  if(mark)
  mess="查询结果如下";
   %>
 <body>
  <table  width="100%" height="100" border="1" cellpadding="0" cellspacing="0">
  <tr>
   <td colspan="13" height="50" align="center">温馨提示!</td>
   </tr>
   <tr>
   <td colspan="13" height="50" align="center"><%=mess %></td>
   </tr>
   <tr bgcolor="lightgrey" height="20">
   <td class="td_bg" width="5%" height="45"><h3>联系人编码</h3></td>
    <td class="td_bg" width="8%" height="45"><h3>联系人姓名</h3></td>
    <td class="td_bg" width="8%" height="45"><h3>性别</h3></td>
    <td class="td_bg" width="8%" height="45"><h3>生日</h3></td>
    <td class="td_bg" width="8%" height="45"><h3>部门</h3></td>
    <td class="td_bg" width="8%" height="45"><h3>是否为主联系人</h3></td>
    <td class="td_bg" width="8%" height="45"><h3>办公电话</h3></td>
    <td class="td_bg" width="8%" height="45"><h3>电话</h3></td>
   <td class="td_bg" width="8%" height="45"><h3>电子邮件</h3></td>
    <td class="td_bg" width="8%" height="45"><h3>地址</h3></td>
   <td class="td_bg" width="8%" height="45"><h3>MSN</h3></td>
    <td class="td_bg" width="8%" height="45"><h3>所属客户</h3></td>    
  </tr>
  <% 
  if(mark){
  rs=mydb.getPartRs(subsql,subsqlvalue);
  System.out.print(subsql);
  if(!rs.next()){
  %>	
  <tr>
   <td class="td_bg" width="20%" height="45" colspan="5">没有记录提示</td>
  </tr>
  <%
  }
  else{
  rs.previous();
  while(rs.next()){
      %>
     
      <tr>
      <td class="td_bg" width="5%" height="35"><h3><%=rs.getString("lid") %></h3></td>
     <td class="td_bg" width="8%" height="35"><h3><%=rs.getString("name") %></h3></td>
     <td class="td_bg" width="8%" height="35"><h3><%=rs.getString("sex") %></h3></td>
     <td class="td_bg" width="8%" height="35"><h3><%=rs.getString("birth") %></h3></td>
     <td class="td_bg" width="8%" height="35"><h3><%=rs.getString("depart") %></h3></td>
     <td class="td_bg" width="8%" height="35"><h3><%=rs.getString("if_main") %></h3></td>
     <td class="td_bg" width="8%" height="35"><h3><%=rs.getString("ocall") %></h3></td>
     <td class="td_bg" width="8%" height="35"><h3><%=rs.getString("lcall") %></h3></td>
     <td class="td_bg" width="8%" height="35"><h3><%=rs.getString("email") %></h3></td>
     <td class="td_bg" width="8%" height="35"><h3><%=rs.getString("ladd") %></h3></td>
     <td class="td_bg" width="8%" height="35"><h3><%=rs.getString("msn") %></h3></td>
     <td class="td_bg" width="8%" height="35"><h3><%=rs.getString("client") %></h3></td>
   </tr>
   
     
      <%
  }
   }
   mydb.closed();
   }
    %>
    </table>
         <tr>
      <td class="td_bg" colspan="2"  height="25"><img src="<%=request.getContextPath()%>/icon/return.jpg" /><a href="select.jsp" ">[返回]</a></td>
    </tr>
   </body>
</html>
