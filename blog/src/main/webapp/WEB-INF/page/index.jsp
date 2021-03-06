<%@page import="java.util.Date"%>
<%@page import="com.xhc.blog.entity.TabArtitle"%>
<%@page import="com.xhc.blog.common.PageParam"%>
<%@page import="com.xhc.blog.common.DateFormat"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>博客首页</title>
<link rel="stylesheet" type="text/css" href="css/style.css" />
<link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">
<link rel="stylesheet"
	href="https://cdn.static.runoob.com/libs/bootstrap/3.3.7/css/bootstrap.min.css">
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
				<!-- <li><a href="#"><span class="glyphicon glyphicon-user"></span>
						注册</a></li> -->
				<li><a href="login.html"><span
						class="glyphicon glyphicon-log-in"></span> 登录</a></li>
			</ul>
		</div>
	</nav>
	<!-- 顶部 -->
	<section class="content-wrap">
		<div class="container">
			<div class="row">
				<main class="col-md-8 main-content">
				<article
					class="post tag-about-ghost tag-ghost-in-depth tag-zhu-shou-han-shu">
					<c:forEach items="${artitle}" var="item">
						<div class="post-head">
							<h1 class="post-title">${item.getAtitle()}</h1>
							<div class="post-meta">
								<strong>发布时间：</strong>
								<time class="time">
									<fmt:formatDate value="${item.getAdate()}"
										pattern="yyyy-MM-dd " />
								</time>
							</div>
						</div>
						<div class="post-content">
							<p><strong>内容详情：</strong>${item.getAcontent().substring(0,80)}...</p>
						</div>
						<div class="post-permalink">
							<a href="queryOneArtitle.html?id=${item.getId()}"
								class="btn btn-default">阅读全文</a>
						</div>
					</c:forEach>
					<div class="page">
						<nav>
							<ul class="pager">
								<span>第</span> ${pageParam.currPage}
								<span>页,共</span>
								<span>${pageParam.totalPage}页</span>
								<a class="btn" href="index.html?page=${pageParam.hasFirst}">首页</a>
								<c:choose>
									<c:when test="${pageParam.currPage!=1}">
										<li><a href="index.html?&page=${pageParam.hasPre}">上一页</a></li>
									</c:when>
									<c:otherwise>
										<li><a class="btn disabled" role="button">上一页</a></li>
									</c:otherwise>
								</c:choose>
								<c:choose>
									<c:when test="${pageParam.currPage!=pageParam.totalPage}">
										<li><a href="index.html?page=${pageParam.hasNext}">下一页</a></li>
									</c:when>
									<c:otherwise>
										<li><a class="btn disabled" role="button">下一页</a></li>
									</c:otherwise>
								</c:choose>
								<a href="index.html?page=${pageParam.hasLast}">尾页</a>
							</ul>
						</nav>
					</div>
				</article>
				</main>
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

	<!-- <div class="bottom"></div> -->
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