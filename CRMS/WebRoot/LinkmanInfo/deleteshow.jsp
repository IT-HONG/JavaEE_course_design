<%@page contentType="text/html;charset=GBK"%>
<%@page import="java.sql.*" %>
<jsp:useBean id="db" class="com.app.DBHelper" scope="page"/>

<html>
  <head>
     <title>删除记录</title>
   <link href="css/css.css" rel="stylesheet" type="text/css">
  </head>

  <% 

boolean mark=true;
String mess="";
String lid=request.getParameter("lid");

if(mark){
String sql="delete from cm_linkman where lid="+lid+"";
int num=db.delete(sql);
db.closed();
if(num>0){
response.sendRedirect("select.jsp");
System.out.print("hello");}
else 
mess="删除失败";
}
%>
  
 
  <body>
  <center>
  <table  width="100%" height="100" border="1" cellpadding="0" cellspacing="0">
   <td colspan="13" height="25"><b>温馨提示!</b></td>
   </tr>
   <tr>
   <td align="center" colspan="13" height="25"><%=mess %></td>
   </tr>
   </table>
  <tr>
      <td class="td_bg" colspan="2"  height="25"><img src="icon/return.jpg" /><a href="select.jsp" target="main">[返回]</a></td>
    </tr>
  </center>
  </body>
</html>
