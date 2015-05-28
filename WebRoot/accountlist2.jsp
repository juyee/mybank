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
  <title>账户列表页面 </title> 
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
			function ToAdd(){
				$('#frmAdd').attr("src","EmployAction_toadd");
			}
	

			function myToUpd(id){
				$('#frmUpd').attr("src","EmployAction_toUpd?id="+id);
			}
	  </script>
</head>

<body>
                                            <div class="table-container">
                                                <div class="row ">


                                                </div>
                <div class="widget">


                <div class="widget-head">
                  <div class="pull-left">个人账户列表</div>
                  <div class="widget-icons pull-right">
                    <a href="#" class="wminimize"><i class="icon-chevron-up"></i></a> 
                    <a href="#" class="wclose"><i class="icon-remove"></i></a>
                  </div>  
                  <div class="clearfix"></div>
                </div>

                  <div class="widget-content">

                    <table class="table table-striped table-bordered table-hover" id="example-export" >
                      <thead>
                        <tr>
                          <th>ID</th>
                          <th>卡号</th>
                          <th>姓名</th>
                          <th>余额</th>
                          <th>开户时间</th>
                          <th>操作</th>
                        </tr>
                      </thead>
                      <tbody>

					<c:forEach items="${accounts}" var="s">
							<tr>
								<th>${s.id}</th>
								<th>${s.accNum}</th>
								<th>${s.username}</th>
								<th>${s.banlance}</th>
								<th><fmt:formatDate value="${s.registedate}" pattern="yyyy-MM-dd  HH:mm:ss"/></th>
								<th>
	                              <a class="btn btn-xs btn-success"   href="javascript:Toshow('${s.id}');"  ><i class="icon-ok"></i> </a>
					                               <c:choose>
												<c:when test="${admin!=null}">
	                              <a class="btn btn-xs btn-danger"   href="javascript:delAcc('${s.id}');"  ><i class="icon-remove"></i> </a>
												</c:when>
												<c:otherwise>
												</c:otherwise>
											</c:choose>
	                          </th>
							</c:forEach>
	                          
                        </tr>
                                                          

                      </tbody>
                    </table>

                    <div class="widget-foot">


                     
                      <div class="clearfix"></div> 

                    </div>

                  </div>

                </div>
	
		

<!-- JS -->
	<script src="js/jquery.js"></script>
	<script src="js/bootstrap.js"></script>

    <script src="vendors/tableExport/tableExport.js"></script>
    <script src="vendors/tableExport/jquery.base64.js"></script>
    <script src="vendors/tableExport/html2canvas.js"></script>
    <script src="vendors/tableExport/jspdf/libs/sprintf.js"></script>
    <script src="vendors/tableExport/jspdf/jspdf.js"></script>
    <script src="vendors/tableExport/jspdf/libs/base64.js"></script>
    <script src="js/table-export.js"></script>
</body>
</html>