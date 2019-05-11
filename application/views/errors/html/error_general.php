
<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title><?php echo $status_code; ?> <?php echo $heading; ?></title>
    <!-- Tell the browser to be responsive to screen width -->
    <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
    <!-- Bootstrap 3.3.5 -->
    <link rel="stylesheet" href="<?php echo site_url('assets/bootstrap/css/bootstrap.min.css');?>">
    <!-- Font Awesome -->
    <link rel="stylesheet" href="<?php echo site_url('assets/bootstrap/css/font-awesome.min.css');?>">
    <!-- Ionicons -->
    <link rel="stylesheet" href="<?php echo site_url('assets/bootstrap/css/ionicons.min.css');?>">
    <!-- Theme style -->
    <link rel="stylesheet" href="<?php echo site_url("assets/dist/css/AdminLTE.min.css");?>">
    <link rel="shortcut icon" href="<?php echo site_url("assets/dist/img/logo.png");?>">

    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
        <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
  </head>
  <body class="hold-transition lockscreen">
    <!-- Automatic element centering -->
    <div class="lockscreen-wrapper text-center">
		<h1 class="headline text-danger" style="font-size:200px !important;"> <?php echo $status_code; ?></h1>
		<div style="font-size:20px !important;">
			<p>
         <?php echo $message; ?>
			</p>
		</div>
		<h1></h1>
		<a href="<?php echo base_url();?>" class="btn btn-success">
			<i class="fa fa-home"></i>&nbsp;Kembali Ke Beranda
		</a>
    </div><!-- /.center -->

    <!-- jQuery 2.1.4 -->
    <script src="<?php echo site_url("assets/plugins/jQuery/jQuery-2.1.4.min.js");?>"></script>
    <!-- Bootstrap 3.3.5 -->
    <script src="<?php echo site_url("assets/bootstrap/js/bootstrap.min.js");?>"></script>
  </body>
</html>
