<?php /* Smarty version Smarty-3.1.21-dev, created on 2017-02-11 03:03:53
         compiled from "C:\xampp\htdocs\datebaofront-dev\geekwork\templates\account\index.tpl" */ ?>
<?php /*%%SmartyHeaderCode:6366589c759c73aa28-09635693%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '0afa42904bd51713a994380b316ebbcb569c961a' => 
    array (
      0 => 'C:\\xampp\\htdocs\\datebaofront-dev\\geekwork\\templates\\account\\index.tpl',
      1 => 1486711415,
      2 => 'file',
    ),
    '8914ad3932f41f14fd678cbb4594545fc290ffb6' => 
    array (
      0 => 'C:\\xampp\\htdocs\\datebaofront-dev\\geekwork\\templates\\template\\front.tpl',
      1 => 1486777962,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '6366589c759c73aa28-09635693',
  'function' => 
  array (
  ),
  'version' => 'Smarty-3.1.21-dev',
  'unifunc' => 'content_589c759c790fd3_71384231',
  'has_nocache_code' => false,
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_589c759c790fd3_71384231')) {function content_589c759c790fd3_71384231($_smarty_tpl) {?><!DOCTYPE HTML>
<html>
<head>
    <meta charset="utf-8">
    <title>登录</title>
    <meta name="renderer" content="webkit|ie-comp|ie-stand">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="keywords" content="" />
    <meta name="description" content="" />

    <link rel="shortcut icon" href=""/>
    <link rel="bookmark" href=""/>


    <link href="<?php echo $_smarty_tpl->getConfigVariable('static_path');?>
/css/bootstrap.css" rel="stylesheet">
    <link href="<?php echo $_smarty_tpl->getConfigVariable('static_path');?>
/css/font-awesome/css/font-awesome.css" rel="stylesheet">
    <link href="<?php echo $_smarty_tpl->getConfigVariable('static_path');?>
/css/plugins/blueimp/css/blueimp-gallery.css" rel="stylesheet">
    <link href="<?php echo $_smarty_tpl->getConfigVariable('static_path');?>
/css/plugins/sweetalert/sweetalert.css" rel="stylesheet">
    <link href="<?php echo $_smarty_tpl->getConfigVariable('static_path');?>
/css/plugins/datapicker/datepicker3.css" rel="stylesheet">
    <link href="<?php echo $_smarty_tpl->getConfigVariable('static_path');?>
/css/plugins/steps/jquery.steps.css" rel="stylesheet">
    <link href="<?php echo $_smarty_tpl->getConfigVariable('static_path');?>
/css/plugins/footable/footable.core.css" rel="stylesheet">
    <link href="<?php echo $_smarty_tpl->getConfigVariable('static_path');?>
/css/plugins/morris/morris-0.4.3.css" rel="stylesheet">
    <link href="<?php echo $_smarty_tpl->getConfigVariable('static_path');?>
/css/animate.css"  rel="stylesheet">
    <link href="<?php echo $_smarty_tpl->getConfigVariable('static_path');?>
/css/style.css" rel="stylesheet">
    <link href="<?php echo $_smarty_tpl->getConfigVariable('static_path');?>
/css/home.css" rel="stylesheet">
    <link href="<?php echo $_smarty_tpl->getConfigVariable('static_path');?>
/css/plugins/drag/drag.css" rel="stylesheet">
    <link href="<?php echo $_smarty_tpl->getConfigVariable('static_path');?>
/css/plugins/iCheck/custom.css" rel="stylesheet">
    <link href="<?php echo $_smarty_tpl->getConfigVariable('static_path');?>
/css/plugins/slick/slick.css" rel="stylesheet">
    <link href="<?php echo $_smarty_tpl->getConfigVariable('static_path');?>
/css/plugins/slick/slick-theme.css" rel="stylesheet">

    <!--[if lt IE 9]>
    <div class="alert alert-danger topframe" role="alert">您的浏览器实在<strong>太旧了！</strong>，请先升级完浏览器！
        <a target="_blank" class="alert-link" href="http://browsehappy.com/">立即升级</a>
    </div>
    <![endif]-->

    
    <link href="<?php echo $_smarty_tpl->getConfigVariable('static_path');?>
/css/login.css"  rel="stylesheet">

</head>
<body class="top-navigation gray-bg">
<!--固定定位回到顶部-->

<div class="position-fixed">
    <div class="position-menu">
        <a class="position-icon position-icon-same myclear">
            <i class="position-icon-1"></i>
            <div class="icon-hover hover-font">
                <div>工作日&nbsp;08:00-20:00</div>
                <span class="label label-warning">现在咨询</span>
            </div>
        </a>
        <span class="position-icon position-icon-same myclear">
            <i class="position-icon-2"></i>
            <span class="icon-hover hover-font hover-wechat">
                <img class="hover-wechat-img" src="<?php echo $_smarty_tpl->getConfigVariable('static_path');?>
/images/weixin_erweima.jpg" alt=""/>
            </span>
        </span>
        <span class="position-icon position-icon-same myclear">
            <i class="position-icon-3"></i>
            <span class="icon-hover hover-font form-bg-1">
                <span>工作日&nbsp;08:00-20:00</span>
                <span class="fa fa-phone">&nbsp;400-886-2309</span>
            </span>
        </span>
        <span class="position-icon position-icon-same enter-top">
            <i class="position-icon-5"></i>
        </span>
    </div>
</div>


<!--回到顶部结束-->
<div id="wrapper">
    <div class="gray-bg" id="page-wrapper" style="padding: 0">
    <!--头部内容开始-->
        <?php echo $_smarty_tpl->getSubTemplate ("template/header.tpl", $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, null, array(), 0);?>


        
    <div id="login">
        <img class="bg-img" src="<?php echo $_smarty_tpl->getConfigVariable('static_path');?>
/images/login/enterprise.jpg"  alt="企业登录背景图" style="opacity: 1;">
        <img class="bg-img" src="<?php echo $_smarty_tpl->getConfigVariable('static_path');?>
/images/login/user.jpg" alt="个人用户登录背景图">

        <div class="login-content">
            <div class="login-font">中小企业员工保障</div>

            <div class="loginAll"  onselectstart="return false;" unselectable="on">
                <div class="loginAll-box">

                    <ul id="ins_tabs" class="nav-tabs">
                        <li class="active" id="groupuser">
                            <a data-toggle="tab" href="#tab-1" aria-expanded="true">企业管理员登录</a>
                        </li>
                        <li class="" id="puser">
                            <a data-toggle="tab" href="#tab-2" aria-expanded="false" class="count-info">个人用户登录</a>
                        </li>
                    </ul>

                    <div class="tab-content">
                        <!-- 企业用户登录 -->
                        <div id="tab-1" class="tab-pane active">
                            <div class="alert alert-warning" style="font-size: 13px;">不建议您在公共场所登录或保存登录信息</div>

                            <div class="alert alert-danger alert-dismissable" style="display: none;">
                                <p class="small" id="companyErrorMsgID"></p>
                            </div>

                            <div class="form-group">
                                <label>企业账号</label>
                                <input name="user" id="company_userID" type="text" class="form-control" placeholder="企业账号">
                            </div>

                            <div class="form-group">
                                <label for="passwordID">登录密码</label>
                                <input name="password" id="company_pwdID" type="password" class="form-control" placeholder="密码">
                            </div>

                            <div class="form-group">
                                <label>验证</label>
                                <div class="input-group drag-public" id="dr ag" style="width: 100%;">
                                    <div id="drag" class="drag-public"></div>
                                </div>
                            </div>

                            <input type="hidden" value="1" name="isGroupUser"/>
                            <button type="button" id="company_submit" class="btn btn-warning btn-block">企业用户登录</button>

                            <div class="loginAll-box-bottom text-right small">
                                没有账号？
                                <a href="#" style="border-bottom: 1px solid">企业注册</a>
                            </div>
                        </div>

                        <!-- 个人用户登录 -->
                        <div id="tab-2" class="tab-pane">

                            <div class="alert alert-warning" style="font-size: 13px;">不建议您在公共场所登录或保存登录信息</div>
                            <form id="form_password" name="form" action="/Login/logindo" method="post">
                                <div class="alert alert-danger alert-dismissable" style="display: none;">
                                    <p class="small" id="errorMsgID"></p>
                                </div>
                                <div class="form-group">
                                    <label>登录名称</label>
                                    <input name="user" id="userID" type="text" class="form-control" placeholder="账号 / 手机号码 / 身份证">
                                </div>
                                <div class="form-group">
                                    <label for="passwordID">登录密码</label>
                                    <input name="password" id="passwordID" type="password" class="form-control" placeholder="密码">
                                </div>
                                <div class="form-group">
                                    <label>验证</label>

                                    <div class="input-group">
                                        <div id="drag2" class="drag-public" style="width: 340px"></div>
                                    </div>
                                </div>
                                <input name="fromURL" type="hidden" value="/login/reg" />
                                <button type="button" id="user_submit" class="btn btn-warning btn-block">个人用户登录</button>
                            </form>

                            <div class="loginAll-box-bottom text-right small">
                                <a href="#" style="border-bottom: 1px solid">忘记密码?</a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <input type="hidden" id="redirect" value="<?php echo $_smarty_tpl->tpl_vars['data']->value['redirect'];?>
" >


        <?php echo $_smarty_tpl->getSubTemplate ("template/footer.tpl", $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, null, array(), 0);?>

    </div>
</div>


<?php echo '<script'; ?>
 src="<?php echo $_smarty_tpl->getConfigVariable('static_path');?>
/js/plugins/jquery-2.1.1.js"><?php echo '</script'; ?>
>
<?php echo '<script'; ?>
 src="<?php echo $_smarty_tpl->getConfigVariable('static_path');?>
/js/plugins/bootstrap.min.js"><?php echo '</script'; ?>
>
<?php echo '<script'; ?>
 src="<?php echo $_smarty_tpl->getConfigVariable('static_path');?>
/js/plugins/metisMenu/jquery.metisMenu.js"><?php echo '</script'; ?>
>
<?php echo '<script'; ?>
 src="<?php echo $_smarty_tpl->getConfigVariable('static_path');?>
/js/plugins/slimscroll/jquery.slimscroll.min.js"><?php echo '</script'; ?>
>
<?php echo '<script'; ?>
 src="<?php echo $_smarty_tpl->getConfigVariable('static_path');?>
/js/topup.js"><?php echo '</script'; ?>
>
<?php echo '<script'; ?>
 src="<?php echo $_smarty_tpl->getConfigVariable('static_path');?>
/js/zzsc.js"><?php echo '</script'; ?>
>

<?php echo '<script'; ?>
 src="<?php echo $_smarty_tpl->getConfigVariable('static_path');?>
/js/igCustom.js"><?php echo '</script'; ?>
>

<?php echo '<script'; ?>
 src="<?php echo $_smarty_tpl->getConfigVariable('static_path');?>
/js/ig_common.js"><?php echo '</script'; ?>
>
<?php echo '<script'; ?>
 src="<?php echo $_smarty_tpl->getConfigVariable('static_path');?>
/js/plugins/dataTables/jquery.dataTables.js"><?php echo '</script'; ?>
>
<?php echo '<script'; ?>
 src="<?php echo $_smarty_tpl->getConfigVariable('static_path');?>
/js/plugins/dataTables/dataTables.bootstrap.js"><?php echo '</script'; ?>
>
<?php echo '<script'; ?>
 src="<?php echo $_smarty_tpl->getConfigVariable('static_path');?>
/js/plugins/iCheck/icheck.min.js"><?php echo '</script'; ?>
>
<?php echo '<script'; ?>
 src="<?php echo $_smarty_tpl->getConfigVariable('static_path');?>
/js/plugins/datapicker/bootstrap-datepicker.js"><?php echo '</script'; ?>
>
<?php echo '<script'; ?>
 src="<?php echo $_smarty_tpl->getConfigVariable('static_path');?>
/js/plugins/sweetalert/sweetalert.min.js"><?php echo '</script'; ?>
>
<?php echo '<script'; ?>
 src="<?php echo $_smarty_tpl->getConfigVariable('static_path');?>
/js/plugins/blueimp/jquery.blueimp-gallery.min.js"><?php echo '</script'; ?>
>
<?php echo '<script'; ?>
 src="<?php echo $_smarty_tpl->getConfigVariable('static_path');?>
/js/plugins/staps/jquery.steps.min.js"><?php echo '</script'; ?>
>
<?php echo '<script'; ?>
 src="<?php echo $_smarty_tpl->getConfigVariable('static_path');?>
/js/plugins/footable/footable.all.min.js"><?php echo '</script'; ?>
>
<?php echo '<script'; ?>
 src="<?php echo $_smarty_tpl->getConfigVariable('static_path');?>
/js/inspinia.js"><?php echo '</script'; ?>
>
<?php echo '<script'; ?>
 src="<?php echo $_smarty_tpl->getConfigVariable('static_path');?>
/js/plugins/pace/pace.min.js"><?php echo '</script'; ?>
>
<?php echo '<script'; ?>
 src="<?php echo $_smarty_tpl->getConfigVariable('static_path');?>
/js/plugins/slick/slick.min.js"><?php echo '</script'; ?>
>
<?php echo '<script'; ?>
 src="<?php echo $_smarty_tpl->getConfigVariable('static_path');?>
/js/plugins/drag/drag.js"><?php echo '</script'; ?>
>


    <?php echo '<script'; ?>
 src="<?php echo $_smarty_tpl->getConfigVariable('static_path');?>
/js/login/login02.js"><?php echo '</script'; ?>
>


<?php echo '<script'; ?>
>
    var url1 = window.location.href;
    if (url1.indexOf('/puser/1') >= 0)
    {
        $("#login img").css("opacity","2");
        $('#groupuser').removeClass("active");
        $('#tab-1').removeClass("active");
        $('#puser').addClass("active");
        $('#tab-2').addClass("active");
    }
<?php echo '</script'; ?>
>
</body>
</html><?php }} ?>
