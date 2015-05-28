<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%><!DOCTYPE html>
<html lang="en">
<head>
  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  <meta charset="utf-8">
  <!-- Title and other stuffs -->
  <title>储户存款页面 </title> 
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
</head>

<body>

<div class="admin-form">
  <div class="container">
    <div class="row">
      <div class="col-lg-12">
        <!-- Widget starts -->
            <div class="widget wred">
              <div class="widget-head">
                <i class="icon-lock"></i> 网上银行存款
              </div>
              <div class="widget-content">
                <div class="padd">
                  
                   <form class="form-horizontal" action="RecordAction_toin" method="post" >
                    <!-- Registration form starts -->
                                      <!-- Name -->
                                          <div class="form-group">
                                            <label class="control-label col-lg-3" for="name" >账号</label>
                                            <div class="col-lg-6">
                                              <input type="text" class="form-control" id="name"  name="toaccount"  value="${acc}">
                                            </div>
                                            </div>
                                          <div class="form-group">
                                            <label class="control-label col-lg-3" for="name" >金额</label>
                                            <div class="col-lg-6">
                                              <input type="text" class="form-control" id="name"  name="balance"  placeholder="RMB" > 
                                            </div>
                                          </div>   
                                          <!-- Email -->
										    <div class="form-group">
                                            <label class="control-label col-lg-3" for="email">客户名称</label>
                                            <div class="col-lg-9">
                                              <input type="text" class="form-control" placeholder="${quuser.name }">
                                            </div>
                                          </div>     
                                          <!-- Password -->
                                          <div class="form-group">
                                            <label class="control-label col-lg-3" for="email">交易密码</label>
                                            <div class="col-lg-9">
                                              <input type="password" class="form-control" name="password">
                                            </div>
                                          </div>
                                          <!-- Accept box and button s-->
                                          <div class="form-group">
                                            <div class="col-lg-9 col-lg-offset-3">
											  
                                              <br/>
                                              <button type="submit" class="btn btn-danger">确认存款</button>
                                              <button type="reset" class="btn btn-success">重置</button>
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
<script src="js/jquery.js"></script>
<script src="js/bootstrap.js"></script>

</body>


</html>