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
			.test{
				margin:0;padding:0;
				height:auto;
			}
		</style>
        <script type="text/javascript" language="javascript">
            //iframe自适应高度
			function iFrameHeight(){
                var ifm = document.getElementById("frmContent");
                var subWeb = document.frames ? document.frames["frmContent"].document : ifm.contentDocument;
                if (ifm != null && subWeb != null) {
                    ifm.height = subWeb.body.scrollHeight;
                }
            }
			function delemploy(id){
				var flag=confirm("您确定删除吗?");
				if(flag){
					location="EmployAction_del?id="+id;
				}
			}
			function ToAdd(){
				$('#frmAdd').attr("src","EmployAction_toadd");
			}
			function myToShow(id){
				$('#frmShow').attr("src","EmployAction_toShow?id="+id);
			}
			function myToUpd(id){
				$('#frmUpd').attr("src","EmployAction_toUpd?id="+id);
			}
	  </script>
	</head>
	<body style="height: 600px;">
		<div class="navbar navbar-default" id="navbar">
			<script type="text/javascript">
				try{ace.settings.check('navbar' , 'fixed')}catch(e){}
			</script>
			<div class="navbar-container" id="navbar-container">
				<div class="navbar-header pull-left">
					<a href="#" class="navbar-brand">
						<small><i class="icon-leaf"></i>商贸公司管理系统</small>
					</a><!-- /.brand -->
				</div><!-- /.navbar-header -->
				<div class="navbar-header pull-right" role="navigation">
					<ul class="nav ace-nav">
						<li class="light-blue">
							<a data-toggle="dropdown" href="#" class="dropdown-toggle">
								<img class="nav-user-photo" src="assets/avatars/user.jpg" alt="Jason's Photo" />
								<span class="user-info">
									系统管理员&nbsp;<small>欢迎您!${a.loginname}</small>
								</span>
							</a>
						</li>
						<li class="light-blue">
							<a href="LoginAction_logout"><i class="icon-off"></i>退出</a>
						</li>
					</ul><!-- /.ace-nav -->
				</div><!-- /.navbar-header -->
			</div><!-- /.container -->
		</div><!-- /.navbar-default -->
		<div class="main-container" id="main-container">
			<script type="text/javascript">
				try{ace.settings.check('main-container' , 'fixed')}catch(e){}
			</script>
			<div class="main-container-inner">
				<a class="menu-toggler" id="menu-toggler" href="#"><span class="menu-text"></span></a>
				<div class="sidebar" id="sidebar">
					<script type="text/javascript">
						try{ace.settings.check('sidebar' , 'fixed')}catch(e){}
					</script>
					<ul class="nav nav-list">
						<li class="active"><a><i class="icon-dashboard"></i><span class="menu-text">功能菜单</span></a></li>
						<li>
							<a href="#" class="dropdown-toggle"><i class="icon-group"></i><span class="menu-text">人员事务管理</span><b class="arrow icon-angle-down"></b></a>
							<ul class="submenu">
								<li><a href="EmployAction_tolist?pageNum=1" target="frmContent"><i class="icon-double-angle-right"></i>员工信息列表</a></li>
								<li><a href="JobAction_tolist" target="frmContent"><i class="icon-double-angle-right"></i>职务信息列表</a></li>
							</ul>
						</li>
						
						<li>
							<a href="#" class="dropdown-toggle"><i class="icon-calendar"></i><span class="menu-text">商品记录管理</span><b class="arrow icon-angle-down"></b></a>
							<ul class="submenu">
								<li><a href="RecordAction_tolist1?pageNum=1" target="frmContent"><i class="icon-double-angle-right"></i>查看进货记录</a></li>
								<li><a href="RecordAction_tolist2?pageNum=1" target="frmContent"><i class="icon-double-angle-right"></i>查看销货记录</a></li>
								<li><a href="ProductAction_tolist?pageNum=1" target="frmContent"><i class="icon-double-angle-right"></i>产品信息列表</a></li>
							</ul>
						</li>
						<li>
							<a href="#" class="dropdown-toggle"><i class="icon-gift"></i><span class="menu-text">商家商品事项管理</span>
							<b class="arrow icon-angle-down"></b></a>
							<ul class="submenu">
								<li><a href="ProductAction_tolist?pageNum=1" target="frmContent"><i class="icon-double-angle-right"></i>产品信息列表</a></li>
								<li><a href="CompanyAction_tolist?pageNum=1" target="frmContent"><i class="icon-double-angle-right"></i>商家信息列表</a></li>
								<li><a href="StorehouseAction_tolist" target="frmContent"><i class="icon-double-angle-right"></i>仓库信息列表</a></li>
 								<li><a href="SmallTypeAction_tolist?pageNum=1" target="frmContent"><i class="icon-double-angle-right"></i>产品分类列表</a></li>
							</ul>
						</li>
						<li>
							<a href="#" class="dropdown-toggle"><i class="icon-bar-chart"></i><span class="menu-text">图表统计</span>
							<b class="arrow icon-angle-down"></b></a>
							<ul class="submenu">
								<li><a href="chartIn.jsp" target="frmContent"><i class="icon-double-angle-right"></i>进货图表</a></li>
								<li><a href="chartOut.jsp" target="frmContent"><i class="icon-double-angle-right"></i>销售图表</a></li>
							</ul>
						</li>
					</ul><!-- /.nav-list -->
						<div class="sidebar-collapse" id="sidebar-collapse">
						<i class="icon-double-angle-left" data-icon1="icon-double-angle-left" data-icon2="icon-double-angle-right"></i>
					</div>
					<script type="text/javascript">
						try{ace.settings.check('sidebar' , 'collapsed')}catch(e){}
					</script>
				</div><!-- /.sidebar -->
				<div class="main-content">
					<iframe name="frmContent" id="frmContent" onload="iFrameHeight();" src="allchart.jsp" frameborder="no" scrolling="no" width="100%"></iframe>
				</div><!-- /.main-content -->
			</div><!-- /.main-container-inner -->
		</div><!-- /.main-container -->
		<script type="text/javascript">
			window.jQuery || document.write("<script src='assets/js/jquery-2.0.3.min.js'>"+"<"+"/script>");
		</script>
		<script type="text/javascript">
			if("ontouchend" in document) document.write("<script src='assets/js/jquery.mobile.custom.min.js'>"+"<"+"/script>");
		</script>
		<script src="assets/js/bootstrap.min.js"></script>
		<script src="assets/js/typeahead-bs2.min.js"></script>
		<script src="assets/js/ace-elements.min.js"></script>
		<script src="assets/js/ace.min.js"></script>
	</body>
</html>
