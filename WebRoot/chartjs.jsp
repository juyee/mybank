<!DOCTYPE html>
<html lang="en">
<head>
  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  <meta charset="utf-8">
  <!-- Title and other stuffs -->
  <title>利率趋势页面 </title> 
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

<body>

               <div id="page-wrapper">
                <!--BEGIN TITLE & BREADCRUMB PAGE-->

                <!--END TITLE & BREADCRUMB PAGE-->
                <!--BEGIN CONTENT-->
                <div class="page-content">
                        <div class="col-lg-24">
                            <div class="portlet box">
                                <div class="portlet-header">
                                    <div class="caption">利率趋势曲线图</div>
                                    <div class="tools"><i class="fa fa-chevron-up"></i><i data-toggle="modal" data-target="#modal-config" class="fa fa-cog"></i><i class="fa fa-refresh"></i><i class="fa fa-times"></i>
                                    </div>
                                </div>
                                <div class="portlet-body">
                                    <canvas id="line-chart" width="800" height="400" style="height: 400px !important"></canvas>
                                </div>
                            </div>
							<!--
                            <div class="portlet box">
                                <div class="portlet-header">
                                    <div class="caption">柱状图</div>
                                    <div class="tools"><i class="fa fa-chevron-up"></i><i data-toggle="modal" data-target="#modal-config" class="fa fa-cog"></i><i class="fa fa-refresh"></i><i class="fa fa-times"></i>
                                    </div>
                                </div>
                                <div class="portlet-body">
                                    <canvas id="bar-chart" width="600" height="400" style="height: 400px !important"></canvas>
                                </div>
                            </div>
                          -->
                        </div>       
                </div>
                <!--END CONTENT-->
            </div>
	
		

<!-- JS -->
	<script src="js/jquery.js"></script>
	<script src="js/bootstrap.js"></script>

    <script src="vendors/chart.js/Chart.min.js"></script>
    <script src="js/charts-chartjs.js"></script>
</body>
</html>