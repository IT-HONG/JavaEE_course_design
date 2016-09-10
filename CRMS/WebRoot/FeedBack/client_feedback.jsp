<%@ page language="java" import="java.util.*" pageEncoding="GBK"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'client_feedback.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<link href="css/form.css" rel="stylesheet" type="text/css">
	<link href="css/botton.css" rel="stylesheet" type="text.css">

  </head>
  
  <body>
  	<!-- 用户反馈页面 -->
  	<div align="center">
  		<img src="imgs/main.jpg"/><br><br>
  		<img src="imgs/feedback.jpg"/><br>
  		<font face="微软雅黑" size="2px"><p align="center">如果您在使用本系统的过程中遇到疑问，或者有任何的意见或者建议，欢迎随时向我们反馈。</p>
<p>我们会尽快回答您的问题，并依据您的反馈，不断完善桉树。</p>
<p>好的建议我们采纳之后会给您适当的奖励，留下您的联系方式</p></font>
  	</div>
    <form action="servlet/FeedbackCheck">
    <table class="table" cellspacing="1" cellpadding="2" width="99%" align="center" border="0">
    	<tbody>
    		<tr>
    			<td class="td_bg" width="17%" height="25" align="right"><font face="微软雅黑" size="3px">姓名：</font></td>
    			<td width="83%" class="td_bg"><input type="text" name="name"></td>
    		</tr>
    		<tr>
    			<td class="td_bg" width="17%" height="25" align="right"><font face="微软雅黑" size="3px">联系电话：</font></td>
    			<td width="83%" class="td_bg"><input type="text" name="phone"></td>
    		</tr>
    		<tr>
    			<td class="td_bg" width="25%" height="25" align="right"><font face="微软雅黑" size="3px">邮箱：</font></td>
    			<td width="83%" class="td_bg"><input type="text" name="mail"></td>
    		</tr>
    		<tr>
    			<td class="td_bg" width="30%" height="25" align="right"><font face="微软雅黑" size="3px">反馈主题：</font></td>
    			<td width="83%" class="td_bg"><input type="text" name="theme"></td>
    		</tr>
    		<tr>
    			<td class="td_bg" width="17%" height="25" align="right"><font face="微软雅黑" size="3px">反馈类型：</font></td>
    			<td width="83%" class="td_bg"><select name="type"><option value="服务">服务</option><option value="产品">产品</option><option value="其他">其他</option></select></td>
    		</tr>
    		<tr>
    			<td class="td_bg" width="17%" height="25" align="right"><font face="微软雅黑" size="3px">反馈内容：</font></td>
    			<td width="99%"><textarea  name="text" id="text" width="100%" rows="10" cols="80" placeholder="点击输入，您的意见是我们最大的动力"></textarea></td>
    		</tr>
    		<tr>
    			<td colspan="2" align="center"><input type="submit" class="myButton" value="提交"></td>
    		</tr>
    	</tbody>
    </table>
    </form>
  </body>
</html>
