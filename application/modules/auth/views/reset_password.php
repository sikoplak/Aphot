
<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title><?php echo APP_NAME.' | Reset Password'; ?></title>
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

    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
        <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
  </head>
  <body class="hold-transition login-page">
    <div class="login-box">
      <div class="login-logo">
        <a href="<?php echo base_url();?>"><b><?php echo APP_NAME; ?></b></a>
      </div><!-- /.login-logo -->
      <div class="login-box-body">
        <p class="login-box-msg">Silahkan lengkapi isian form dibawah ini.</p>

        <?php if(!is_null($message)): ?>
        <div class="alert alert-warning alert-dismissable">
            <button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
            <?php echo $message;?>
        </div>
        <?php EndIf; ?>

        <?php echo form_open('auth/reset_password/' . $code);?>

        <?php echo form_input($user_id);?>
	    <?php echo form_hidden($csrf); ?>
          <div class="form-group has-feedback">
            <?php echo form_input($new_password);?>
            <span class="glyphicon glyphicon-lock form-control-feedback"></span>
          </div>
          <div class="form-group has-feedback">
            <?php echo form_input($new_password_confirm);?>
            <span class="glyphicon glyphicon-lock form-control-feedback"></span>
          </div>
          <div class="row">
            <div class="col-md-12">
                <button type="submit" class="btn btn-primary btn-block btn-flat"><?php echo lang('forgot_password_submit_btn');?></button>
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
