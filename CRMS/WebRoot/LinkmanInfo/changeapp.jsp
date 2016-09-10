<%@page contentType="text/html;charset=GBK"%>
<%@page import="java.sql.*" %>
<jsp:useBean id="db" class="com.app.DBHelper" scope="page"/>
<%
request.setCharacterEncoding("GBK");
response.setCharacterEncoding("GBK");
 %>
<% 
boolean mark=true;
 String mess="";
  String lid=request.getParameter("lid");
  String name=request.getParameter("name");
  String sex=request.getParameter("sex");
  String birth=request.getParameter("birth");
  String depart=request.getParameter("depart");
  String if_main=request.getParameter("if_main");
  String ocall=request.getParameter("ocall");
  String lcall=request.getParameter("call");
  String email=request.getParameter("email");
  String ladd=request.getParameter("add");
  String msn=request.getParameter("msn");
  String client=request.getParameter("client");
 
if(lid==null||lid.equals(""))
{
mark=false;
mess="<li>请输入<b>客户编号</b></li>";
System.out.print("ok");
 }
  if(mark){
String sql="select *from cm_linkman where lid='"+lid+"'";
ResultSet rs=db.getAllRs();
if(!rs.next())
{mess="输入的联系人编号无效";}
else
{
String sql1="update cm_linkman set name='"+name+"',sex='"+sex+"',birth='"+birth+"',depart='"+depart+"',if_main='"+if_main+"',ocall='"+ocall+"',lcall='"+lcall+"',email='"+email+"',ladd='"+ladd+"',msn='"+msn+"',client='"+client+"' where lid='"+lid+"'";
 
int rs2=db.getChange(sql1);
System.out.print(sql1);
db.closed();
response.sendRedirect("select.jsp");}
}
%>

<html>
  <head>
      <link rel="stylesheet" type="text/css" href="css/style.css">
    <title>修改后</title>	
  </head>
  <body>
    <table class="table" cellspacing="1" cellpadding="2" width="99%" align="center" 
border="0">
  
   </table>
<tr>
      <td class="td_bg" colspan="2"  height="25"><img src="icon/return.jpg" /><a href="select.jsp" target="main">[返回]</a></td>
    </tr>

  </body>
</html>
