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
		<title>账户列表页面</title>
		<meta name="keywords" content="" />
		<meta name="description" content="" />
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
		<script type="text/javascript" language="javascript">
//iframe自适应高度
function iFrameHeight() {
	var ifm = document.getElementById("frmContent");
	var subWeb = document.frames ? document.frames["frmContent"].document
			: ifm.contentDocument;
	if (ifm != null && subWeb != null) {
		ifm.height = subWeb.body.scrollHeight;
	}
}
function delemploy(id) {
	var flag = confirm("您确定删除吗?");
	if (flag) {
		location = "UserAction_del?id=" + id;
	}
}
function Toshow(id) {
	var url = "UserAction_showById?id=" + id;
	location = url;
}

function myToUpd(id) {
	location = "UserAction_toupd?id=" + id;
}
</script>
	</head>

	<body>
		<div class="table-container">
			<div class="row ">
			</div>
			<div class="widget">

				<div class="widget-head">
					<div class="pull-left">
						储户信息管理
					</div>
					<div class="widget-icons pull-right">
						<a href="#" class="wminimize"><i class="icon-chevron-up"></i>
						</a>
						<a href="#" class="wclose"><i class="icon-remove"></i>
						</a>
					</div>
					<div class="clearfix"></div>
				</div>

				<div class="widget-content">

					<table class="table table-striped table-bordered table-hover"
						id="example-export">
						<thead>
							<tr>
								<th>
									ID
								</th>
								<th>
									登录名
								</th>
								<th>
									姓名
								</th>
								<th>
									性别
								</th>
								<th>
									邮箱
								</th>
								<th>
									用户状态
								</th>
								<th>
									用户余额
								</th>
								<th>
									注册时间
								</th>
								<th>
									操作
								</th>
							</tr>
						</thead>
						<tbody>

							<c:forEach items="${users}" var="s">
								<tr>
									<th>
										${s.id}
									</th>
									<th>
										${s.loginname}
									</th>
									<th>
										${s.name}
									</th>
									<th>
										${s.sex}
									</th>
									<th>
										${s.email}
									</th>
									<c:if test="${s.state==0}">
										<!--未激活 -->
										<th>
											未激活
										</th>
									</c:if>
									<c:if test="${s.state==1}">
										<!--已激活 -->
										<th>
											已激活
										</th>
									</c:if>
									<th>
										${s.useableBalance}
									</th>
									<th>
										<fmt:formatDate value="${s.registedate}" pattern="yyyy-MM-dd  HH:mm:ss" />
									</th>
									<th>
										<a class="btn btn-xs btn-success"
											href="javascript:Toshow('${s.id}');"><i class="icon-ok"></i>
										</a>
										<a class="btn btn-xs btn-warning"
											href="javascript:myToUpd('${s.id}');"><i
											class="icon-pencil"></i> </a>
										<a class="btn btn-xs btn-danger"
											href="javascript:delemploy('${s.id}');"><i
											class="icon-remove"></i> </a>
									</th>
							</c:forEach>

							</tr>


						</tbody>
					</table>

					<div class="widget-foot">

						<ul class="pagination pull-right">
							<li>
								<a href="#">1</a>
							</li>
						</ul>

						<div class="clearfix"></div>

					</div>

				</div>

			</div>



			<!-- JS -->
			<script src="js/jquery.js">
</script>
			<script src="js/bootstrap.js">
</script>

			<script src="vendors/tableExport/tableExport.js">
</script>
			<script src="vendors/tableExport/jquery.base64.js">
</script>
			<script src="vendors/tableExport/html2canvas.js">
</script>
			<script src="vendors/tableExport/jspdf/libs/sprintf.js">
</script>
			<script src="vendors/tableExport/jspdf/jspdf.js">
</script>
			<script src="vendors/tableExport/jspdf/libs/base64.js">
</script>
			<script src="js/table-export.js">
</script>
	</body>
</html>