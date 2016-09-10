<%@page contentType="text/html;charset=GBK"%>
<%
request.setCharacterEncoding("GBK");
response.setCharacterEncoding("GBK");
 %>
<html>
 <head>
 <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
   <title>加入数据</title>
<link href="<%=request.getContextPath()%>/css/css.css" rel="stylesheet" type="text/css">
  </head>
  <script language="javascript">
  function check(){
  if(insertform.Sname.value==null||insertform.Sname.value==""){
  alert("请输入姓名");
  insertform.Sname.focus();
  return false;
  }
  }
  </script>
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

//-->
</SCRIPT>

 

  
  <body>
  
  <form action="insert.jsp" name="insertform">
  <table class="table" cellspacing="1" cellpadding="2" width="99%" align="center" 
border="0">
  <tr>
      <th class="bg_tr" align="left" colspan="2" height="25"><img src="<%=request.getContextPath()%>/icon/insert.jpg">添加联系人信息<input onClick="switchBar(this)" type="button" value="关闭左边管理菜单" name="SubmitBtn" /></th>
    </tr>
  
  <tr>
   <td class="td_bg" width="17%" height="25"> 联系人编码:<span class="TableRow2"></span></td>

  <td class="td_bg" width="83%"><input type="text" name="lid" size="20"></td>
  </tr>
  <tr>
  <td class="td_bg" width="17%" height="25"> 联系人姓名:<span class="TableRow2"></span>
  <td class="td_bg" width="83%"><input type="text" name="name" size="10"></td>
  </tr>
  
  <tr>
  <td class="td_bg" height="25">性别</td>
 <td>
 <select name="sex">
 <option value="男">男</option><option value="女">女</option>
 </select> 
 </td>
  </tr>
  
  <tr>
   <td class="td_bg" width="17%" height="25"> 生日:</td>
  <td class="td_bg" width="83%"><input type="text" name="birth" ></td>
  </tr>
  <tr>
  <td class="td_bg" width="17%" height="25">部门:</td>
  <td class="td_bg" width="83%"><input type="text" name="depart" ></td>
  </tr>
  <tr>
  <td class="td_bg" width="17%" height="25"> 是否为主联系人:</td>
  <td class="td_bg" width="83%"><input type="text" name="if_main" ></td>
  </tr>
  <tr>
 <td class="td_bg" width="17%" height="25">办公电话:</td>
  <td class="td_bg" width="83%"><input type="text" name="ocall" ></td>
  </tr>
  <tr>
 <td class="td_bg" width="17%" height="25"> 电话:</td>
  <td class="td_bg" width="83%"><input type="text" name="lcall" ></td>
  </tr>
    <tr>
  <td class="td_bg" width="17%" height="25">电子邮件:</td>
  <td class="td_bg" width="83%"><input type="text" name="email" ></td>
  </tr>
    <tr>
   <td class="td_bg" width="17%" height="25"> 地址:</td>
  <td class="td_bg" width="83%"><input type="text" name="ladd" ></td>
  </tr>
    <tr>
  <td class="td_bg" width="17%" height="25">MSN:</td>
  <td class="td_bg" width="83%"><input type="text" name="msn" ></td>
  </tr>
    <tr>
   <td class="td_bg" width="17%" height="25"> 所属客户:</td>
   <td class="td_bg" width="83%"><input type="text" name="client" /></td>
  </tr>
   

  <tr>
      <td class="td_bg" width="17%" colspan="2"  height="25"><input type="submit" value="添加"/><input type="reset" value="重置"/></td>
    </tr>

 </table>
 <tr>
      <td class="td_bg" colspan="2"  height="25"><img src="<%=request.getContextPath()%>/icon/return.jpg" /><a href="select.jsp" target="main">[返回]</a></td>
    </tr>



  

  </body>
</html>
