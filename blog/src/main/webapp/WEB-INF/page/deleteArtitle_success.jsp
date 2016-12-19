<%@page import="java.util.Date"%>
<%@page import="com.xhc.blog.entity.TabPhoto"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>删除文章成功</title>
<link rel="stylesheet" type="text/css" href="css/style.css" />
<script type="text/javascript" src="js/date.js">
	
</script>
</head>
<body>
	<div class="header">
		<div class="logo">
			<img alt="logo" src="image/logo.png" style="width:80px,height:30px">
		</div>
		<div class="nav">
			<ul>
				<li><a href="manager.html">首页</a></li>
				<c:if test="${ empty manager}">
					<li><a href="login.html">登录</a></li>
				</c:if>
				<c:if test="${ not empty manager}">
					<li><a href="logout.html">安全退出</a></li>
				</c:if>
				<li><a href="about.html">关于</a></li>
			</ul>
		</div>
	</div>
	<!-- 顶部 -->
	<div class="article">
		<!-- 中间 -->
		<div class="middle">
			<div class="inner">
				<div class="middle_content">
					<h4>删除文章成功</h4>
					
				</div>
			</div>
		</div>
		<div class="left">
			<div id="content">
				<ul>
					<li><a href="managerArtitle.html">文章管理</a></li>
					<li><a href="managerPhoto.html">相册管理</a></li>
					<li><a href="managerUser.html">用户管理</a></li>
				</ul>
			</div>
		</div>

	</div>
	<div class="bottom">个人博客系统</div>
	<!-- 底部-->

</body>
</html>