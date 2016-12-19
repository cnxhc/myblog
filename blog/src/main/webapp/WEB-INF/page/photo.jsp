<%@page import="java.util.Date"%>
<%@page import="com.xhc.blog.entity.TabPhoto"%>
<%@page import="com.xhc.blog.common.PageParam"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>查询图片</title>
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
				<li><a href="index.html">首页</a></li>
				<li><a href="queryAndComment.html">博文搜索</a></li>
				<li class="active"><a href="photo.html">相册</a></li>
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
				<div class="col-md-9">
					<form class="form" action="photo.html" method="post">
						<div class="input-group" style="margin:0 auto">
							<h2>请选择种类</h2>
							<select name="pclass">
								<option value="1">植物</option>
								<option value="2">动物</option>
								<option value="3">手机</option>
							</select>
							<button class="btn btn-default" type="submit">提交</button>
						</div>
					</form>
						<c:forEach items="${photos}" var="item">
							<div class="middle_photo">
								<p class="photo_name">
									<strong>名称：</strong>${item.getPname()}</p>
								<br> <img alt="图片" src="image/${item.getPpic()}"
									style="width: 120px; height: 130px;"><br />
									 <strong>详情：</strong>${item.getPinfo()}<br />
							</div>
						</c:forEach>
						<div class="page">
							<nav>
								<ul class="pager">
									<span>第</span> ${pageParam.currPage}
									<span>页,共</span>
									<span>${pageParam.totalPage}页</span>
									<a class="btn"
										href="photo.html?page=${pageParam.hasFirst}&pclass=${photos.get(0).getPclass()}">首页</a>
									<c:choose>
										<c:when test="${pageParam.currPage!=1}">
											<li><a
												href="photo.html?&page=${pageParam.hasPre}&pclass=${photos.get(0).getPclass()}">上一页</a></li>
										</c:when>
										<c:otherwise>
											<li><a class="btn disabled" role="button">上一页</a></li>
										</c:otherwise>
									</c:choose>
									<c:choose>
										<c:when test="${pageParam.currPage!=pageParam.totalPage}">
											<li><a
												href="photo.html?page=${pageParam.hasNext}&pclass=${photos.get(0).getPclass()}">下一页</a></li>
										</c:when>
										<c:otherwise>
											<li><a class="btn disabled" role="button">下一页</a></li>
										</c:otherwise>
									</c:choose>
									<a
										href="photo.html?page=${pageParam.hasLast}&pclass=${photos.get(0).getPclass()}">尾页</a>
								</ul>
							</nav>
						</div>
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
