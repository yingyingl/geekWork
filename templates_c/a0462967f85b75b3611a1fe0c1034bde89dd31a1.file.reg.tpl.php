<?php /* Smarty version Smarty-3.1.21-dev, created on 2017-02-10 08:24:44
         compiled from "C:\xampp\htdocs\datebaofront-dev\geekwork\templates\account\reg.tpl" */ ?>
<?php /*%%SmartyHeaderCode:27039589d69e95d8c15-35428357%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    'a0462967f85b75b3611a1fe0c1034bde89dd31a1' => 
    array (
      0 => 'C:\\xampp\\htdocs\\datebaofront-dev\\geekwork\\templates\\account\\reg.tpl',
      1 => 1486711447,
      2 => 'file',
    ),
    '8914ad3932f41f14fd678cbb4594545fc290ffb6' => 
    array (
      0 => 'C:\\xampp\\htdocs\\datebaofront-dev\\geekwork\\templates\\template\\front.tpl',
      1 => 1486711384,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '27039589d69e95d8c15-35428357',
  'function' => 
  array (
  ),
  'version' => 'Smarty-3.1.21-dev',
  'unifunc' => 'content_589d69e96e5743_38463501',
  'has_nocache_code' => false,
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_589d69e96e5743_38463501')) {function content_589d69e96e5743_38463501($_smarty_tpl) {?><!DOCTYPE HTML>
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
/images/login/enterprise.jpg" alt="企业登录背景图" style="opacity: 1;">
        <img class="bg-img" src="<?php echo $_smarty_tpl->getConfigVariable('static_path');?>
/images/login/user.jpg" alt="个人用户登录背景图">
        
        <div class="login-content">
            <div class="login-font">
                中小企业员工保障
            </div>
            <div class="loginAll login-register">
                <div class="loginAll-box">
                    <div class="tab-content">
                        <p class="text-center" style="font-size: 18px">企业用户注册</p>
                        <div id="tab-1" class="tab-pane active">
                            <div class="alert alert-warning" id="RegStateIDEnterprise">
                                为了保护企业利益，方便您以后的操作，请填写真实信息，我们承诺对您填写的的信息严格保密绝不外泄！
                            </div>
                            <div class="alert alert-danger" style="display: none;padding-top: 0px">
                                <h2 style="margin-top: 10px;"><i class="fa fa-times-circle"></i> 注册失败！</h2>
                                <span id="errorMsgIDEnterprise">用户名已被使用!</span>
                            </div>
                            <form id="formRegEnterprise" name="form" action="http://www.insgeek.com/login/groupRegDo" method="post" class="form-horizontal">
                                <div class="form-group">
                                    <label for="groupAccountIDEnterprise" class="col-sm-4 control-label">企业账号：</label>
                                    <div class="col-sm-8"><input name="group_account" id="groupAccountIDEnterprise" type="text" class="form-control" placeholder="企业账号"></div>
                                </div>
                                <div class="form-group">
                                    <label for="mobileID" class="col-sm-4 control-label">手机号码：</label>
                                    <div class="col-sm-8">
                                        <div class="input-group">
                                            <input type="text" class="form-control" id="mobileID" placeholder="手机号码" maxlength="11" name="mobile">
                                            <span class="input-group-btn"> <button type="button" class="btn btn-primary" id="setMobileVerifyID">发送验证码</button></span>
                                        </div>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label for="codeID" class="col-sm-4 control-label">验&nbsp;&nbsp;证&nbsp;&nbsp;码：</label>
                                    <div class="col-sm-8"><input name="code" id="codeID" type="text" class="form-control" maxlength="4" placeholder="验证码"></div>
                                </div>
                                <div class="form-group">
                                    <label for="passwordIDEnterprise" class="col-sm-4 control-label">登录密码：</label>
                                    <div class="col-sm-8"><input name="password" id="passwordIDEnterprise" type="password"
                                                                 class="form-control" placeholder="8位以上字母和数字组合"></div>
                                </div>
                                <div class="form-group">
                                    <label for="repeatIDEnterprise" class="col-sm-4 control-label">确认密码：</label>
                                    <div class="col-sm-8"><input name="repeat" id="repeatIDEnterprise" type="password"
                                                                 class="form-control" placeholder="确认您的登录密码"></div>
                                </div>
                                <div class="form-group">
                                    <div class="checkbox" style="padding-left:35px">
                                        <label>
                                            <input type="checkbox" value="" checked="checked">
                                            同意 <a href="../help/view/cid/16.html" tppabs="http://www.insgeek.com/help/view/cid/16.html" target="_blank" class="reg-agreement">《保险极客注册协议》</a>
                                        </label>
                                    </div>
                                </div>
                                <button type="button" id="form_submit_enterprise" class="btn btn-warning btn-block">注册企业用户</button>
                            </form>
                            <div class="loginAll-box-bottom text-right small">
                                已有账号？ <a href="index.htm" tppabs="http://www.insgeek.com/Login/" style="border-bottom: 1px solid">立即登录</a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>


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
/js/common_ajax.js"><?php echo '</script'; ?>
>
<?php echo '<script'; ?>
 src="<?php echo $_smarty_tpl->getConfigVariable('static_path');?>
/js/igCustom.js"><?php echo '</script'; ?>
>
<?php echo '<script'; ?>
 src="<?php echo $_smarty_tpl->getConfigVariable('static_path');?>
/js/vuejs/vue.js"><?php echo '</script'; ?>
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
/js/verifyMob.js"><?php echo '</script'; ?>
>
    <?php echo '<script'; ?>
 src="<?php echo $_smarty_tpl->getConfigVariable('static_path');?>
/js/login/reg.js"><?php echo '</script'; ?>
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
