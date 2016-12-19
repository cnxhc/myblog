<%@page import="java.util.Date"%>
<%@page import="com.xhc.blog.entity.TabArtitle"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>阅读博文</title>
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
				<a class="navbar-brand" href="index.html"><img alt="logo"
					src="image/logo.png" style="width: 80px, height:30px"></a>
			</div>
			<ul class="nav navbar-nav" id="mytab">
				<li class="active"><a href="index.html">首页</a></li>
				<li><a href="queryAndComment.html">博文搜索</a></li>
				<li><a href="photo.html">相册</a></li>
				<li><a href="about.html">关于</a></li>
			</ul>
			<ul class="nav navbar-nav navbar-right">
				<li><a href="login.html"><span
						class="glyphicon glyphicon-log-in"></span> 登录</a></li>
			</ul>
		</div>
	</nav>
	<!-- 顶部 -->
	<section class="content-wrap">
		<div class="container">
			<div class="row">
				<div class="col-md-8 main-content" >
					<!-- 顶部 -->
					<article
						class="post tag-about-ghost tag-ghost-in-depth tag-zhu-shou-han-shu">
						<h4>阅读博文</h4>
						<div class="post-head">
							<h3 class="post-title"><strong>标题：</strong>${artitle.getAtitle()}</h3>
							<div class="post-meta">
								<strong>发布时间：</strong>
								<time class="time">
									<fmt:formatDate value="${artitle.getAdate()}"
										pattern="yyyy-MM-dd" />
								</time>
							</div>
						</div>
						<div class="post-content">
							<p><strong>评论的内容：</strong>${artitle.getAcontent()}</p>
						</div>
						<h3>你可以发表评论：</h3>
							<form class="form" action="comment.html" method="post">
								<input type="hidden" name="Cid" value="${artitle.getId()}">
								<div class="form-group">
									<label for="name">评论人昵称：</label>
									<input name="Cname" type="text" class="form-control" required="required" placeholder="请输入昵称"><br>
									<label for="name">评论内容：</label>
									<textarea name="Ccontent" class="form-control" rows="4" required="required" placeholder="评论内容"></textarea>
									<button type="submit" class="btn btn-default">提交</button>
								</div>
							</form>
					</article>
				</div>
				<aside class="col-md-4 sidebar">
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
