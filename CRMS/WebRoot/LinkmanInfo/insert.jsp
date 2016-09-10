<%@page contentType="text/html;charset=GBK"%>
<jsp:useBean id="db2" class="com.app.DBHelper" scope="page"/>
<% 
request.setCharacterEncoding("GBK");
response.setCharacterEncoding("GBK");
%>
<html>
  <head>
    <title>录入</title>
    <link rel="stylesheet" type="text/css" href="css/style.css">
  </head>
  <%
  String mess="";
  String lid=request.getParameter("lid");
  String name=request.getParameter("name");
  String sex=request.getParameter("sex");
  String birth=request.getParameter("birth");
  String depart=request.getParameter("depart");
  String if_main=request.getParameter("if_main");
  String ocall=request.getParameter("ocall");
  String call=request.getParameter("lcall");
  String email=request.getParameter("email");
  String add=request.getParameter("ladd");
  String msn=request.getParameter("msn");
  String client=request.getParameter("client");
 
  boolean mark=true;
  if(mark){
  
  String sql="insert into cm_linkman values("+request.getParameter("lid")+",'"+name+"','"+sex+"','"+birth+"','"+depart+"','"+if_main+"','"+ocall+"','"+call+"','"+email+"','"+add+"','"+msn+"','"+client+"')";
 
  int i=db2.insert(sql);
  db2.closed();
  if(i>0){
  response.sendRedirect("show.jsp");} 
  else mess="录入失败!";
  }
   %>
  <body>
   <center>
   <table width="300" height="70" cellspacing="0" border="1" bordercolor="black"
   bordercolorlight="black" bordercolordark="white" style="margin-top:100">
   <tr bgcolor="lightgrey" >
   <td colspan="5" align="center">温馨提示!</td>
   </tr>
   <tr>
  
   </tr>
   <tr>
      <td class="td_bg" colspan="2"  height="25"><img src="<%=request.getContextPath()%>/icon/return.jpg" /><a href="select.jsp" target="main">[返回]</a></td>
    </tr>
   </table>
  
   </center>
  </body>
</html>
