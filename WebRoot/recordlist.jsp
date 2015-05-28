<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html lang="zh-CN">
	<head>
		<meta charset="utf-8" />
		<title></title>
		<link href="assets/css/bootstrap.min.css" rel="stylesheet" />
		<link rel="stylesheet" href="assets/css/font-awesome.min.css" />
		<link rel="stylesheet" href="assets/css/ace-fonts.css" />
		<link rel="stylesheet" href="assets/css/ace.min.css" />
		<link rel="stylesheet" href="assets/css/ace-rtl.min.css" />
		<link rel="stylesheet" href="assets/css/ace-skins.min.css" />
		<script src="assets/js/ace-extra.min.js"></script>
		<style type="text/css">
			#dd{
				margin:0;
				float:left;
			}
		</style>
		<script type="text/javascript" language="javascript">
            //iframe自适应高度
			function iFrameHeight(){
                var ifm = document.getElementById("modal-table");
                var subWeb = document.frames ? document.frames["modal-table"].document : ifm.contentDocument;
                if (ifm != null && subWeb != null) {
                    ifm.height = subWeb.body.scrollHeight;
                }
            }
        </script>
		<script type="text/javascript">
		function delProduct(id){
			var flag=confirm("您确定删除吗?");
			if(flag){
				location="RecordAction_del?id="+id;
				}
		}
		</script>
	</head>
	<body id="frmContent">
		<div class="breadcrumbs" id="breadcrumbs">
			<ul class="breadcrumb">
				<li><i class="icon-home home-icon"></i><a>首页</a></li>
				<li class="active">商品进销记录管理</li>
				<li class="active">产品信息列表</li>
			</ul><!-- .breadcrumb -->
			<div class="nav-search" id="nav-search">
			</div><!-- #nav-search -->
		</div>
		<div class="page-content" style="margin:0;padding:0;height:auto;">
			<div class="page-header">
				<ul class="breadcrumb"></ul>
			</div>
			<div class="row">
				<div class="col-xs-12">
					<div class="col-xs-4">
						<form action="RecordAction_findByName" method="post" class="form-inline">
							<input type="text" name="sname" class="input-small" placeholder="按商品名称搜索" />
							<label class="inline">
								<input type="checkbox" class="ace" />
							</label>
							<button type="submit" class="btn btn-info btn-sm">
								<i class="icon-search bigger-110"></i>搜索
							</button>
						</form>
					</div>
					<div class="col-xs-6"></div>
					<div class="col-xs-2">
					</div>
					<table id="sample-table" class="table table-striped table-bordered table-hover">
						<thead>
							<tr>
								<th>操作员</th>
								<th>类型</th>
								<th>进销数量</th>
								<th>进价</th>
								<th>总价</th>
								<th>日期</th>
								<th>商品</th>
								<th>供货商家</th>
								<th>操作</th>
							</tr>
						</thead>
						<tbody>
							<c:forEach items="${pager.list}" var="s">
							<tr>
								<th>${s.employ.name}</th>
								<th>${s.count!=2?"进货":"销售"}</th>
								<th>${s.count}</th>
								<th>${s.provider_price}</th>
								<th>${s.totalPrice}</th>
								<th><fmt:formatDate value="${s.happendate}" pattern="yyyy-MM-dd"/></th>
								<th>${s.product.name}</th>
								<th>${s.provider.name}</th>
								<td>
									<div class="visible-md visible-lg hidden-sm hidden-xs btn-group">
									<!-- 根据job不同，显示不同的操作方式 -->
										<c:if test="${admin.id>0}"><!-- 系统管理员 -->
										</c:if>
										<c:if test="${employ.job.id==4}"><!-- 采购员 -->
											<a href="#divIn" onclick="myToIn(${s.id});" data-toggle="modal" class="btn btn-xs btn-success"><i class="icon-plus bigger-120"></i>修改</a>
										</c:if>
										<c:if test="${employ.job.id==5}"><!-- 销售员 -->
											<a href="#divIn" onclick="myToIn(${s.id});" data-toggle="modal" class="btn btn-xs btn-success"><i class="icon-plus bigger-120"></i>修改</a>
										</c:if>
									</div>
								</td>
							</tr>
							</c:forEach>
						</tbody>
					</table>
					<div class="col-xs-8"></div>
					<div class="col-xs-4">
				<span>第 ${pager.pageNum } 页&nbsp;&nbsp;&nbsp;共
							<c:choose>
							<c:when test="${pager.totalPage>1}">
								<span>${pager.totalPage}</span>
							</c:when><c:otherwise>
								<span>${pager.totalPage+1}</span>
							</c:otherwise>
							</c:choose>
							页</span>
						&nbsp;&nbsp;&nbsp;
						<!-- 首页 -->
						<span><a href="RecordAction_tolist1?pageNum=1"><i class="icon-double-angle-left bigger-150"></i></a></span>
						&nbsp;&nbsp;&nbsp;
						<!-- 上一页 -->
						<c:choose>
							<c:when test="${pager.pageNum>1}">
								<span><a href="RecordAction_tolist1?pageNum=${pager.pageNum-1}"><i class="icon-angle-left bigger-150"></i></a></span>
							</c:when>
							<c:otherwise>
								<span><a><i class="icon-angle-left bigger-150"></i></a></span>
							</c:otherwise>
						</c:choose>
						&nbsp;&nbsp;&nbsp;
						<!-- 下一页 -->
						<c:choose>
							<c:when test="${pager.pageNum<pager.totalPage}">
								<span><a href="RecordAction_tolist1?pageNum=${pager.pageNum+1}"><i class="icon-angle-right bigger-150"></i></a></span>
							</c:when>
							<c:otherwise>
								<span><a><i class="icon-angle-right bigger-150"></i></a></span>
							</c:otherwise>
						</c:choose>
						<!-- 末页 -->
						&nbsp;&nbsp;&nbsp;
						<span><a href="RecordAction_tolist1?pageNum=${pager.totalPage}"><i class="icon-double-angle-right bigger-150"></i></a></span>
						&nbsp;&nbsp;&nbsp;
						<!-- 选择页面跳转 -->
						跳转至第<input id="txtJumpPage" type="text" class="input-small" value="1"/>页
						<button id="btnJumpPage" type="button" class="btn btn-xs btn-info">
							<i class="icon-refresh bigger-110">跳转</i>
						</button>
						</div>
					</div>
				</div>
				</div>
				
	<!-- /.page-content -->
	</body>
	<script type="text/javascript">
			window.jQuery || document.write("<script src='assets/js/jquery-2.0.3.min.js'>"+"<"+"/script>");
	</script>
	<script type="text/javascript">
		if("ontouchend" in document) document.write("<script src='assets/js/jquery.mobile.custom.min.js'>"+"<"+"/script>");
	</script>
	<script src="assets/js/bootstrap.min.js"></script>
	<script src="assets/js/typeahead-bs2.min.js"></script>
	<script src="assets/js/jquery.dataTables.min.js"></script>
	<script src="assets/js/jquery.dataTables.bootstrap.js"></script>
	<script src="assets/js/ace-elements.min.js"></script>
	<script src="assets/js/ace.min.js"></script>	
</html>