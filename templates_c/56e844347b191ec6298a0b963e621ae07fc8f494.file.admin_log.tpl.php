<?php /* Smarty version Smarty-3.1.21-dev, created on 2017-02-15 22:33:17
         compiled from "/Users/lorine/Documents/workspace/datebaofront-dev/geekwork/templates/DataStatistics/admin_log.tpl" */ ?>
<?php /*%%SmartyHeaderCode:204009707758a45f0fa4a126-60009801%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '56e844347b191ec6298a0b963e621ae07fc8f494' => 
    array (
      0 => '/Users/lorine/Documents/workspace/datebaofront-dev/geekwork/templates/DataStatistics/admin_log.tpl',
      1 => 1487169193,
      2 => 'file',
    ),
    '068ce81b3254a2ee0fd79b3bac2e49a13fe7245f' => 
    array (
      0 => '/Users/lorine/Documents/workspace/datebaofront-dev/geekwork/templates/template/front.tpl',
      1 => 1487069077,
      2 => 'file',
    ),
    '62f07d2ce8a24b0afa806b30fd784a6cf96e65ac' => 
    array (
      0 => '/Users/lorine/Documents/workspace/datebaofront-dev/geekwork/templates/template/sidebar.tpl',
      1 => 1487167671,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '204009707758a45f0fa4a126-60009801',
  'function' => 
  array (
  ),
  'version' => 'Smarty-3.1.21-dev',
  'unifunc' => 'content_58a45f0fab3aa8_78668166',
  'has_nocache_code' => false,
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_58a45f0fab3aa8_78668166')) {function content_58a45f0fab3aa8_78668166($_smarty_tpl) {?><!DOCTYPE HTML>
<html>
<head>
    <meta charset="utf-8">
    <title>报销统计</title>
    <meta name="renderer" content="webkit|ie-comp|ie-stand">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="keywords" content="" />
    <meta name="description" content="" />

    <link rel="shortcut icon" href=""/>
    <link rel="bookmark" href=""/>


    <link href="<?php echo $_smarty_tpl->getConfigVariable('static_path');?>
/css/bootstrap.css" rel="stylesheet">
    <link href="<?php echo $_smarty_tpl->getConfigVariable('static_path');?>
/css/plugins/font-awesome.css" rel="stylesheet">  <!--图标样式-->
    <link href="<?php echo $_smarty_tpl->getConfigVariable('static_path');?>
/css/plugins/sweetalert.css" rel="stylesheet">    <!-- 确认弹窗 -->

    
    <link href="<?php echo $_smarty_tpl->getConfigVariable('static_path');?>
/css/animate.css"  rel="stylesheet">
    <link href="<?php echo $_smarty_tpl->getConfigVariable('static_path');?>
/css/style.css" rel="stylesheet">
    <link href="<?php echo $_smarty_tpl->getConfigVariable('static_path');?>
/css/home.css" rel="stylesheet">
    <link href="<?php echo $_smarty_tpl->getConfigVariable('static_path');?>
/css/plugins/drag/drag.css" rel="stylesheet">


    <!--[if lt IE 9]>
    <div class="alert alert-danger topframe" role="alert">您的浏览器实在<strong>太旧了！</strong>，请先升级完浏览器！
        <a target="_blank" class="alert-link" href="http://browsehappy.com/">立即升级</a>
    </div>
    <![endif]-->

    
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


        
    <div class="wrapper wrapper-content">
        <div class="container">
            <div class="row">

                <?php /*  Call merged included template "template/sidebar.tpl" */
$_tpl_stack[] = $_smarty_tpl;
 $_smarty_tpl = $_smarty_tpl->setupInlineSubTemplate("template/sidebar.tpl", $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, null, array(), 0, '204009707758a45f0fa4a126-60009801');
content_58a466adda75e7_50103604($_smarty_tpl);
$_smarty_tpl = array_pop($_tpl_stack); 
/*  End of included template "template/sidebar.tpl" */?>

                <div id="page" data-page="admin_log"></div>

                <div class="col-xs-10">
                    <div class="ibox float-e-margins">
                        <div class="ibox-title">
                            <span>操作记录 </span>
                        </div>

                        <div class="ibox-content" id="userContent">
                            <ul id="ins_tabs" class="nav-tabs">
                                <li class="active"><a data-toggle="tab" href="#tab-1" aria-expanded="true">管理记录</a></li>
                                <li><a data-toggle="tab" href="#tab-2" aria-expanded="false" class="count-info">系统记录</a></li>
                            </ul>

                            <div class="tab-content">
                                <div class="tab-pane active iboxlist" id="tab-1"  data-type="1" data-id="1" data-load="true">
                                    <p class="ajax-loading"></p>

                                    <table class="table table-hover">
                                        <thead><tr><th>操作内容</th><th style="width:120px;">操作结果</th><th>操作时间</th></tr></thead>
                                        <tbody></tbody>
                                    </table>

                                    <div class="pagination-list clearfix" id="pagination1"></div>
                                </div>

                                <div class="tab-pane iboxlist" id="tab-2"  data-type="0" data-id="0" data-load="true">
                                    <p class="ajax-loading"></p>

                                    <table class="table table-hover">
                                        <thead><tr><th>操作内容</th><th>操作时间</th></tr></thead>
                                        <tbody></tbody>
                                    </table>

                                    <div class="pagination-list clearfix" id="pagination0"></div>
                                </div>
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
>  <!-- 鼠标经过效果 以及弹窗 -->
<?php echo '<script'; ?>
 src="<?php echo $_smarty_tpl->getConfigVariable('static_path');?>
/js/plugins/sweetalert.min.js"><?php echo '</script'; ?>
>        <!-- 确认弹窗 -->
<?php echo '<script'; ?>
 src="<?php echo $_smarty_tpl->getConfigVariable('static_path');?>
/js/topup.js"><?php echo '</script'; ?>
>






<?php echo '<script'; ?>
 src="<?php echo $_smarty_tpl->getConfigVariable('static_path');?>
/js/plugins/drag.js"><?php echo '</script'; ?>
>


    <?php echo '<script'; ?>
 src="<?php echo $_smarty_tpl->getConfigVariable('static_path');?>
/js/plugins/metisMenu/jquery.metisMenu.js"><?php echo '</script'; ?>
>
    <?php echo '<script'; ?>
 src="<?php echo $_smarty_tpl->getConfigVariable('static_path');?>
/js/plugins/pagination.js"><?php echo '</script'; ?>
>   <!-- 分页 -->
    <?php echo '<script'; ?>
 src="<?php echo $_smarty_tpl->getConfigVariable('static_path');?>
/js/group/adminLog.js"><?php echo '</script'; ?>
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
<?php /* Smarty version Smarty-3.1.21-dev, created on 2017-02-15 22:33:17
         compiled from "/Users/lorine/Documents/workspace/datebaofront-dev/geekwork/templates/template/sidebar.tpl" */ ?>
<?php if ($_valid && !is_callable('content_58a466adda75e7_50103604')) {function content_58a466adda75e7_50103604($_smarty_tpl) {?><div class="col-xs-2">
    <div class="top-border white-bg">
        <ul class="nav metismenu" id="side-menu">
            <li id="index-group">
                <a href="/group/index">
                    <i class="fa fa-home"></i><span class="nav-label">用户首页</span>
                </a>
            </li>
            <li>
                <a href="javascript:void(0)">
                    <i class="fa fa-calendar-o"></i><span class="nav-label">保障管理</span>
                    <span class="fa arrow"></span>
                </a>
                <ul class="nav left-m collapse">
                    <li id="insurance">
                        <a href="/group/insuranceList"><i class="fa fa-list-alt"></i>保障方案</a>
                    </li>
                    <li id="userlist">
                        <a href="/group/memberListPage"><i class="fa fa-sitemap"></i>成员管理</a>
                    </li>
                </ul>
            </li>
            <li>
                <a href="javascript:void(0)">
                    <i class="fa fa-pie-chart"></i><span class="nav-label">数据统计</span>
                    <span class="fa arrow"></span>
                </a>
                <ul class="nav left-m collapse">
                    <li id="lipei_s">
                        <a href="/statistics/lipeiStatisticsPage"><i class="fa fa-line-chart"></i>报销统计</a>
                    </li>
                    <li id="user_s">
                        <a href="/statistics/userStatisticsPage"><i class="fa fa-area-chart"></i>人管统计</a>
                    </li>
                </ul>
            </li>
            <li>
                <a href="#">
                    <i class="fa fa-calculator"></i><span class="nav-label">财务中心</span>
                    <span class="fa arrow"></span>
                </a>
                <ul class="nav left-m nav-second-level collapse">
                    <li id="financialIndex">
                        <a href="/financial/index"><i class="fa fa-list"></i>总览</a>
                    </li>
                    <li id="charge">
                        <a href="/financial/charge"><i class="fa fa-money"></i> 充值</a>
                    </li>
                    <li id="payment">
                        <a href="financial/payment"><i class="fa fa-external-link"></i> 缴费</a>
                    </li>
                    <li id="withdraw">
                        <a href="/financial/withdraw"><i class="fa fa-credit-card"></i> 提现</a>
                    </li>
                    <li id="manageInfo">
                        <a href="/financial/manageInfo"><i class="fa fa-cogs"></i> 管理设置</a>
                    </li>
                    <li id="changeFinancialPassword" style="margin-bottom:0">
                        <a href="/financial/changeFinancialPassword"><i class="fa fa-tasks"></i> 财务密码</a>
                    </li>
                </ul>
            </li>
            <li id="updateGroupUserInfo">
                <a href="/group/updateGroupUserInfo">
                    <i class="fa fa-cog"></i><span class="nav-label">账户维护</span>
                </a>
            </li>
            <li id="admin_log">
                <a href="/statistics/logPage">
                    <i class="fa fa-pencil-square"></i><span class="nav-label">操作记录</span>
                </a>
            </li>
        </ul>
    </div>
</div><?php }} ?>
