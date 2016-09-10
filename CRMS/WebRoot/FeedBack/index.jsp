<%@ page language="java" import="java.util.*" pageEncoding="GBK"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>index.jsp</title>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<script language="javascript" src="js/AjaxRequest.js"></script>
	<script type="text/javascript">
	//错误处理的方法
	function onerror() {
		alert("您的操作有误！");
	}
	//实例化Ajax对象的方法
	function getMsg() {
		var loader = new net.AjaxRequest("FeedBack/getMsg.jsp?nocache="
				+ new Date().getTime(), deal_getInfo, onerror, "GET");
	}
	//回调函数
	function deal_getInfo() {
		document.getElementById("showInfo").innerHTML = this.req.responseText;
	}
	window.onload=function(){
		getMsg();							//调用getInfo()方法获取新闻信息
		window.setInterval("getMsg()", 60000);	//每隔10分钟调用一次getInfo()方法
	}
</script>
  </head>
  
  <body>
  	 <!-- 管理员点击“反馈”后进入的反馈标题界面 -->
     <TABLE id=table40 
                                style="BORDER-COLLAPSE: collapse" height=60 
                                cellPadding=0 width="99%" border=0>
                                
                                <TR>
                                <TD width=24>　</TD>
                                <TD style="border: 1px solid black;height: 30px; width:200px;padding: 5px;">
                                
	<div id="showInfo" style="color: red;"></div>

		
                                
                                
                               </TD></TR></TABLE>
  </body>
</html>
