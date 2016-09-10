<%@page import="com.sise.po.News"%>
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    <link rel="stylesheet" type="text/css" href="css/style.css" />
<link href='http://fonts.googleapis.com/css?family=Belgrano' rel='stylesheet' type='text/css'>
<!-- jQuery file -->
<script src="js/jquery.min.js"></script>
<script src="js/jquery.tabify.js" type="text/javascript" charset="utf-8"></script>
<script type="text/javascript">
    function delcfm() { 
        if (!confirm("确认要删除？")) { 
            window.event.returnValue = false; 
        } 
    } 

var $ = jQuery.noConflict();
$(function() {
$('#tabsmenu').tabify();
$(".toggle_container").hide(); 
$(".trigger").click(function(){
	$(this).toggleClass("active").next().slideToggle("slow");
	return false;
});
});
</script>
    <title>My JSP 'index.jsp' starting page</title>
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
    <div class="title"><a href="#"><h2>新闻管理系统</h2></a></div>
    
    <div class="header_right">欢迎管理员, <a href="#" class="settings">设置</a></div>
    
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
                    
    <div class="center_content">  
 
    <div id="right_wrap">
    <div id="right_content">             
    <h2>查看新闻</h2>            
<table id="rounded-corner">
    <thead>
    	<tr>
        	<th></th>
            <th>标题</th>
            <th>内容</th>
            <th>发布时间</th>
            <th>来源</th>
            <th>类型</th>
            <th>修改</th>
            <th>删除</th>
        </tr>
    </thead>
      
</table>
<div class="form_sub_buttons">
	<a href="#" class="button green">选中修改</a>
    <a href="#" class="button red">选中删除</a>
    </div>
    </div> 
     </div>
     </div><!-- end of right content-->
                     
                    
    <div class="sidebar" id="sidebar">
    <h2>功能菜单</h2>
    
        <ul>
            <li><a href="http://localhost:8080/JavaEE_course_design/news/allNewsAction.action" class="selected">查看所有新闻</a></li>
            <li><a href="http://localhost:8080/JavaEE_course_design/news/findInuputAction.action">搜索</a></li>
            <li><a href="http://localhost:8080/JavaEE_course_design/news/addInputAction.action">添加新闻</a></li>
            <li><a href="#">修改新闻</a></li>
        </ul>
    </div>             
    
    
    <div class="clear"></div>
    </div> <!--end of center_content-->
    
    <div class="footer"></div>
  </body>
</html>
