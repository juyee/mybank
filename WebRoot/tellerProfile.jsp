<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html lang="zh-CN">
<head>
  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  <meta charset="utf-8">
  <!-- Title and other stuffs -->
  <title>柜员资料页面 </title> 
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

<body >
 <div class="container">
	<div class="col-md-6"   align="center">
                                    <div class="form-group" >
                                        <div class="text-center mbl"><img src="img/touxiang.jpg" style="border: 5px solid #fff; box-shadow: 0 2px 3px rgba(0,0,0,0.25);" class="img-circle" />
                                        </div>
                                    </div>
                                    <table class="table table-striped table-hover">
                                        <tbody>
                                            <tr>
                                                <td width="50%">姓名</td>
                                                <td>${admin.name}</td>
                                            </tr>
                                            <tr>
                                                <td width="50%">登录名</td>
                                                <td>${admin.loginname}</td>
                                            </tr>
                                            <tr>
                                                <td width="50%">性别</td>
                                                <td>${admin.sex}</td>
                                            </tr>
                                            <tr>
                                                <td width="50%">账号状态</td>
                                                <td><span class="label label-success">激活</span>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td width="50%">工作年限</td>
                                                <td> ${admin.workinglife}</td>
                                            </tr>
                                            <tr>
                                                <td width="50%">生日</td>
                                                <td> <fmt:formatDate value="${admin.birthdate}" pattern="yyyy-MM-dd" /></td>
                                            </tr>
                                        </tbody>
                                    </table>
                                </div>
		   </div>

<!-- JS -->
	<script src="js/jquery.js"></script>
	<script src="js/bootstrap.js"></script>

    <script src="vendors/chart.js/Chart.min.js"></script>
    <script src="js/charts-chartjs.js"></script>
</body>
</html>