
<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title><?php echo APP_NAME.' | Lupa Password'; ?></title>
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
    <!-- iCheck -->
    <link rel="stylesheet" href="<?php echo site_url("assets/plugins/iCheck/square/blue.css");?>">
    <link rel="stylesheet" href="<?php echo site_url("assets/app/css/custom.css");?>">

    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
        <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
  </head>
  <body class="hold-transition login-page">
    <div class="login-box">
      <div class="login-logo"></div><!-- /.login-logo -->
      <div class="login-box-body">
        <div class="text-center">
          <img src="<?php echo site_url("assets/dist/img/logo.png");?>" class="img-logo"/>
          <h1></h1>
        </div>
        <strong><p class="login-box-msg">Silahkan lengkapi isian form dibawah ini.</p></strong>

        <?php if(!is_null($message)): ?>
        <div class="alert alert-warning alert-dismissable">
            <button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
            <?php echo $message;?>
        </div>
        <?php EndIf; ?>

        <?php echo form_open("auth/forgot_password");?>
          <div class="form-group has-feedback">
            <?php echo form_input($identity);?>
            <span class="glyphicon glyphicon-envelope form-control-feedback"></span>
          </div>
          <div class="row">
            <div class="col-md-12">
                <button type="submit" class="btn btn-success btn-block btn-flat">
                  <i class="fa fa-envelope"></i>&nbsp;&nbsp;<?php echo lang('forgot_password_submit_btn');?>
                </button>
            </div>
          </div>
        <?php echo form_close();?>

      </div><!-- /.login-box-body -->
    </div><!-- /.login-box -->

    <!-- jQuery 2.1.4 -->
    <script src="<?php echo site_url("assets/plugins/jQuery/jQuery-2.1.4.min.js");?>"></script>
    <!-- Bootstrap 3.3.5 -->
    <script src="<?php echo site_url("assets/bootstrap/js/bootstrap.min.js");?>"></script>
  </body>
</html>
