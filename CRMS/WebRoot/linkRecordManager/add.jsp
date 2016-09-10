<%@page import="java.text.SimpleDateFormat"%>
<%@ page language="java" import="java.util.*" pageEncoding="gbk"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>添加联系记录</title>
    
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
	 
	 function cheForm(){
			var t1=document.myform.t1.value;
			if(t1==""){
				alert("联系客户不能为空");
				return false;
			}
			
			var t2=document.myform.t2.value;
			if(t2==""){
				alert("联系人不能为空");
				return false;
			}
			
			else{
				alert("添加成功！");
				return true;
			}
				
			
	 }
						
	//-->
	</SCRIPT>

  </head>
  
  <body>
  
  	<form action="servlet/link_record_add" method="post" name="myform" onsubmit="return cheForm()">
  	<% 
  	Date d=new Date();
  	SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");  
    String dateNowStr = sdf.format(d);  
    String [] s3=dateNowStr.split(" ");
  	
  	request.setCharacterEncoding("GBK");
  	response.setCharacterEncoding("GBK");
  	%>
  	
    <table class="table" cellspacing="1" cellpadding="2" width="99%" align="center" border="0">
  <tbody>   
    <tr>
      <th class="bg_tr" align="left" colspan="2" height="25"><img src="icon/insert.jpg">添加联系记录<input onClick="switchBar(this)" type="button" value="关闭左边管理菜单" name="SubmitBtn" /></th>
    </tr>
    <tr>
      <td class="td_bg" width="17%" height="25">联系客户<span class="TableRow2"></span></td>
      <td width="83%" class="td_bg"><input type="text" name="t1" /></td>
    </tr>
    <tr>
      <td class="td_bg" height="25">联系人</td>
      <td class="td_bg"><input type="text" name="t2" /></td>
    </tr>
    <tr>
      <td class="td_bg" width="17%" height="25">联系时间</td>
      <td class="td_bg" width="83%"><input type="text" name="t3" /> </td>
    </tr>
	<tr>
      <td class="td_bg" width="17%" height="25">联系类型</td>
      <td class="td_bg" width="83%"><select name="s1"><option value="商谈">商谈</option>
      <option value="讨论计划">讨论计划</option><option value="续约">续约</option></select></td>
    </tr>
	<tr>
      <td class="td_bg" width="17%" height="25">联系方式</td>
      <td class="td_bg" width="83%"><select name="s2"><option value="面谈">面谈</option><option value="电联">电联</option>
      <option value="网络">网络</option></select> </td>
    </tr>
	<tr>
      <td class="td_bg" width="17%" height="25">记录时间<span class="TableRow2"></span></td>
      <td width="83%" class="td_bg"><input type="text" name="t4" value="<%=s3[0]%>"/></td>
    </tr>
    <tr>
      <td class="td_bg" width="17%" height="25">记录人员<span class="TableRow2"></span></td>
      <td width="83%" class="td_bg"><input type="text" name="t5" /></td>
    </tr>
    <tr>
      <td class="td_bg" width="17%" height="25">我方人员<span class="TableRow2"></span></td>
      <td width="83%" class="td_bg"><input type="text" name="t6" /></td>
    </tr>
	<tr>
      <td class="td_bg" width="17%" colspan="2"  height="25"><input type="submit" value="添加"/><input  type="reset" value="重置"/></td>
    </tr>

  	</tbody>
	</table>
	</form>
	
	
	
	
  </body>
</html>
