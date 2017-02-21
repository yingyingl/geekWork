<?php /* Smarty version Smarty-3.1.21-dev, created on 2017-02-20 10:27:58
         compiled from "C:\xampp\htdocs\datebaofront-dev\geekwork\templates\group\updateGroupUserInfo.tpl" */ ?>
<?php /*%%SmartyHeaderCode:1998758aa8ce47c65f1-47783626%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '43138b8ef4a710d64caf9cc1d65fec4b5742d65e' => 
    array (
      0 => 'C:\\xampp\\htdocs\\datebaofront-dev\\geekwork\\templates\\group\\updateGroupUserInfo.tpl',
      1 => 1487577207,
      2 => 'file',
    ),
    '8914ad3932f41f14fd678cbb4594545fc290ffb6' => 
    array (
      0 => 'C:\\xampp\\htdocs\\datebaofront-dev\\geekwork\\templates\\template\\front.tpl',
      1 => 1487582742,
      2 => 'file',
    ),
    '1274aa4b66132fed7876bd1d3251a277d2585188' => 
    array (
      0 => 'C:\\xampp\\htdocs\\datebaofront-dev\\geekwork\\templates\\template\\sidebar.tpl',
      1 => 1487563373,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '1998758aa8ce47c65f1-47783626',
  'function' => 
  array (
  ),
  'version' => 'Smarty-3.1.21-dev',
  'unifunc' => 'content_58aa8ce490b218_89271942',
  'has_nocache_code' => false,
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_58aa8ce490b218_89271942')) {function content_58aa8ce490b218_89271942($_smarty_tpl) {?><!DOCTYPE HTML>
<html>
<head>
    <meta charset="utf-8">
    <title>账户维护</title>
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
 $_smarty_tpl = $_smarty_tpl->setupInlineSubTemplate("template/sidebar.tpl", $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, null, array(), 0, '1998758aa8ce47c65f1-47783626');
content_58aab69e21c759_03595745($_smarty_tpl);
$_smarty_tpl = array_pop($_tpl_stack); 
/*  End of included template "template/sidebar.tpl" */?>

            <div id="page" data-page="updateGroupUserInfo"></div>

            <div class="col-xs-10">
                <div class="ibox finance-recharge">
                    <div class="ibox-title">
                        <span>账户维护</span>
                    </div>
                    <div class="ibox-content">
                        <ul id="ins_tabs" class="nav-tabs" style="margin-bottom: 20px">
                            <li class="active" id="tab-title"><a data-toggle="tab" href="#tab-1" aria-expanded="true">基本资料</a></li>
                            <li class="" id="tab-title1"><a data-toggle="tab" href="#tab-2" aria-expanded="false" class="count-info">企业认证</a></li>
                        </ul>
                        <div class="tab-content">
                            <!--卡片一-->
                            <div class="tab-pane active" id="tab-1" >
                                <div class="alert alert-danger"  id="errorMsg" style="margin-top: 15px;display: none;"><i class="fa fa-exclamation"></i></div>
                                <div class="form-horizontal" id="formGroupInfo">
                                    <div class="charge-group clearfix">
                                        <div class="charge-head">企业名称：</div>
                                        <div class="charge-body">
                                            <span class="pull-left">测试</span>
                                        </div>
                                    </div>
                                    <div class="hr-line-dashed"></div>
                                    <div class="charge-group clearfix">
                                        <div class="charge-head">联系电话：</div>
                                        <div class="charge-body">
                                            <span class="pull-left" id="phone">18600182395</span>
                                            <a  data-toggle="modal" class="btn btn-primary btn-xs pull-right" href="#phoneID">修改</a>
                                        </div>
                                    </div>
                                    <div class="hr-line-dashed"></div>
                                    <div class="charge-group clearfix">
                                        <div class="charge-head">电子邮箱：</div>
                                        <div class="charge-body">
                                            <span class="pull-left" id="email">wh2000292@163.com</span>
                                            <a  data-toggle="modal" class="btn btn-primary btn-xs pull-right" href="#emailSectionID">修改</a>
                                        </div>
                                    </div>
                                    <div class="hr-line-dashed"></div>
                                    <div class="charge-group clearfix">
                                        <div class="charge-head" id="addressShowID">联系地址：</div>
                                        <div class="charge-body">
                                            <span class="pull-left"></span>
                                            <a data-toggle="modal" class="btn btn-primary btn-xs pull-right demo1" id="zyChange">修改</a>
                                        </div>
                                    </div>
                                    <div class="hr-line-dashed"></div>
                                    <div class="charge-group clearfix">
                                        <div class="charge-head">登录账号：</div>
                                        <div class="charge-body">
                                            <span class="pull-left">wh2000292</span>
                                        </div>
                                    </div>
                                    <div class="hr-line-dashed"></div>
                                    <div class="charge-group clearfix">
                                        <div class="charge-head">保障方案：</div>
                                        <div class="charge-body">
                                            <?php  $_smarty_tpl->tpl_vars['inName'] = new Smarty_Variable; $_smarty_tpl->tpl_vars['inName']->_loop = false;
 $_from = 'insurance_name'; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array');}
foreach ($_from as $_smarty_tpl->tpl_vars['inName']->key => $_smarty_tpl->tpl_vars['inName']->value) {
$_smarty_tpl->tpl_vars['inName']->_loop = true;
?>
                                                <button class="btn  btn-primary btn-xs" onclick="location.href='/Home/Group/insuranceList'" style="margin-right: 10px;" type="button"><?php echo $_smarty_tpl->tpl_vars['inName']->value;?>
</button>
                                            <?php } ?>
                                        </div>
                                    </div>
                                    <div class="hr-line-dashed"></div>
                                    <div class="deposit-password charge-group clearfix">
                                        <div class="charge-head">当前密码：</div>
                                        <div class="charge-body">
                                            <input aria-required="true" class="form-control input-min-width" id="password" maxlength="20" name="old_password" required="" type="password">
                                        </div>
                                    </div>
                                    <div class="hr-line-dashed"></div>
                                    <div class="deposit-password charge-group clearfix">
                                        <div class="charge-head">新的密码：</div>
                                        <div class="charge-body">
                                            <input aria-required="true" class="form-control input-min-width" id="new_password" maxlength="20" name="password" required="" type="password">
                                        </div>
                                    </div>
                                    <div class="hr-line-dashed"></div>
                                    <div class="deposit-password charge-group clearfix">
                                        <div class="charge-head">再次确认：</div>
                                        <div class="charge-body">
                                            <input aria-required="true" class="form-control input-min-width" id="new_password_repet" maxlength="20" name="repeat" required="" type="password">
                                        </div>
                                    </div>
                                    <div class="hr-line-dashed"></div>

                                    <div class="feed-element" style="border-bottom: 0px">
                                        <div class="col-sm-8 col-sm-offset-3">
                                            <button class="btn btn-primary pull-left" type="button" id="updatePasswordBtn" disabled>提交修改</button>
                                            <div class="pull-left" style="line-height: 34px;margin-left: 100px;display: none;" id="errorMsg"></div>
                                        </div>
                                    </div>
                                </form>
                            </div>
                            </div>

                            <!--卡片二-->
                            <div class="tab-pane " id="tab-2" >
                                <div class="alert alert-warning" style="margin-top: 15px">
                                    <h3>温馨提示：</h3>
                                    <p>为了保证您的权益，请如实填写企业信息；企业认证后，如需修改，请企业负责人致电客服 400-886-2309，由此为您带来的不便，敬请谅解。</p>
                                </div>
                                <div  method="post" id="formAuthentication">
                                    <div class="alert alert-danger"  id="errorMsg2" style="margin-top: 15px;display: none;"><i class="fa fa-exclamation"></i></div>
                                    <div class="hr-line-dashed"></div>
                                    <div class="deposit-password charge-group clearfix">
                                        <div class="charge-head large-charge-head">企业名称：</div>
                                        <div class="charge-body">
                                            <input aria-required="true" class="form-control input-min-width" id="realname"  maxlength="32" placeholder="请输入企业名称" name="realname" required="" value="测试" type="text"  disabled>
                                        </div>
                                    </div>
                                    <div class="hr-line-dashed"></div>
                                    <div class="deposit-password charge-group clearfix">
                                        <div class="charge-head large-charge-head">统一社会信用代码：</div>
                                        <div class="charge-body clearfixfix" style="position: relative;">
                                            <input aria-required="true" class="form-control input-min-width" id="usci" name="usci" style="float: left;" placeholder="请输入18位统一社会信用代码" required="" maxlength="18" value="111111111111111112" type="text"  disabled>
                                            <div class="prompt-font" style="float: left;line-height: 34px;color: #f8ac59;position: absolute;right: 100px;bottom: -38px;">请至少填写一项企业认证代码</div>
                                        </div>
                                    </div>
                                    <div class="hr-line-dashed"></div>
                                    <div class="deposit-password charge-group clearfix"  >
                                        <div class="charge-head large-charge-head">组织机构代码：</div>
                                        <div class="charge-body" >
                                            <input aria-required="true" class="form-control input-min-width" id="organization"   name="repeat" placeholder="请输入9位组织机构代码"  maxlength="9" required="" value="" type="text"  >
                                        </div>
                                    </div>
                                    <div class="hr-line-dashed"></div>
                                    <div class="charge-group payment-last-money clearfixfix">
                                        <button class="btn btn-primary btn-sm btn-de submitBtn" type="button" id="submitBtn" disabled>提交修改</button>
                                    </div>
                                </div>
                            </div>

                        </div>
                    </div>
                </div>
            </div>

            <!--修改邮箱弹窗-->
            <div class="modal inmodal" id="emailSectionID" tabindex="-1" role="dialog" aria-hidden="true" style="top:50px">
                <div class="modal-dialog">
                    <div class="modal-content animated fadeIn">
                        <div class="modal-header">
                            <button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">×</span><span class="sr-only">Close</span></button>
                            <h4 class="modal-title">修改邮箱</h4>
                        </div>
                        <form method="post" id="emailFormID" class="form-horizontal">
                            <div class="modal-body" style="padding-top: 50px">
                                <div class="alert alert-danger" id="emailErrorID">
                                    <i class="fa fa-minus-square"></i> 错误！请输入正确Email地址
                                </div>
                                <div class="form-group">
                                    <label class="col-sm-3 control-label">E-mail:</label>
                                    <div class="col-sm-8">
                                        <input name="email" id="emailID" type="text" class="form-control" onkeypress="if(event.keyCode == 13){ $('#emailSubmitID').click(); return false;}" placeholder="请输入邮箱" value="wh2000292@163.com">
                                    </div>
                                </div>
                            </div>
                            <div class="modal-footer">
                                <button type="button" class="btn btn-white" data-dismiss="modal">关闭</button>
                                <button type="button" id="emailSubmitID" class="btn btn-primary">保存</button>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
            <!--修改邮箱弹窗结束-->

            <!--修改地址-->
            <div class="modal inmodal" id="addressSectionID" tabindex="-1" role="dialog" aria-hidden="true" style="top:50px">
                <div class="modal-dialog">
                    <div class="modal-content animated fadeIn">
                        <div class="modal-header">
                            <button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">×</span><span class="sr-only">Close</span></button>
                            <h4 class="modal-title">修改地址</h4>
                        </div>
                        <form method="post" id="addressFormID" class="form-horizontal">
                            <div class="modal-body" style="padding-top: 50px">
                                <div class="alert alert-danger" id="addressErrorID">
                                    <i class="fa fa-minus-square"></i> 错误！请输入正确联系地址
                                </div>
                                <div class="form-group">
                                    <label class="col-sm-3 control-label">所在地区:</label>
                                    <div class="col-sm-8" id="city_list">
                                        <select class="prov citySelect" style="margin: 0;"></select>
                                        <select class="city citySelect" disabled="disabled" style="margin: 0;"></select>
                                        <select class="dist citySelect" disabled="disabled" style="margin: 0;"></select>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="col-sm-3 control-label">详细地址:</label>
                                    <div id="city_list_echo" class="col-sm-8">
                                        <p class="form-control-static">
                                            <span class="prov" style="white-space: nowrap;text-overflow: ellipsis;"></span> &frasl;
                                            <span class="city" style="white-space: nowrap;text-overflow: ellipsis;"></span> &frasl;
                                            <span class="dist" style="white-space: nowrap;text-overflow: ellipsis;"></span>
                                        </p>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="col-sm-3 control-label"></label>
                                    <div class="col-sm-8">
                                        <textarea style="max-width:345px;max-height:100px;" class="form-control" id="addressID" oninput="value=value.replace(/[\n]/g,'')" onkeypress=" if( event.keyCode == 13) { $('#addressSubmitID').click(); return false;}" maxlength="80" placeholder="为了保证邮寄服务，请把地址具体到街道门牌号" value=""></textarea>
                                        <input type="hidden" id="address" value="" />
                                    </div>
                                </div>
                            </div>
                            <div class="modal-footer">
                                <button type="button" class="btn btn-white" data-dismiss="modal">关闭</button>
                                <button type="button" id="addressSubmitID" class="btn btn-primary">保存</button>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
            <!--修改地址结束-->

            <!--修改手机-->
            <div class="modal inmodal" id="phoneID" tabindex="-1" role="dialog" aria-hidden="true" style="top:50px">
                <div class="modal-dialog">
                    <div class="modal-content animated fadeIn">
                        <div class="modal-header">
                            <button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">×</span><span class="sr-only">Close</span></button>
                            <h4 class="modal-title">修改手机</h4>
                        </div>

                        <div id="oldMobileFormID" class="form-horizontal">
                            <div class="modal-body" style="padding-top: 50px">
                                <div class="alert alert-warning">
                                    <i class="fa fa-mobile"></i> 发送验证码到原手机<span id="mobileShowID2">18600182395</span>
                                </div>
                                <div class="alert alert-danger" id="oldMobileErrorID" style="display: none">
                                    <i class="fa fa-minus-square"></i>
                                </div>
                                <div class="input-group" style="width: 50%;margin: auto">
                                    <input type="text" class="form-control" id="oldVerifyCodeID" name="oldVerifyMob" onkeypress="if(event.keyCode == 13){ $('#mobileNextID').click(); return false;}">
                                    <span class="input-group-btn"> <button type="button" class="btn btn-primary" id="set_old_mob_verifyID">发送验证码</button></span>
                                </div>
                                <div class="input-group" style="width: 50%;margin: auto">
                                    <button type="button" class="btn btn-primary btn-block m-t" id="mobileNextID"> 下一步</button>
                                </div>
                            </div>
                        </div>

                        <div id="newMobileFormID" class="form-horizontal">
                            <div class="modal-body" style="padding-top: 50px">
                                <div class="alert alert-warning">
                                    <i class="fa fa-mobile"></i> 验证新号码
                                </div>
                                <div class="alert alert-danger" id="newMobileErrorID" style="display: none">
                                    <i class="fa fa-minus-square"></i>
                                </div>
                                <div class="input-group" style="width: 50%;margin: auto">
                                    <input type="text" class="form-control" placeholder="输入新手机号码" onkeypress="if(event.keyCode == 13){ $('#mobileSubmitID').click(); return false;}" name="mobile" id="mobileID">
                                </div>
                                <br />
                                <div class="input-group" style="width: 50%;margin: auto">
                                    <input type="text" class="form-control"  onkeypress="if(event.keyCode == 13){ $('#mobileSubmitID').click(); return false;}" id="newVerifyCodeID" name="oldVerifyMob">
                                    <span class="input-group-btn"> <button type="button" class="btn btn-primary" id="set_new_mob_verifyID">发送验证码</button></span>

                                </div>
                                <div class="input-group" style="width: 50%;margin: auto">
                                    <button type="button" class="btn btn-primary btn-block m-t" id="mobileSubmitID"> 确认修改</button>
                                </div>
                            </div>
                        </div>

                        <div class="modal-footer">
                            <button type="button" class="btn btn-white" data-dismiss="modal">关闭</button>
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
/js/plugins/jquery.metisMenu.js"><?php echo '</script'; ?>
>
    <?php echo '<script'; ?>
 src="<?php echo $_smarty_tpl->getConfigVariable('static_path');?>
/js/address/jquery.cityselect.js"><?php echo '</script'; ?>
>
    <?php echo '<script'; ?>
 src="<?php echo $_smarty_tpl->getConfigVariable('static_path');?>
/js/group/safty.js"><?php echo '</script'; ?>
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
<?php /* Smarty version Smarty-3.1.21-dev, created on 2017-02-20 10:27:58
         compiled from "C:\xampp\htdocs\datebaofront-dev\geekwork\templates\template\sidebar.tpl" */ ?>
<?php if ($_valid && !is_callable('content_58aab69e21c759_03595745')) {function content_58aab69e21c759_03595745($_smarty_tpl) {?><div class="col-xs-2">
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
