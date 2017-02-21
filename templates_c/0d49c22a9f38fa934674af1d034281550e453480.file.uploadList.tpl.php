<?php /* Smarty version Smarty-3.1.21-dev, created on 2017-02-21 22:44:32
         compiled from "/Users/lorine/Documents/workspace/datebaofront-dev/geekwork/templates/group/uploadList.tpl" */ ?>
<?php /*%%SmartyHeaderCode:75271006158ac5250e97b08-82435974%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '0d49c22a9f38fa934674af1d034281550e453480' => 
    array (
      0 => '/Users/lorine/Documents/workspace/datebaofront-dev/geekwork/templates/group/uploadList.tpl',
      1 => 1487688198,
      2 => 'file',
    ),
    '068ce81b3254a2ee0fd79b3bac2e49a13fe7245f' => 
    array (
      0 => '/Users/lorine/Documents/workspace/datebaofront-dev/geekwork/templates/template/front.tpl',
      1 => 1487682369,
      2 => 'file',
    ),
    '62f07d2ce8a24b0afa806b30fd784a6cf96e65ac' => 
    array (
      0 => '/Users/lorine/Documents/workspace/datebaofront-dev/geekwork/templates/template/sidebar.tpl',
      1 => 1487682369,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '75271006158ac5250e97b08-82435974',
  'function' => 
  array (
  ),
  'has_nocache_code' => false,
  'version' => 'Smarty-3.1.21-dev',
  'unifunc' => 'content_58ac5250f09d04_67835140',
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_58ac5250f09d04_67835140')) {function content_58ac5250f09d04_67835140($_smarty_tpl) {?><!DOCTYPE HTML>
<html>
<head>
    <meta charset="utf-8">
    <title>批量加人流程</title>
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
<div id="rightButton">
    <ul id="right_ul">
        <li id="right_online" class="right_ico" show="online" hide="tel" hide1="weixin"><a class="online_name" href="javascript:;"></a></li>
        <li id="right_weixin" class="right_ico" show="weixin" hide="tel" hide1="online"></li>
        <li id="right_tel" class="right_ico" show="tel" hide="weixin" hide1="online"></li>
        <li id="right_tip" class="png">
            <p class="flag_online">工作日早8点 - 晚8点</p>
            <p class="flag_online"><button type="button" class="btn btn-xs btn-warning" style="font-weight: 700">在线咨询</button></p>
            <p class="flag_weixin"></p>
            <p class="flag_tel" style="margin-top: 5px">工作日早8点 - 晚8点</p>
            <p class="flag_tel">400-886-2309</p>
        </li>
        <li><div id="backToTop"><a href="javascript:;" onfocus="this.blur();" class="backToTop_a png"></a></div></li>
    </ul>
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
 $_smarty_tpl = $_smarty_tpl->setupInlineSubTemplate("template/sidebar.tpl", $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, null, array(), 0, '75271006158ac5250e97b08-82435974');
content_58ac5250ef0694_11263680($_smarty_tpl);
$_smarty_tpl = array_pop($_tpl_stack); 
/*  End of included template "template/sidebar.tpl" */?>

                <div class="col-xs-10">
                    <div class="ibox float-e-margins">
                        <div class="ibox-title">
                            <div>
                                <input type="hidden" name="group_id" value="61249"/>
                                <span>批量加人流程
                                    <a type="button" class="btn btn-primary btn-xs pull-right" href='/group/excelPage'>重新上传</a>
                                    <button type="submit" class="btn btn-primary btn-xs pull-right" style="margin-right: 20px">下载excel模板</button
                                </span>
                            </div>
                        </div>
                        <div class="ibox-content" id="loading">
                            <div class="spiner-example" style="height: 300px">
                                <div class="loading" style="height: 200px"></div>
                            </div>
                        </div>
                        <!--连带被保险人显示模板 start-->
                        <!--连带被保险人显示模板 end-->


                        <!--医保信息模板 连带子女 start-->
                        <!--医保信息模板 连带子女 end-->

                        <!--医保信息模板 非连带子女 start-->
                        <div class="ibox-content">
                            <table class="table-bordered table-lian table-hover tooltip-demo">
                                <thead>
                                <tr>
                                    <th colspan="13" style="text-align: left;background: #ffffff;padding: 10px;font-size: 14px">
                                        本次批量上传人员共 <span class="text-info">1</span> 人，已上传人员信息错误为 <span class="table-error">1</span> 条
                                        <!--，总预计保费<span class="table-error">￥0</span>-->
                                        <div class="alert alert-danger text-center" style="display:none" id="verify_failID">
                                            <p id="max_person_error_msg"></p>
                                            <p id="avg_error_msg"></p>
                                        </div>
                                    </th>
                                </tr>
                                <tr>
                                    <th style="width: 10%" class="text-center">序号</th>
                                    <th style="width: 15%">姓名<br />证件号码</th>
                                    <th style="width: 15%">手机号码</th>
                                    <th style="width: 20%;">医保信息</th>
                                    <th style="width: 20%">方案名称</th>
                                    <th style="width: 20%">保障期间</th>
                                    <!--<th style="width: 50px" class="text-center">预计保费</th>-->
                                </tr>
                                </thead>
                                <tbody>
                                <tr>
                                    <td class="text-center">
                                        <span data-toggle="tooltip" data-placement="top" class="table-error">1</span>                </td>
                                    <td>
                                        <p>
                                            老王                                                </p>
                                        <p style="margin-bottom: 0">
                                            411322198904092998                                                </p>
                                    </td>
                                    <td>
                                        <span data-toggle="tooltip" data-placement="top" data-original-title="手机格式错误" class="table-error">111111</span>                </td>
                                    <td>
                                        <p>不需要</p>                </td>
                                    <td>
                                        【极客保 - 意外型】测试                                        </td>
                                    <td>
                                        <p>
                                            <span class="label" style="padding: 3px">起</span>
                                            <span data-toggle="tooltip" data-placement="top" data-original-title="生效日期不在规定范围内" class="table-error">
                                                                            2017-01-01                                </span>                    </p>
                                        <p style="margin-bottom: 0">
                                            <span class="label" style="padding: 3px">止</span>
                                            <span>2017-08-08</span>
                                        </p>
                                    </td>
                                    <!--<td class="text-center">-->
                                    <!--￥-->
                                    <!--</td>-->
                                </tr>        </tbody>
                                <tfoot>
                                <tr>
                                    <td colspan="13" style="color: #676a6c">
                                        注意： <span class="table-error">红色标示</span> 位置为错误信息，请再次核实上传内容，如有疑问请拨打客服电话：400-886-2309
                                    </td>
                                </tr>
                                </tfoot>
                            </table>
                            <div class="text-center" style="margin-top: 20px">
                                <a href='flow_batch.html' class="btn btn-w-m btn-white">重新上传</a>
                            </div>
                        </div>        <!--医保信息模板 非连带子女 end-->


                    </div>
                </div>
            </div>
        </div>
    </div>

    <div class="layer2 _loading" style=""></div>

    <div class="load _loading">
        <img src="http://www.insgeek.com/public/insgeek2.0/img/user/loading.gif">
        <p>提交中，请稍后！</p>
    </div>


        <?php echo $_smarty_tpl->getSubTemplate ("template/footer.tpl", $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, null, array(), 0);?>

    </div>
</div>

<input type="hidden" id="staticPath" value="<?php echo $_smarty_tpl->getConfigVariable('static_path');?>
" >

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
/js/common.js"><?php echo '</script'; ?>
>
<?php echo '<script'; ?>
 src="<?php echo $_smarty_tpl->getConfigVariable('static_path');?>
/js/plugins/drag.js"><?php echo '</script'; ?>
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
<?php /* Smarty version Smarty-3.1.21-dev, created on 2017-02-21 22:44:32
         compiled from "/Users/lorine/Documents/workspace/datebaofront-dev/geekwork/templates/template/sidebar.tpl" */ ?>
<?php if ($_valid && !is_callable('content_58ac5250ef0694_11263680')) {function content_58ac5250ef0694_11263680($_smarty_tpl) {?><div class="col-xs-2">
    <div class="top-border white-bg">
        <ul class="nav metismenu" id="side-menu">
            <li id="indexGroup">
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
                    <li id="insuranceList">
                        <a href="/group/insuranceList"><i class="fa fa-list-alt"></i>保障方案</a>
                    </li>
                    <li id="memberList">
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
                    <li id="lipeiStatistics">
                        <a href="/statistics/lipeiStatisticsPage"><i class="fa fa-line-chart"></i>报销统计</a>
                    </li>
                    <li id="userStatistics">
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
                <a href="/enterprise_user/settingPage">
                    <i class="fa fa-cog"></i><span class="nav-label">账户维护</span>
                </a>
            </li>
            <li id="logPage">
                <a href="/statistics/logPage">
                    <i class="fa fa-pencil-square"></i><span class="nav-label">操作记录</span>
                </a>
            </li>
        </ul>
    </div>
</div><?php }} ?>
