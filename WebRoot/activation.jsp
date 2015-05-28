<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="zh-CN">
<head>
  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  <meta charset="utf-8">
  <!-- Title and other stuffs -->
  <title>用户激活页面 </title> 

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
      function idlength(){
    var n= document.getElementById("name").value;
    var tel= document.getElementById("tel").value;
    var shenfenzheng= document.getElementById("shenfenzheng").value;
    var Code= document.getElementById("Code").value;
    var loginname= document.getElementById("loginname").value;
    var password= document.getElementById("password").value;
    if(n==""||tel==""||shenfenzheng==""||Code==""||loginname==""||password==""){
     alert("请将信息填写完整");
    }
   }
      </script>
</head>

<body>

<div class="admin-form">
  <div class="container">
    <div class="row">
      <div class="col-lg-12">
        <!-- Widget starts -->
            <div class="widget wred">
              <div class="widget-head">
                <i class="icon-lock"></i> 首次登录网上银行激活
              </div>
              <div class="widget-content">
                <div class="padd">
                  
                  <form class="form-horizontal"   action="UserAction_active" method="post"> 
                    <!-- Registration form starts -->
                                      <!-- Name -->
                                          <div class="form-group">
                                            <label class="control-label col-lg-3" for="name">姓名</label>
                                            <div class="col-lg-9">
                                              <input type="text" class="form-control" id="name" name="name">
                                            </div>
                                          </div>   
                                          <!-- 预留手机号 -->
                                          <div class="form-group">
                                            <label class="control-label col-lg-3" for="tel">手机号码</label>
                                            <div class="col-lg-9">
                                              <input type="text" class="form-control" id="tel" name=”tel">
                                            </div>
                                            </div>
										  <div class="form-group">
                                            <label class="control-label col-lg-3" for="email">身份证号</label>
                                            <div class="col-lg-9">
                                              <input type="text" class="form-control" id="shenfenzheng" name="IDcardNum">
                                            </div>
                                            </div>
                                            
										  <div class="form-group">
                                            <label class="control-label col-lg-3" for="email">激活密钥</label>
                                            <div class="col-lg-9">
                                              <input type="text" class="form-control" id="Code" name="Code">
                                            </div>
                                          </div>                                                                              
                                          <!-- Username -->
                                          <div class="form-group">
                                            <label class="control-label col-lg-3" for="username">登录名称</label>
                                            <div class="col-lg-9">
                                              <input type="text" class="form-control" id="loginname"  name="loginname">
                                            </div>
                                          </div>
                                          <!-- Password -->
                                          <div class="form-group">
                                            <label class="control-label col-lg-3" for="email">密码</label>
                                            <div class="col-lg-9">
                                              <input type="password" class="form-control" id="password"  name="password">
                                            </div>
                                          </div>
                                          <!-- Accept box and button s-->
                                          <div class="form-group">
                                            <div class="col-lg-9 col-lg-offset-3">
                                              <br />
                                              <button type="submit" class="btn btn-danger" onmouseover="idlength()">我要激活</button>
                                              <button type="reset" class="btn btn-success">重新输入用户信息</button>
                                            </div>
                                          </div>
										  <br />
                  </form>

                </div>
              </div>
                <div class="widget-foot">
                  <h3 >以上信息用于验证激活网上银行，请如实填写</h3> <a href="login.html"></a>
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