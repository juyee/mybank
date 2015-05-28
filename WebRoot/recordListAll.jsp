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
  <title>交易记录 </title> 
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
			function iFrameHeight(){
                var ifm = document.getElementById("frmContent");
                var subWeb = document.frames ? document.frames["frmContent"].document : ifm.contentDocument;
                if (ifm != null && subWeb != null) {
                    ifm.height = subWeb.body.scrollHeight;
                }
            }
			function delAcc(id){
				var flag=confirm("您确定删除吗?");
				if(flag){
					location="AccountAction_del?id="+id;
				}
			}
			function Toshow(id){
				 var  url="UserAction_showByaccId?id="+id;
					location=url;
			}

	  </script>
</head>

<body>
		<div class="table-container">
			<div class="row ">
				<!-- Search form -->
				<form class="navbar-form navbar-left" role="search"
					action="RecordAction_listbyacc" method="post" target="frmContent">
					<div class="form-group">
						<input type="text" class="form-control" name="seachAcc"
							placeholder=" 请输入转出卡号/转入卡号">
					</div>
				</form>
			</div>
			<div class="widget">


				<div class="widget-head">
					<div class="pull-left">
						账户交易记录
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
									交易人
								</th>
								<th>
									转出卡号
								</th>
								<th>
									转入卡号
								</th>
								<th>
									借贷类型
								</th>
								<th>
									交易金额
								</th>
								<th>
									交易时间
								</th>
							</tr>
						</thead>
						<tbody>

							<c:forEach items="${pager.list}" var="s">
								<tr>
									<th>
										${s.username}
									</th>
									<th>
										${s.fromaccount}
									</th>
									<th>
										${s.toaccount}
									</th>
									<c:choose>
										<c:when test="${s.type==2}">
											<th>
												转账
											</th>
										</c:when>
										<c:when test="${s.type==0}">
											<th>
												存款
											</th>
										</c:when>
										<c:when test="${s.type==1}">
											<th>
												取款
											</th>
										</c:when>
										<c:otherwise>
											<th></th>
										</c:otherwise>
									</c:choose>
									<th>
										${s.changemoney}
									</th>
									<th>
										<fmt:formatDate value="${s.happendate}" pattern="yyyy-MM-dd  HH:mm:ss" />
									</th>

							</c:forEach>

							</tr>


						</tbody>
					</table>

					<div class="widget-foot">

						<ul class="pagination pull-right">
							<c:choose>
								<c:when test="${pager.pageNum>1}">
									<li>
										<a href="AccountAction_tolist?pageNum=${pager.pageNum-1}">上一页</a>
									</li>
								</c:when>
								<c:otherwise>
									<li></li>
								</c:otherwise>
							</c:choose>
							<li>
								<a href="#">${pager.pageNum}</a>
							</li>
							<!-- 下一页 -->
							<c:choose>
								<c:when test="${pager.pageNum<pager.totalPage}">
									<li>
										<a href="AccountAction_tolist?pageNum=${pager.pageNum+1}">下一页</a>
									</li>
								</c:when>
								<c:otherwise>
									<li></li>
								</c:otherwise>
							</c:choose>

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