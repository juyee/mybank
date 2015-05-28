<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="zh-CN">
    <head>
        <meta charset="utf-8" />
        <title></title>

		  <link href="style/bootstrap.css" rel="stylesheet">
		  <link rel="stylesheet" href="style/font-awesome.css">
		  <link href="style/style.css" rel="stylesheet">
		  <link href="style/bootstrap-responsive.css" rel="stylesheet">
		<script type="text/javascript">
		$(function(){
			$('#btnLogin').click(function(){
				$('#formLogin').submit();
			});
		})
		
		</script>
    </head>
	<body class="login-layout">

	<div class="admin-form">
  <div class="container">

    <div class="row">
      <div class="col-md-12">
        <!-- Widget starts -->
        <h1 class="header blue lighter bigger" align="center">
												银行基本业务仿真系统
											</h1>
											  <h2 class="header blue lighter bigger" align="right">
												<a href="login_user.jsp" align="right">个人登录</a>/柜员登录
											</h2>
            <div class="widget worange">
              <!-- Widget head -->
              <div class="widget-head">
                <i class="icon-lock"></i> 登录
              </div>

              <div class="widget-content">
                <div class="padd">
                  <!-- Login form -->
                  <form class="form-horizontal" id="formLogin" action="AdminAction_login" method="post">
                    <!-- Email -->
                    <div class="form-group">
                      <label class="control-label col-lg-3" for="inputEmail">账号</label>
                      <div class="col-lg-9">
                        <input type="text" class="form-control" id="inputEmail" name="loginname"  placeholder=" 请在此输入">
                      </div>
                    </div>
                    <!-- Password -->
                    <div class="form-group">
                      <label class="control-label col-lg-3" for="inputPassword">密码</label>
                      <div class="col-lg-9">
                        <input type="password" class="form-control" id="inputPassword" name="password"  placeholder="请输入登录密码">
                      </div>
                    </div>
                    <!-- Remember me checkbox and sign in button -->
                    <div class="form-group">
					<div class="col-lg-9 col-lg-offset-3">
                      <div class="checkbox">
                        <label>
                          <input type="checkbox">记住我
                        </label>
						</div>
					</div>
					</div>
                        <div class="col-lg-9 col-lg-offset-2">
							<button type="submit" id="btnLogin"  class="btn btn-danger">登录</button>
							<button type="reset" class="btn btn-default">重置</button>
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
