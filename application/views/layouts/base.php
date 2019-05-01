<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title><?php echo APP_NAME.' | '.$this->template->title->default("Default title"); ?></title>
    <!-- Tell the browser to be responsive to screen width -->
    <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
    <meta name="csrf-token-name" content="<?php echo $this->security->get_csrf_token_name() ?>">
    <meta name="csrf-token-value" content="<?php echo $this->security->get_csrf_hash() ?>">
    <meta name="base-url" content="<?php echo base_url();?>">
    <meta name="api-token" content="<?php echo getUserApiToken();?>">
    <?php echo $this->template->permissions; ?>
    <?php $this->load->view("layouts/css"); ?>

    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
        <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
</head>

<body class="hold-transition skin-blue sidebar-mini fixed">
    <div class="wrapper">

        <?php $this->load->view("layouts/header"); ?>
        <!-- Left side column. contains the logo and sidebar -->
        <?php $this->load->view("layouts/main-sidebar"); ?>

        <!-- Content Wrapper. Contains page content -->
        <div class="content-wrapper">
            <?php echo $this->template->content; ?>
        </div><!-- /.content-wrapper -->
        <?php $this->load->view("layouts/footer"); ?>
        <!-- Add the sidebar's background. This div must be placed
           immediately after the control sidebar -->
        <div class="control-sidebar-bg"></div>
    </div><!-- ./wrapper -->

    <?php $this->load->view("layouts/javascript"); ?>    
    <?php echo $this->template->javascript; ?>
</body>

</html>