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
  <title>客户资料页面 </title> 
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
			function Toshow(id){
				 var  url="UserAction_showById?id="+id;
					location=url;
			}
			function AddAcc(id){
				 var  url="AccountAction_add?id="+id;
					location=url;
			}
				function showAcc(id){
				 var  url="AccountAction_listbyid?id="+id;
					location=url;
			}

			function myToUpd(id){
				location = "UserAction_toupd?id=" + id;
			}
	  </script>
</head>

<body >
 <div class="container">
	<div class="col-md-6"   align="center">
                                    <div class="form-group" >
                                        <div class="text-center mbl"><img src="img/touxiang2.jpg" style="border: 5px solid #fff; box-shadow: 0 2px 3px rgba(0,0,0,0.25);" class="img-circle" />
                                        </div>
                                    </div>

                                    <table class="table table-striped table-hover">
                                        <tbody>
                                            <tr>
                                                <td width="50%">姓名</td>
                                                <td> ${user.name}</td>
                                            </tr>
                                            <tr>
                                                <td width="50%">邮箱</td>
                                                <td>${user.email}</td>
                                            </tr>
                                            <tr>
                                                <td width="50%">性别</td>
                                                <td>${user.sex}</td>
                                            </tr>
                                               <tr>
                                                <td width="50%">地址</td>
                                                <td>${user.address}</td>
                                            </tr>  
                                             <tr>
                                                <td width="50%">可用余额</td>
                                                <td>${user.useableBalance}</td>
                                            </tr>
                                            <tr>
                                                <td width="50%">账户状态</td>
                                                <c:choose>
												<c:when test="${user.state ==0}">
                                                <td><span class="label label-success">未激活</span></td>
												</c:when>
												<c:otherwise>
												  <td><span class="label label-success">已激活</span></td>
												</c:otherwise>
											</c:choose>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td width="50%">登录次数</td>
                                                <td> ${user.logincount}</td>
                                            </tr>
                                               <td width="50%">我的客户经理</td>
                                                <td> ${user.admin.name}</td>
                                            </tr>
                                                 </tr>
                                               <td width="50%">账户激活码</td>
                                                <td><span class="label label-success">${user.remark}</span></td>
                                            </tr>
                                        </tbody>
                                    </table>
                                </div>
                                              <li>
					                               <c:choose>
												<c:when test="${admin!=null}">
							                <p><button type="submit"  class="btn btn-success"  onclick="AddAcc('${user.id}');" ><i class="fa fa-save"></i>一键开账户</button></p>
												</c:when>
												<c:otherwise>
												</c:otherwise>
											</c:choose>
							                <hr />
							                <p><button type="submit" class="btn btn-success" onclick="showAcc('${user.id}');" ><i class="fa fa-save"></i>查看账户列表</button></p>
							                 <hr />
							                 <p><button type="submit" class="btn btn-success" onclick="myToUpd('${user.id}');" ><i class="fa fa-save"></i>&nbsp修 &nbsp改&nbsp 资&nbsp 料</button></p>
							                 </li>
							                  <hr />


<!-- JS -->
	<script src="js/jquery.js"></script>
	<script src="js/bootstrap.js"></script>

    <script src="vendors/chart.js/Chart.min.js"></script>
    <script src="js/charts-chartjs.js"></script>
</body>
</html>