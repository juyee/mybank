<!DOCTYPE html>
<html lang="en">
<head>
  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  <meta charset="utf-8">
  <!-- Title and other stuffs -->
  <title>开设账户页面 </title> 
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
                <i class="icon-lock"></i> 网上银行开户
              </div>
              <div class="widget-content">
                <div class="padd">
                  
                  <form class="form-horizontal" action="UserAction_add" method="post" >
                    <!-- Registration form starts -->
                                      <!-- Name -->
                                          <div class="form-group">
                                            <label class="control-label col-lg-3" for="name" name="user.name">客户姓名</label>
                                            <div class="col-lg-9">
                                              <input type="text" class="form-control" id="name">
                                            </div>
                                          </div>   
                                          <!-- Email -->
                                          <div class="form-group">
                                            <label class="control-label col-lg-3" for="email">客户邮箱</label>
                                            <div class="col-lg-9">
                                              <input type="text" class="form-control" id="email"  name="user.email">
                                            </div>
                                          </div>                                          <div class="form-group">
                                            <label class="control-label col-lg-3" for="email">客户地址</label>
                                            <div class="col-lg-9">
                                              <input type="text" class="form-control" name="user.address">
                                            </div>
                                          </div>                                          
										  <div class="form-group">
                                            <label class="control-label col-lg-3" for="email">身份证号</label>
                                            <div class="col-lg-9">
                                              <input type="text" class="form-control" name="shenfenzheng">
                                            </div>
                                          </div>
                                          <!-- Select box -->
                                          <div class="form-group">
                                            <label class="control-label col-lg-3">性 别</label>
                                            <div class="col-lg-9" id="sex">                               
                                                <select class="form-control" name="user.sex">
                                                <option>&nbsp;</option>
                                                <option>男</option>
                                                <option>女</option>
                                                </select>  
                                            </div>
                                          </div>                                           
                                          <!-- Username -->
                                          <div class="form-group">
                                            <label class="control-label col-lg-3" for="username">登录名称</label>
                                            <div class="col-lg-9">
                                              <input type="text" class="form-control" name="user.loginname">
                                            </div>
                                          </div>
                                          <!-- Password -->
                                          <div class="form-group">
                                            <label class="control-label col-lg-3" for="email">密码</label>
                                            <div class="col-lg-9">
                                              <input type="password" class="form-control" name="user.password">
                                            </div>
                                          </div>
                                          <!-- Accept box and button s-->
                                          <div class="form-group">
                                            <div class="col-lg-9 col-lg-offset-3">
											  <div class="checkbox">
                                              <label>
                                                <input type="checkbox"> 已经确认过用户信息真实性
                                              </label>
											  </div>
                                              <br/>
                                              <button type="submit" class="btn btn-danger">开户</button>
                                              <button type="reset" class="btn btn-success">重新输入客户信息</button>
                                            </div>
                                          </div>
										  <br />
                  </form>
                </div>
              </div>
                <div class="widget-foot">
                  取消开户? <a href="teller_index.jsp">返回管理页面</a>
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