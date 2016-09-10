<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<%@taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<base href="<%=basePath%>">

<title>add.jsp</title>
<link rel="stylesheet" type="text/css" href="css/style.css" />
<link href='http://fonts.googleapis.com/css?family=Belgrano'
	rel='stylesheet' type='text/css'>
<!-- jQuery file -->
<script src="js/jquery.min.js"></script>
<script src="js/jquery.tabify.js" type="text/javascript" charset="utf-8"></script>
<script type="text/javascript">
	var $ = jQuery.noConflict();
	$(function() {
		$('#tabsmenu').tabify();
		$(".toggle_container").hide();
		$(".trigger").click(function() {
			$(this).toggleClass("active").next().slideToggle("slow");
			return false;
		});
	});
</script>
<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

</head>

<body>
	<div id="panelwrap">

		<div class="header">
			<div class="title">
				<a href="#"><h2>新闻管理系统</h2></a>
			</div>

			<div class="header_right">
				欢迎管理员, <a href="#" class="settings">设置</a>
			</div>

			<div class="menu">
				<ul>
					<li><a href="#" class="selected">主页</a></li>
					<li><a href="#">设置</a></li>
					<li><a href="#">增加新闻</a></li>
					<li><a href="#">修改新闻</a></li>
					<li><a href="#">搜索新闻</a></li>
					<li><a href="#">选项</a></li>
					<li><a href="#">管理设置</a></li>
					<li><a href="#">帮助</a></li>
				</ul>
			</div>

		</div>

		<div class="submenu">
			<ul>
				<li><a href="#" class="selected">设置</a></li>
				<li><a href="#">用户</a></li>
				<li><a href="#">新闻</a></li>
				<li><a href="#">搜索</a></li>
				<li><a href="#">管理</a></li>
			</ul>
		</div>
		<s:form action="insertAction" namespace="/news">
			<div class="center_content">
				<div id="right_wrap">
					<div id="tab1" class="tabcontent">
						<h2>增加新闻</h2>
						<div class="form">
							<div class="form_row">
								<s:textfield type="text" name="title"  label="新闻标题" class="form_input"/> 
							</div>
							<div class="form_row">
								<s:textfield type="text" name="source" label="新闻来源" class="form_input"/> 
							</div>
							<div class="form_row">
							 <s:select list="#{1:'科技',2:'体育',3:'社会'}" class="form_select"  label="发布时间" listKey="key" name="type" listValue="value" value="1" />
							</div>

							<div class="form_row">
								<s:textarea  name="content" label="内容" class="form_textarea"/>
							   
							</div>
							<div class="form_row">
							 <s:submit value="添加" class="form_submit"/>
							</div>
							<div class="clear"></div>
						</div>
					</div>
				</div>
			</div>
			<!-- end of right content-->
			<div class="clear"></div>
	</div>
	</s:form>
	<!--end of center_content-->
	<div class="footer"></div>
</body>
</html>
