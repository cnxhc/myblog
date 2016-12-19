<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>关于页面</title>
<link rel="stylesheet" type="text/css" href="css/style.css" />
<link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">
<link rel="stylesheet" href="https://cdn.static.runoob.com/libs/bootstrap/3.3.7/css/bootstrap.min.css">
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
	<c:if test="${ empty manager}">
		<nav class="navbar navbar-default" role="navigation">
			<div class="container-fluid">
				<div class="navbar-header">
					<a class="navbar-brand" href="index.html"><img alt="logo"
						src="image/logo.png" style="width: 80px, height:30px"></a>
				</div>

				<ul class="nav navbar-nav" id="mytab">
					<li><a href="index.html">首页</a></li>
					<li><a href="queryAndComment.html">博文搜索</a></li>
					<li><a href="photo.html">相册</a></li>
					<li class="active"><a href="about.html">关于</a></li>
				</ul>
				<ul class="nav navbar-nav navbar-right">
					<li><a href="login.html"><span
							class="glyphicon glyphicon-log-in"></span> 登录</a></li>
				</ul>

			</div>
		</nav>
		<!-- 顶部 -->
		<section class="content-wrap" style="height:80%">
			<div class="container">
				<div class="row">
					<div class="col-md-9 main-content">
					<article
						class="post tag-about-ghost tag-ghost-in-depth tag-zhu-shou-han-shu">
						<h3>个人博客系统</h3>
						<h4>主要功能</h4>
						<p>(1) 个人博客实现的前台功能：博客日历、博文搜索、评论、分类 相册浏览。</p>

						<p>(2)个人博客实现的后台功能：添加文章、修改文章、删除文章、浏览文章、添</p>
						<p>加照片、修改照片、删除照片、查询照片、添加评论、删除评论、管理员资料修改。</p>
					</article>
					</div>
					<aside class="col-md-3 sidebar">
						<div class="widget">
							<form name="date" method="post" action="">
								<div class="timemain">
									<div class="selectDate">
										<select name="selectMonth">
											<option value="1">一月</option>
											<option value="2">二月</option>
											<option value="3">三月</option>
											<option value="4">四月</option>
											<option value="5">五月</option>
											<option value="6">六月</option>
											<option value="7">七月</option>
											<option value="8">八月</option>
											<option value="9">九月</option>
											<option value="10">十月</option>
											<option value="11">十一月</option>
											<option value="12">十二月</option>
										</select> <em id="yearInfo"></em>
										<div class="btn">
											<img src="image/r_beforebtn.png" alt="" id="prevYear" /><img
												src="image/r_afterbtn.png" alt="" id="nextYear" />
										</div>
									</div>
									<div class="timeForm" id="timeForm"></div>
								</div>
							</form>
						</div>
					</aside>
				</div>
			</div>
		</section>
	</c:if>
	<c:if test="${ not empty manager}">


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
					<article
						class="post tag-about-ghost tag-ghost-in-depth tag-zhu-shou-han-shu">
						<h3>个人博客系统</h3>
						<h4>主要功能</h4>
						<p>(1) 个人博客实现的前台功能：博客日历、博文搜索、评论、分类 相册浏览。</p>

						<p>(2)个人博客实现的后台功能：添加文章、修改文章、删除文章、浏览文章、添</p>
						<p>加照片、修改照片、删除照片、查询照片、添加评论、删除评论、管理员资料修改。</p>
					</article>
					</div>
				</div>
			</div>
		</section>
	</c:if>
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