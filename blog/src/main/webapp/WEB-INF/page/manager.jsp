<%@page import="java.util.Date"%>
<%@page import="com.xhc.blog.entity.TabArtitle"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>管理博客</title>
<link rel="stylesheet" type="text/css" href="css/style.css" />
<link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">
<script type="text/javascript" src="js/jquery-3.0.0.min.js"></script>
<script type="text/javascript" src="js/bootstrap.min.js"></script>
<script type="text/javascript" src="js/date.js"></script>
<script type="text/javascript">
	$(document).ready(function() {
		$("#mytab li").each(function(index) {
			var liNode = $(this);
			var oldLi = $("#mytab li.active");
			$(this).mouseover(function() {
				oldLi.removeClass("active");
				liNode.addClass("active");
			}).mouseout(function() {
				liNode.removeClass("active");
				oldLi.addClass("active");
			})
		})

	});
</script>
</head>
<body>
		<nav class="navbar navbar-default" role="navigation">
			<div class="container-fluid">
				<div class="navbar-header">
					<a class="navbar-brand" href="manager.html"><img alt="logo"
						src="image/logo.png" style="width: 80px, height:30px"></a>
				</div>

				<ul class="nav navbar-nav" id="mytab">
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
		</nav>
	<!-- 顶部 -->
	<section class="content-wrap" style="height:80%">
		<div class="container">
			<div class="row">
				<div class="col-md-3">
					<ul class="manager-list">
						<li class="item"><a class="title" href="managerArtitle.html">文章管理</a></li>
						<li class="item"><a class="title" href="managerPhoto.html">相册管理</a></li>
						<li class="item"><a class="title" href="managerUser.html">用户管理</a></li>
					</ul>
				</div>
				<div class="col-md-9 main-content">
					<h2>欢迎使用！</h2>
				</div>
			</div>
		</div>
	</section>
	<!-- 底部-->
	<footer class="main-footer">
		<div class="container">
			<div class="row">
				<div class="col-md-4">
					<div class="widget">
						<h4>个人博客系统</h4>
						<div class="content recent-post">
							<div class="recent-single-post">
								<div class="date">2016年10月6日</div>
							</div>
						</div>
					</div>
				</div>
				<div class="col-md-4">
					<div class="widget">
						<h4>个人博客系统</h4>
						<div class="content recent-post">
							<div class="recent-single-post">
								<div class="date">2016年10月6日</div>
							</div>
						</div>
					</div>
				</div>
				<div class="col-md-4">
					<div class="widget">
						<h4>个人博客系统</h4>
						<div class="content recent-post">
							<div class="recent-single-post">
								<div class="date">2016年10月6日</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</footer>

</body>
</html>