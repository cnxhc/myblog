<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>登录页面</title>
<link rel="stylesheet" type="text/css" href="css/style.css" />
<link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">
<script type="text/javascript" src="js/date.js">
	
</script>
</head>
<body>
	<div class="container">
		<div class="row">
			<div class="col-sm-offset-4 col-sm-4">
				<form class="form-horizontal" role="form" action="checkLogin.html"
					method="post">
					<h2 class="col-sm-offset-4 col-sm-10">欢迎登录</h2>
					<div class="form-group">
						<!-- <label  class="col-sm-2 control-label">名称</label> -->
						<div class="col-sm-offset-2 col-sm-10">
							<input type="text" class="form-control" name="username"
								placeholder="用户名称" required autofocus>
						</div>
					</div>
					<div class="form-group">
						<!-- <label  class="col-sm-2 control-label">密码</label> -->
						<div class="col-sm-offset-2 col-sm-10">
							<input type="password" class="form-control" name="password"
								placeholder="用户密码" required>
						</div>
					</div>
					<div class="form-group">
						<div class="col-sm-offset-2 col-sm-10">
							<div class="checkbox">
								<label> <input type="checkbox"> 请记住我
								</label>
							</div>
						</div>
					</div>
					<div class="form-group">
						<div class="col-sm-offset-2 col-sm-10">
							<button class="btn btn-lg btn-default btn-block" type="submit">登录</button>
						</div>
					</div>
					
				</form>
			</div>
		</div>
	</div>


</body>
</html>