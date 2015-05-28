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
  <title>银行基本业务管理系统</title>
  <meta name="keywords" content="" />
  <meta name="description" content="" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta name="author" content="">
  <!-- Stylesheets -->
  <link href="style/bootstrap.css" rel="stylesheet">
  <!-- Font awesome icon -->
  <link rel="stylesheet" href="style/font-awesome.css"> 
  <!-- jQuery UI -->
  <link rel="stylesheet" href="style/jquery-ui.css"> 
  <!-- Calendar -->
  <link rel="stylesheet" href="style/fullcalendar.css">
  <!-- prettyPhoto -->
  <link rel="stylesheet" href="style/prettyPhoto.css">  
  <!-- Star rating -->
  <link rel="stylesheet" href="style/rateit.css">
  <!-- Date picker -->
  <link rel="stylesheet" href="style/bootstrap-datetimepicker.min.css">
  <!-- CLEditor -->
  <link rel="stylesheet" href="style/jquery.cleditor.css"> 
  <!-- Uniform -->
  <link rel="stylesheet" href="style/uniform.default.css"> 
  <!-- Bootstrap toggle -->
  <link rel="stylesheet" href="style/bootstrap-switch.css">
  <!-- Main stylesheet -->
  <link href="style/style.css" rel="stylesheet">
  <!-- Widgets stylesheet -->
  <link href="style/widgets.css" rel="stylesheet">   
  
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

	  </script>
</head>

<body>

<div class="navbar navbar-fixed-top bs-docs-nav" role="banner">
  
    <div class="conjtainer">
      <!-- Menu button for smallar screens -->
      <div class="navbar-header">
		  <button class="navbar-toggle btn-navbar" type="button" data-toggle="collapse" data-target=".bs-navbar-collapse">
			<span>菜单</span>
		  </button>
		  <!-- Site name for smallar screens -->
		  <a href="index.html" class="navbar-brand hidden-lg">首页</a>
		</div>

      <!-- Navigation starts -->
      <nav class="collapse navbar-collapse bs-navbar-collapse" role="navigation">         

        <ul class="nav navbar-nav">  

          <!-- Upload to server link. Class "dropdown-big" creates big dropdown -->
          <li class="dropdown dropdown-big">
            <a  href="webBankRegist.jsp"  target='frmContent'  class="dropdown-toggle"  ><span class="label label-success"><i class="icon-cloud-upload"></i></span>客户开户</a>
            <!-- Dropdown -->
          </li>

          <!-- Sync to server link -->
          <li class="dropdown dropdown-big">
            <a href="transfer2.jsp"  target='frmContent'   class="dropdown-toggle"  data-toggle="dropdown"><span class="label label-danger"><i class="icon-refresh"></i></span>客户取款</a>
            <!-- Dropdown -->
            <ul class="dropdown-menu">
              <li>

        <form class="navbar-form navbar-left" role="search"  action="RecordAction_toout" method="post"  target="frmContent">
			<div class="form-group">
				<input type="text" class="form-control"  name="byname" placeholder="请输入账号" >
			</div>
		</form>

              </li>
            </ul>
          </li>
		  <!--  -->
		  <li class="dropdown dropdown-big">
            <a href="transfer1.jsp" target='frmContent' class="dropdown-toggle" data-toggle="dropdown"><span class="label label-danger"><i class="icon-refresh"></i></span>客户存款</a>
            <!-- Dropdown -->
            <ul class="dropdown-menu">
              <li>
	       
	        <form class="navbar-form navbar-left" role="search"  action="RecordAction_in" method="post"  target="frmContent">
				<div class="form-group">
					<input type="text" class="form-control"  name="byname" placeholder="请输入账号" >
				</div>
			</form>

              </li>
            </ul>
          </li>
         
		 <li class="dropdown dropdown-big">
            <a href="transfer3.jsp" target='frmContent'   class="dropdown-toggle" data-toggle="dropdown"><span class="label label-danger"><i class="icon-refresh"></i></span>客户转账</a>
            <!-- Dropdown -->
            <ul class="dropdown-menu">
              <li>
              <form class="navbar-form navbar-left" role="search"  action="RecordAction_exchange" method="post"  target="frmContent">
				<div class="form-group">
					<input type="text" class="form-control"  name="byname" placeholder="请输入转出账号" >
				</div>
			</form>

              </li>
            </ul>
          </li>
        </ul>

        <!-- Search form -->
        <form class="navbar-form navbar-left" role="search"  action="UserAction_listbyname" method="post"  target="frmContent">
			<div class="form-group">
				<input type="text" class="form-control"  name="byname" placeholder="储户信息搜索" >
			</div>
		</form>
        <!-- Links -->
        <ul class="nav navbar-nav pull-right">
          <li class="dropdown pull-right">            
            <a data-toggle="dropdown" class="dropdown-toggle" href="#">
              <i class="icon-user"></i> 柜员：${admin.name} <b class="caret"></b>              
            </a>
            
            <!-- Dropdown menu -->
            <ul class="dropdown-menu">
              <li><a href=""><i class="icon-user"></i> 资料</a></li>
              <li><a href="#"><i class="icon-cogs"></i> 设置</a></li>
              <li><a href="LoginAction_logout"><i class="icon-off"></i> 退出</a></li>
            </ul>
          </li>
          
        </ul>
      </nav>

    </div>
  </div>


<!-- Header starts -->
  <header>
    <div class="container">
      <div class="row">

        <!-- Logo section -->
        <div class="col-md-4">
          <!-- Logo. -->
          <div class="logo">
            <h1><a href="#">银行基本业务管理系统<span class="bold"></span></a></h1>
          </div>
          <!-- Logo ends -->
        </div>

        <!-- Button section -->
        <div class="col-md-4">

          <!-- Buttons -->
          <ul class="nav nav-pills">

            <!-- Comment button with number of latest comments count -->
          
            <!-- Message button with number of latest messages count-->
            <li class="dropdown dropdown-big">
              <a class="dropdown-toggle" href="#" data-toggle="dropdown">
                <i class="icon-envelope-alt"></i> 行内通知 <span class="label label-primary"></span> 
              </a>

                <ul class="dropdown-menu">
                  <li>
                    <!-- Heading - h5 -->
                    <h5><i class="icon-envelope-alt"></i>行内通知</h5>
                    <!-- Use hr tag to add border -->
                    <hr />
                  </li>
                  <li>
                    <!-- List item heading h6 -->
                    <h6><a href="#">下周有培训</a></h6>
                    <!-- List item para -->
                    <p>下周有培训，时间是周二下午三点</p>
                    <hr />
                  </li>
                  <li>
                    <h6><a href="#">今天很好啊?</a></h6>
                    <p>相当好...</p>
                    <hr />
                  </li>
                  <li>
                    <div class="drop-foot">
                      <a href="#">查看所有</a>
                    </div>
                  </li>                                    
                </ul>
            </li>

           <li class="dropdown dropdown-big">
              <a class="dropdown-toggle" href="" data-toggle="dropdown" >
                <i class="icon-user"></i> 最近接待 <span   class="label label-success"></span> 
              </a>

                <ul class="dropdown-menu">
                  <li>
                    <!-- Heading - h5 -->
                    <h5><i class="icon-user"></i> 用户</h5>
                    <!-- Use hr tag to add border -->
                    <hr />
                  </li>
                  		<c:forEach items="${newusers.list}" var="b" >
                  <li>
                    <!-- List item heading h6-->
                    <h6>${b.name}/000${b.id}<span class="label label-warning pull-right"></span></h6>
                    <div class="clearfix"></div>
                    <hr />
                  </li>
					</c:forEach>
                  <li>
                    <div class="drop-foot">
                      <a href="UserAction_tolist"  target='frmContent'>查看所有</a>
                    </div>
                  </li>                                    
                </ul>
            </li> 
          
		  </ul>

        </div>

        <!-- Data section -->

        <div class="col-md-4">
          <div class="header-data">

            <!-- Traffic data -->
            <div class="hdata">
              <div class="mcol-left">
                <!-- Icon with red background -->
                <i class="icon-signal bred"></i> 
              </div>
              <div class="mcol-right">
                <!-- Number of visitors -->
                <p><a href="#">${admin.logincount}</a> <em>次数</em></p>
              </div>
              <div class="clearfix"></div>
            </div>

            <!-- Members data -->
            <div class="hdata">

            </div>

            <!-- revenue data -->
            <div class="hdata">
              <div class="mcol-left">
                <!-- Icon with green background -->
                <i class="icon-money bgreen"></i> 
              </div>
              <div class="mcol-right">
                <!-- Number of visitors -->
                <p><a href="UserAction_tolist"  target='frmContent'>${admin.dingdan}</a><em>客户数量</em></p>
              </div>
              <div class="clearfix"></div>
            </div>                        

          </div>
        </div>

      </div>
    </div>
  </header>

<!-- Header ends -->

<!-- Main content starts -->

<div class="content">

  	<!-- Sidebar -->
    <div class="sidebar">
        <div class="sidebar-dropdown"><a href="#">导航</a></div>

        <!--- Sidebar navigation -->
        <!-- If the main navigation has sub navigation, then add the class "has_sub" to "li" of main navigation. -->
        <ul id="nav">
          <!-- Main menu with font awesome icon -->
          <li><a href="#" class="open"><i class="icon-home"></i> 首页</a>
            <!-- Sub menu markup 
            <ul>
              <li><a href="#">Submenu #1</a></li>
              <li><a href="#">Submenu #2</a></li>
              <li><a href="#">Submenu #3</a></li>
            </ul>-->
          </li>
		   <li class="has_sub"><a href="#"><i class="icon-list-alt"></i> 柜员设置 <span class="pull-right"><i class="icon-chevron-right"></i></span></a>
            <ul>
	            <li><a href='tellerProfile.jsp '  target='frmContent'>查看个人信息</a> </li>
	            <li><a href='editProfile.jsp'  target='frmContent'>修改个人信息</a> </li>
            </ul>
          </li>  
          <li class="has_sub"><a href="#"><i class="icon-list-alt"></i> 利率管理  <span class="pull-right"><i class="icon-chevron-right"></i></span></a>
            <ul>
             <li><a href='chartjs.jsp'   target='frmContent'>利率趋势统计</a> </li>
            </ul>
          </li>           
		  <li class="has_sub"><a href="#"><i class="icon-list-alt"></i> 储户管理  <span class="pull-right"><i class="icon-chevron-right"></i></span></a>
            <ul>
	              <li><a href="webBankRegist.jsp"  target='frmContent'> 客户资料登记</a> </li>
    	           <li><a href="UserAction_tolist"  target='frmContent'>储户信息管理</a> </li>
	              <li><a href="AccountAction_tolist"  target='frmContent'>储户账户列表</a> </li>
            </ul>
          </li>
 		  <li class="has_sub"><a href="#"><i class="icon-list-alt"></i> 存取操作  <span class="pull-right"><i class="icon-chevron-right"></i></span></a>
            <ul>
	              <li><a href="transfer1.jsp"  target='frmContent'>储户取款</a> </li>
	              <li><a href="transfer3.jsp"  target='frmContent'>储户转账</a> </li>
	              <li><a href="RecordAction_tolist1""  target='frmContent'>存取记录</a> </li>
           </ul>
          </li>  		  

         
        </ul>
    </div>

	
	<div class="mainbar">
		<iframe name="frmContent" id="frmContent" onload="iFrameHeight();"  src="tellerProfile.jsp" 
		frameborder="yes" scrolling="yes" width="100%" height="100%"></iframe>
	</div>
    <!-- Sidebar ends -->

  	  	<!-- Main bar -->
							
<!-- Content ends -->

<!-- Footer starts -->
<footer>
  <div class="container">
    <div class="row">
      <div class="col-md-12">
            <!-- Copyright info -->
            <p class="copy">Copyright &copy; 2015 | <a href="#">银行基本业务仿真系统</a> </p>
      </div>
    </div>
  </div>
</footer> 	

<!-- Footer ends -->

<!-- Scroll to top -->
<span class="totop"><a href="#"><i class="icon-chevron-up"></i></a></span> 

<!-- JS -->
<script src="js/jquery.js"></script> <!-- jQuery -->
<script src="js/bootstrap.js"></script> <!-- Bootstrap -->
<script src="js/jquery-ui-1.9.2.custom.min.js"></script> <!-- jQuery UI -->
<script src="js/fullcalendar.min.js"></script> <!-- Full Google Calendar - Calendar -->
<script src="js/jquery.rateit.min.js"></script> <!-- RateIt - Star rating -->
<script src="js/jquery.prettyPhoto.js"></script> <!-- prettyPhoto -->

<!-- jQuery Flot -->
<script src="js/excanvas.min.js"></script>


<!-- jQuery Notification - Noty -->
<script src="js/jquery.noty.js"></script> <!-- jQuery Notify -->
<script src="js/themes/default.js"></script> <!-- jQuery Notify -->
<script src="js/layouts/bottom.js"></script> <!-- jQuery Notify -->
<script src="js/layouts/topRight.js"></script> <!-- jQuery Notify -->
<script src="js/layouts/top.js"></script> <!-- jQuery Notify -->

<!-- jQuery Notification ends -->

<script src="js/sparklines.js"></script> <!-- Sparklines -->
<script src="js/jquery.cleditor.min.js"></script> <!-- CLEditor -->
<script src="js/bootstrap-datetimepicker.min.js"></script> <!-- Date picker -->
<script src="js/jquery.uniform.min.js"></script> <!-- jQuery Uniform -->
<script src="js/bootstrap-switch.min.js"></script> <!-- Bootstrap Toggle -->
<script src="js/filter.js"></script> <!-- Filter for support page -->
<script src="js/custom.js"></script> <!-- Custom codes -->
<script src="js/charts.js"></script> <!-- Charts & Graphs -->

<!-- Script for this page -->
<script type="text/javascript">
$(function () {

    /* Bar Chart starts */

    var d1 = [];
    for (var i = 0; i <= 20; i += 1)
        d1.push([i, parseInt(Math.random() * 30)]);

    var d2 = [];
    for (var i = 0; i <= 20; i += 1)
        d2.push([i, parseInt(Math.random() * 30)]);


    var stack = 0, bars = true, lines = false, steps = false;
    
    function plotWithOptions() {
        $.plot($("#bar-chart"), [ d1, d2 ], {
            series: {
                stack: stack,
                lines: { show: lines, fill: true, steps: steps },
                bars: { show: bars, barWidth: 0.8 }
            },
            grid: {
                borderWidth: 0, hoverable: true, color: "#777"
            },
            colors: ["#ff6c24", "#ff2424"],
            bars: {
                  show: true,
                  lineWidth: 0,
                  fill: true,
                  fillColor: { colors: [ { opacity: 0.9 }, { opacity: 0.8 } ] }
            }
        });
    }

    plotWithOptions();
    
    $(".stackControls input").click(function (e) {
        e.preventDefault();
        stack = $(this).val() == "With stacking" ? true : null;
        plotWithOptions();
    });
    $(".graphControls input").click(function (e) {
        e.preventDefault();
        bars = $(this).val().indexOf("Bars") != -1;
        lines = $(this).val().indexOf("Lines") != -1;
        steps = $(this).val().indexOf("steps") != -1;
        plotWithOptions();
    });

    /* Bar chart ends */

});


/* Curve chart starts */

$(function () {
    var sin = [], cos = [];
    for (var i = 0; i < 14; i += 0.5) {
        sin.push([i, Math.sin(i)]);
        cos.push([i, Math.cos(i)]);
    }

    var plot = $.plot($("#curve-chart"),
           [ { data: sin, label: "sin(x)"}, { data: cos, label: "cos(x)" } ], {
               series: {
                   lines: { show: true, fill: true},
                   points: { show: true }
               },
               grid: { hoverable: true, clickable: true, borderWidth:0 },
               yaxis: { min: -1.2, max: 1.2 },
               colors: ["#1eafed", "#1eafed"]
             });

    function showTooltip(x, y, contents) {
        $('<div id="tooltip">' + contents + '</div>').css( {
            position: 'absolute',
            display: 'none',
            top: y + 5,
            left: x + 5,
            border: '1px solid #000',
            padding: '2px 8px',
            color: '#ccc',
            'background-color': '#000',
            opacity: 0.9
        }).appendTo("body").fadeIn(200);
    }

    var previousPoint = null;
    $("#curve-chart").bind("plothover", function (event, pos, item) {
        $("#x").text(pos.x.toFixed(2));
        $("#y").text(pos.y.toFixed(2));

        if ($("#enableTooltip:checked").length > 0) {
            if (item) {
                if (previousPoint != item.dataIndex) {
                    previousPoint = item.dataIndex;
                    
                    $("#tooltip").remove();
                    var x = item.datapoint[0].toFixed(2),
                        y = item.datapoint[1].toFixed(2);
                    
                    showTooltip(item.pageX, item.pageY, 
                                item.series.label + " of " + x + " = " + y);
                }
            }
            else {
                $("#tooltip").remove();
                previousPoint = null;            
            }
        }
    }); 

    $("#curve-chart").bind("plotclick", function (event, pos, item) {
        if (item) {
            $("#clickdata").text("You clicked point " + item.dataIndex + " in " + item.series.label + ".");
            plot.highlight(item.series, item.datapoint);
        }
    });

});

function iFrameHeight(){//iframe自适应高度
                var ifm = document.getElementById("frmContent");
                var subWeb = document.frames ? document.frames["frmContent"].document : ifm.contentDocument;
                if (ifm != null && subWeb != null) {
                    ifm.height = subWeb.body.scrollHeight;
                }
            }

/* Curve chart ends */
</script>

</body>
</html>