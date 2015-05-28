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
  <title>转账页面 </title> 
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
  
  
    <script type="text/javascript">
        function isenough(){
		    var password= document.getElementById("password").value;
		   if(password==""){
			   	   alert("请输入交易密码");
		   }
   }
  
  </script>
  
</head>

<body>
  <div class="container">
    <div class="row">
      <div class="col-lg-12">
        <!-- Widget starts -->
            <div class="widget wred">
              <div class="widget-head">
                <i class="icon-lock"></i> 网上转账
              </div>
              <div class="widget-content">
                <div class="padd">
                  
                  <form class="form-horizontal" action="RecordAction_doexchange" method="post" >
                    <!-- Registration form starts -->
                                      <!-- Name -->
                                          <div class="form-group">
                                            <label class="control-label col-lg-3" for="name" >对方账号</label>
                                            <div class="col-lg-9">
                                              <input type="text" class="form-control" id="name"   name="toaccount" >
                                            </div>
                                          </div>
                                          <div class="form-group">
                                            <label class="control-label col-lg-3" for="name"    >转出账号</label>
                                            <div class="col-lg-9">
                                              <input type="text" class="form-control" id="name"  name="fromaccount"  value="${acc}">
                                            </div>
                                          </div> 
                                            <div class="form-group">
                                            <label class="control-label col-lg-3" for="name"   >转出账户户名</label>
                                            <div class="col-lg-9">
                                              <input type="text" class="form-control" id="name"  name="accountname"  value="${inuser.name}">
                                            </div>
                                          </div>         
                                          <!-- Email -->
                                          <div class="form-group">
                                            <label class="control-label col-lg-3" for="email">转账金额</label>
                                            <div class="col-lg-9">
                                              <input type="text" class="form-control" name="balance"  placeholder="RMB" > 
                                            </div>
                                          </div> 
										   <div class="form-group">
                                            <label class="control-label col-lg-3" for="email">转出账户余额</label>
                                            <div class="col-lg-9">
                                              <input type="text" class="form-control" id="email"   placeholder="${inuser.useableBalance }">
                                            </div>
                                          </div>                                     
                                          <!-- Username -->
                                          <!-- Password -->
                                          <div class="form-group">
                                            <label class="control-label col-lg-3" for="email">交易密码</label>
                                            <div class="col-lg-9">
                                              <input type="password" class="form-control"  id="password" name="user.password">
                                            </div>
                                          </div>
                                          <!-- Accept box and button s-->
                                          <div class="form-group">
                                            <div class="col-lg-9 col-lg-offset-3">
											  <div class="checkbox">
                                              <label>
                                              </label>
											  </div>
                                              <br/>
                                              <button type="submit" class="btn btn-danger"  onmouseover="isenough()">转账</button>
                                              <button type="reset" class="btn btn-success">重新输入</button>
                                            </div>
                                          </div>
										  <br />
                  </form>
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