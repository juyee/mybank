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
			#body{
				height:900px;
			}
		</style>
		<script type="text/javascript">
		function deldept(id){
			var flag=confirm("您确定删除吗?");
			if(flag){
				location="SmallTypeAction_del?id="+id;
				}
		}
		function myToAdd(){
			$('#frmAdd').attr("src","ProductAction_toAdd");
		}
		  //iframe自适应高度
		function iFrameHeight(){
                var ifm = document.getElementById("modal-table");
                var subWeb = document.frames ? document.frames["modal-table"].document : ifm.contentDocument;
                if (ifm != null && subWeb != null) {
                    ifm.height = subWeb.body.scrollHeight;
                }
            }
		</script>
	</head>
	<body>
		<div class="breadcrumbs" id="breadcrumbs">
			<ul class="breadcrumb">
				<li><i class="icon-home home-icon"></i><a>首页</a></li>
				<li class="active">商品类别信息管理</li>
				<li class="active">商品类别信息列表</li>
			</ul><!-- .breadcrumb -->
			<div class="nav-search" id="nav-search">
			</div><!-- #nav-search -->
		</div>
		<div class="page-content" style="margin:0;padding:0;height:auto;">
			<div class="page-header">
				<ul class="breadcrumb">商品类别信息列表</ul>
			</div>
			<div class="row">
				<div class="col-xs-12">
					<div class="col-xs-2">
						<form action="DeptAction?op=searchbysname" method="post" class="form-inline">
							<input type="text" name="bysname" class="input-small" placeholder="按姓名搜索" />
							<label class="inline">
								<input type="checkbox" class="ace" />
							</label>
							<button type="submit" class="btn btn-info btn-sm">
								<i class="icon-search bigger-110"></i>搜索
							</button>
						</form>
					</div>
					<div class="col-xs-2">
						<form class="form-inline">
							<input type="text" class="input-small" placeholder="按地址搜索" />
							<label class="inline">
								<input type="checkbox" class="ace" />
							</label>
							<button type="button" class="btn btn-info btn-sm">
								<i class="icon-search bigger-110"></i>搜索
							</button>
						</form>
					</div>
					<div class="col-xs-4"></div>
					<div class="col-xs-4">
						
						<a type="button" class="btn btn-info btn-sm" href="#modal-tableb" data-toggle="modal">
							<i class="icon-plus bigger-110" ></i>添加一级分类
						</a>
						<a type="button" class="btn btn-info btn-sm" href="#modal-tablel" data-toggle="modal">
							<i class="icon-plus bigger-110" ></i>添加二级分类
						</a>
						<a type="button" class="btn btn-info btn-sm">
							<i class="icon-refresh bigger-110"></i>刷新数据
						</a>
					</div>
					<table id="sample-table" class="table table-striped table-bordered table-hover">
						<thead>
							<tr>
								<th>一级分类</th>
								<th>名称</th>
								<th>操作</th>
							</tr>
						</thead>
						<tbody>
							<c:forEach items="${pager.list}" var="s">
							<tr>
								<th>${s.bigtype.name}</th>
								<th>${s.name}</th>
								<td>
									<div class="visible-md visible-lg hidden-sm hidden-xs btn-group">
										<a href="DeptAction!toupd?id=${s.id}" class="btn btn-xs btn-info"><i class="icon-edit bigger-120"></i>修改</a>
										<a href="javascript:deldept(${s.id});" class="btn btn-xs btn-danger"><i class="icon-trash bigger-120"></i>删除</a>
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
						<span><a href="SmallTypeAction_tolist?pageNum=1"><i class="icon-double-angle-left bigger-150"></i></a></span>
						&nbsp;&nbsp;&nbsp;
						<!-- 上一页 -->
						<c:choose>
							<c:when test="${pager.pageNum>1}">
								<span><a href="SmallTypeAction_tolist?pageNum=${pager.pageNum-1}"><i class="icon-angle-left bigger-150"></i></a></span>
							</c:when>
							<c:otherwise>
								<span><a><i class="icon-angle-left bigger-150"></i></a></span>
							</c:otherwise>
						</c:choose>
						&nbsp;&nbsp;&nbsp;
						<!-- 下一页 -->
						<c:choose>
							<c:when test="${pager.pageNum<pager.totalPage}">
								<span><a href="SmallTypeAction_tolist?pageNum=${pager.pageNum+1}"><i class="icon-angle-right bigger-150"></i></a></span>
							</c:when>
							<c:otherwise>
								<span><a><i class="icon-angle-right bigger-150"></i></a></span>
							</c:otherwise>
						</c:choose>
						<!-- 末页 -->
						&nbsp;&nbsp;&nbsp;
						<span><a href="SmallTypeAction_tolist?pageNum=${pager.totalPage}"><i class="icon-double-angle-right bigger-150"></i></a></span>
						&nbsp;&nbsp;&nbsp;
						<!-- 选择页面跳转 -->
						跳转至第<input id="txtJumpPage" type="text" class="input-small" value="1"/>页
						<button id="btnJumpPage" type="button" class="btn btn-xs btn-info">
							<i class="icon-refresh bigger-110">跳转</i>
						</button>
					</div>
					<div class="col-xs-12">
					<div class="col-xs-12">
						<div class="col-xs-12">
							<div class="col-xs-12">
								<div class="col-xs-12">
				</div>	</div>	</div>	</div>		</div>		<div class="col-xs-12">
					<div class="col-xs-12">
						<div class="col-xs-12">
							<div class="col-xs-12">
								<div class="col-xs-12">
				</div>	</div>	</div>	</div>		</div>		
			<div id="modal-tablel" class="modal fade" tabindex="-1">
				<div class="modal-dialog">
					<div class="modal-content col-sm-18">
						<div class="page-content" style="margin:0;padding:0;height:auto;">
						<div class="page-header">
							<ul class="breadcrumb">小分类信息添加</ul>
						</div>
						<div class="row" >
						<form action="SmallTypeAction_add" method="post" class="form-horizontal" role="form">
							<div class="form-group">
								<label class="col-sm-3 control-label no-padding-right">小分类名称</label>
								<div class="col-sm-8">
									<input type="text" name="smallType.name"  placeholder="请填写小分类名称" class="col-xs-10 col-sm-5" />
								</div>
							</div>
							<div class="form-group">
								<label  class="col-sm-3 control-label no-padding-right">所属大分类</label>
								<div class="col-sm-8">
									<select name="bid">
										<c:forEach items="${bigTypes}" var="b">
											<option value="${b.id}">${b.name}</option>
										</c:forEach>
									</select>					
								</div>
							</div>
							<div class="form-group">
								<label class="col-sm-3 control-label no-padding-right">备注</label>
								<div class="col-sm-8">
									<input type="text" name="smallType.remark"  placeholder="请填写备注" class="col-xs-10 col-sm-5" />
								</div>
							</div>
							<!-- 按钮 -->
							<div align="center">
									<button class="btn btn-info" type="submit">
										<i class="icon-ok bigger-110"></i>提交
									</button>
									&nbsp; &nbsp; &nbsp;
									<button class="btn" type="reset">
										<i class="icon-undo bigger-110"></i>重置
									</button>
							</div>
						</form>
					</div>
				</div>
				</div>
			</div> 
		</div>
		<div id="modal-tableb" class="modal fade" tabindex="-1" style="margin:0;padding:0;height:auto;" class="form-horizontal" role="form">
				<div class="modal-dialog">
					<div class="modal-content " >
						<div class="page-content" style="margin:0;padding:0;height:auto;">
						<div class="page-header">
							<ul class="breadcrumb">一级分类信息添加</ul>
						</div>
						<div class="row" >
						<form action="BigTypeAction_add" method="post" class="form-horizontal" role="form">
							<div class="form-group">
								<label class="col-sm-3 control-label no-padding-right">一级分类名称</label>
								<div class="col-sm-6">
									<input type="text" name="bigType.name"  placeholder="请填写一级分类名称" class="col-xs-10 col-sm-8" />
								</div>
								<button class="btn btn-info" type="submit">
									<i class="icon-ok bigger-110"></i>提交
								</button>

							</div>
							
							<!-- 按钮 -->
					</form>
					</div>
				</div>
				</div>
			</div> 
		</div>
		</div>
				
	</div>
				
		</div><!-- /.page-content -->
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