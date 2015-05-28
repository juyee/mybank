<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html lang="en">
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<meta charset="utf-8">
		<!-- Title and other stuffs -->
		<title>柜员个人资料修改</title>
		<meta name="keywords" content="" />
		<meta name="description" content="bishhe" />
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
		<meta name="author" content="">
		<!-- Stylesheets -->
		<link href="style/bootstrap.css" rel="stylesheet">
		<link rel="stylesheet" href="style/font-awesome.css">
		<link href="style/style.css" rel="stylesheet">
		<link href="style/bootstrap-responsive.css" rel="stylesheet">

		<!-- HTML5 Support for IE -->
		<!--[if lt IE 9]>
  <script src="js/html5shim.js"></script>
  <![endif]-->

		<!-- Favicon -->
		<link rel="shortcut icon" href="img/favicon/favicon.png">
	</head>

	<body>

		<div class="admin-form">
			<div class="container">
				<div class="row">
					<div class="col-lg-12">
						<!-- Widget starts -->
						<div class="widget wred">
							<div class="widget-head">
								<i class="icon-lock"></i>柜员资料修改
							</div>
							<div class="widget-content">
								<div class="padd">
									<form class="form-horizontal" action="AdminAction_upd"
										method="post">
										<!-- Registration form starts -->
										<!-- Name -->
										<div class="form-group">
											<label class="control-label col-lg-3" for="name">
												柜员编号
											</label>
											<div class="col-lg-9">
												<input type="text" class="form-control" id="aid"
													name="admin.id" placeholder="${admin.name}"
													readonly="readonly" value="${admin.id}">
											</div>
										</div>
										<div class="form-group">
											<label class="control-label col-lg-3" for="name">
												柜员姓名
											</label>
											<div class="col-lg-9">
												<input type="text" class="form-control" id="name"
													name="admin.name" value="${admin.name}">
											</div>
										</div>
										<!-- Email -->
										<div class="form-group">
											<label class="control-label col-lg-3" for="email">
												工作年限
											</label>
											<div class="col-lg-9">
												<input type="text" class="form-control" id="email"
													name="admin.workinglife" value="${admin.workinglife}">
											</div>
										</div>
										<div class="form-group">
											<label class="control-label col-lg-3" for="email">
												客户数量
											</label>
											<div class="col-lg-9">
												<input type="text" class="form-control" id="email"
													name="admin.dingdan" value="${admin.dingdan}">
											</div>
										</div>
										<div class="form-group">
											<label class="control-label col-lg-3" for="email">
												访问次数
											</label>
											<div class="col-lg-9">
												<input type="text" class="form-control" id="email"
													name="admin.logincount" value="${admin.logincount}"
													readonly="readonly">
											</div>
										</div>
											<div class="form-group">
											<label class="control-label col-lg-3" for="email">
												柜员生日
											</label>
											<div class="col-lg-9">
												<input type="text" class="form-control" id="email"
													name="admin.birthdate" value="<fmt:formatDate value="${admin.birthdate}" pattern="yyyy-MM-dd" />" 
													>
											</div>
										</div>
										<!-- Select box -->
										<div class="form-group">
											<label class="col-sm-3 control-label no-padding-right">
												性别
											</label>
											<div class="col-sm-6">
												<input name="admin.sex" type="radio" value="男"
													checked="checked">
												男
												<input name="admin.sex" type="radio" value="女">
												女
											</div>
										</div>
										<!-- Username -->
										<div class="form-group">
											<label class="control-label col-lg-3" for="username">
												登录名称
											</label>
											<div class="col-lg-9">
												<input type="text" class="form-control" id="loginname"
													name="admin.loginname" value="${admin.loginname}">
											</div>
										</div>
										<!-- Password -->
										<div class="form-group">
											<label class="control-label col-lg-3" for="email">
												密码
											</label>
											<div class="col-lg-9">
												<input type="password" class="form-control"
													name="admin.password" value="${admin.password}">
											</div>
										</div>

										<!-- Accept box and button s-->
										<div class="form-group">
											<div class="col-lg-9 col-lg-offset-3">
												<div class="checkbox">
													<label>
													</label>
												</div>
												<br />
												<button type="submit" class="btn btn-danger">
													修改
												</button>
												<button type="reset" class="btn btn-success">
													重新输入信息
												</button>
											</div>
										</div>
										<br />
									</form>
								</div>
							</div>
							<div class="widget-foot">
							</div>

						</div>
					</div>
				</div>
			</div>
		</div>

		<!-- JS -->
		<script src="js/jquery.js">
</script>
		<script src="js/bootstrap.js">
</script>

		<script src="vendors/chart.js/Chart.min.js">
</script>
		<script src="js/charts-chartjs.js">
</script>
	</body>
</html>