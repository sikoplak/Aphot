<header class="main-header">
    <!-- Logo -->
    <a href="<?php echo base_url();?>" class="logo">
        <!-- mini logo for sidebar mini 50x50 pixels -->
        <span class="logo-mini"><b>HRA</b></span>
        <!-- logo for regular state and mobile devices -->
        <span class="logo-lg"><b><?php echo APP_NAME; ?></b></span>
    </a>
    <!-- Header Navbar: style can be found in header.less -->
    <nav class="navbar navbar-static-top" role="navigation">
        <!-- Sidebar toggle button-->
        <a href="#" class="sidebar-toggle" data-toggle="offcanvas" role="button">
            <span class="sr-only">Toggle navigation</span>
        </a>
        <div class="navbar-custom-menu">
            <ul class="nav navbar-nav">
                <!-- User Account: style can be found in dropdown.less -->
                <li class="dropdown user user-menu">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                        <img src="<?php echo photo();?>" class="user-image"
                            alt="User Image">
                        <span class="hidden-xs"> <?php echo profile()->first_name." ".profile()->last_name; ?></span>
                    </a>
                    <ul class="dropdown-menu">
                        <!-- User image -->
                        <li class="user-header">
                            <img src="<?php echo photo();?>" class="img-circle"
                                alt="User Image">
                            <p>
                                <?php echo profile()->first_name." ".profile()->last_name; ?> - <?php echo roles(); ?>
                            </p>
                        </li>
                        
                        <!-- Menu Footer-->
                        <li class="user-footer">
                            <div class="pull-left">
                                <a href="<?php echo base_url("web/profile");?>" class="btn btn-default btn-flat">Profil Saya</a>
                            </div>
                            <div class="pull-right">
                                <a href="<?php echo base_url("auth/logout");?>" class="btn btn-default btn-flat">Log Out</a>
                            </div>
                        </li>
                    </ul>
                </li>
            </ul>
        </div>
    </nav>
</header>