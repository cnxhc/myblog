<%@page import="java.util.Date"%>
<%@page import="com.xhc.blog.entity.TabPhoto"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>添加相册</title>
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
	<section class="content-wrap">
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
					<h4>添加相册</h4>
					<form class="form" action="addPhoto.html" method="post"
						enctype="multipart/form-data" id="useform">
						<div class="form-group">
							<label class=" control-label" for="content">名称：</label> <input
								type="text" name="Pname" class="form-control"
								required="required">
						</div>
						<div class="form-group">
							<input type="file" name="Ppic">
						</div>
						<div class="form-group">
							<label class=" control-label" for="content">详情：</label>
							<textarea name="Pinfo" class="form-control" rows="12"
								required="required">${photo.getPinfo()}</textarea>
						</div>
						<select name="Pclass">
							<option value="1">植物</option>
							<option value="2">手机</option>
							<option value="3">动物</option>
						</select>
						<div class="form-group">
							<button class="btn btn-default" type="submit">添加</button>
						</div>
					</form>
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