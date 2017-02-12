<?php /* Smarty version Smarty-3.1.21-dev, created on 2017-02-12 12:17:58
         compiled from "C:\xampp\htdocs\datebaofront-dev\geekwork\templates\group\insuranceList.tpl" */ ?>
<?php /*%%SmartyHeaderCode:1950758a03092e50c84-11843678%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    'ec50c56ec7c19794daad1a9e6e9faa191cb83fa2' => 
    array (
      0 => 'C:\\xampp\\htdocs\\datebaofront-dev\\geekwork\\templates\\group\\insuranceList.tpl',
      1 => 1486898274,
      2 => 'file',
    ),
    '8914ad3932f41f14fd678cbb4594545fc290ffb6' => 
    array (
      0 => 'C:\\xampp\\htdocs\\datebaofront-dev\\geekwork\\templates\\template\\front.tpl',
      1 => 1486893663,
      2 => 'file',
    ),
    '1274aa4b66132fed7876bd1d3251a277d2585188' => 
    array (
      0 => 'C:\\xampp\\htdocs\\datebaofront-dev\\geekwork\\templates\\template\\sidebar.tpl',
      1 => 1486893705,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '1950758a03092e50c84-11843678',
  'function' => 
  array (
  ),
  'version' => 'Smarty-3.1.21-dev',
  'unifunc' => 'content_58a03092f31031_75682417',
  'has_nocache_code' => false,
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_58a03092f31031_75682417')) {function content_58a03092f31031_75682417($_smarty_tpl) {?><!DOCTYPE HTML>
<html>
<head>
    <meta charset="utf-8">
    <title>保障方案</title>
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

    
    <link href="<?php echo $_smarty_tpl->getConfigVariable('static_path');?>
/css/plugins/datepicker3.css" rel="stylesheet">

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
 $_smarty_tpl = $_smarty_tpl->setupInlineSubTemplate("template/sidebar.tpl", $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, null, array(), 0, '1950758a03092e50c84-11843678');
content_58a04466230826_02680050($_smarty_tpl);
$_smarty_tpl = array_pop($_tpl_stack); 
/*  End of included template "template/sidebar.tpl" */?>

            <div id="page" data-page="insurance"></div>
            <div class="col-xs-10">
                <?php  $_smarty_tpl->tpl_vars['insuranceList'] = new Smarty_Variable; $_smarty_tpl->tpl_vars['insuranceList']->_loop = false;
 $_smarty_tpl->tpl_vars['key'] = new Smarty_Variable;
 $_from = $_smarty_tpl->tpl_vars['data']->value['insurance_list']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array');}
foreach ($_from as $_smarty_tpl->tpl_vars['insuranceList']->key => $_smarty_tpl->tpl_vars['insuranceList']->value) {
$_smarty_tpl->tpl_vars['insuranceList']->_loop = true;
 $_smarty_tpl->tpl_vars['key']->value = $_smarty_tpl->tpl_vars['insuranceList']->key;
?>
                    <div class="col-md-6 iboxlist add-null" data-id="<?php echo $_smarty_tpl->tpl_vars['insuranceList']->value['id'];?>
">
                        <div class="ibox">
                            <div class="ibox-content product-box">
                                <div class="product-imitation">
                                    <div class="product-title"><?php echo $_smarty_tpl->tpl_vars['insuranceList']->value['product_name'];?>
</div>
                                    <div class="product-subhead"><?php echo $_smarty_tpl->tpl_vars['data']->value['enterprise_name'];?>
</div>
                                </div>

                                <div class="product-desc">
                                    <span class="product-price">保障中</span>
                                    <a data-toggle="modal" data-target="#content_A" class="product-name" style="display:inline" name="insuranceState">保障说明<small style="font-weight: normal;"> (点此查看保障详情)</small></a>
                                    <div class="small m-t-xs" style="margin-top: 15px;line-height: 23px;color: #6f6f6f">
                                        <i class="fa fa-users"></i> 当前有 <strong class="text-warning"><?php echo $_smarty_tpl->tpl_vars['insuranceList']->value['people_num'];?>
</strong> 人受益于此保障方案<br/>
                                        <i class="fa fa-table"></i>方案开始日期 <?php echo $_smarty_tpl->tpl_vars['insuranceList']->value['begin_date'];?>
 <br/>
                                        <i class="fa fa-table"></i> 方案结束日期 <?php echo $_smarty_tpl->tpl_vars['insuranceList']->value['end_date'];?>
 <br/>
                                        <span style="color: #cccccc"><i class="fa fa-download"></i> 下载合同</span>
                                        <span class="tooltip-demo"><i data-toggle="tooltip" data-placement="top" data-original-title="贵企业尚未通过实名认证，暂不能获取合同，如有疑问，请致电保险极客：400-886-2309" class="fa fa-question-circle text-warning"></i></span>
                                    </div>

                                    <div class="m-t text-righ">
                                        <div class="btn-group">
                                            <button class="btn btn-outline btn-primary" type="button" onclick="location.href='/group/userList/<?php echo $_smarty_tpl->tpl_vars['insuranceList']->value['id'];?>
'" >成员列表</button>
                                            <button class="btn btn-outline btn-primary add_user add-null"  data-toggle="modal" type="button">增加成员</button>
                                            <button class="btn btn-outline btn-primary two_code" title="点此可通过二维码添加成员" type="button" data-toggle="modal" data-target="#two_code" >二维码加人</button>                                <button class="btn btn-outline btn-primary" title="您可以通过导入excel表格批量加人" type="button" onclick="location.href='/UploadUserInfo/flow_batch'">批量加人</button>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                <?php } ?>
            </div>

            <!-- 加入推送二维码弹窗 -->
            <div aria-hidden="true" class="modal inmodal" id="two_code" role="dialog" tabindex="-1">
                <div class="modal-dialog">
                    <div class="modal-content animated fadeIn">
                        <div class="modal-header">
                            <button class="close" data-dismiss="modal" type="button">
                                <span aria-hidden="true">&times;</span><span class="sr-only">Close</span>
                            </button>
                            <h3>分享二维码审核</h3>
                            <small>请将此二维码分享给符合方案要求的团队成员，<br>系统将引导该成员填写信息并申请加入当前方案。</small>
                        </div>
                        <div class="modal-body text-center">
                            <img id="qrcodePic" src=""/>
                            <div id="regURl" style="-o-text-overflow: ellipsis; font-size: 16px; margin: 20px auto; overflow: hidden; text-overflow: ellipsis; white-space: nowrap; width: 75%;"></div>
                            <button class="btn btn-info" id="refreshEwm" style="margin-top: 15px;" type="button">刷新二维码</button>
                        </div>
                        <div class="modal-footer">
                            <button class="btn btn-white" data-dismiss="modal" type="button">关闭</button>
                            <input type="hidden" name="eid" value="" />
                        </div>
                    </div>
                </div>
            </div>

            <!-- 增加修改成员弹窗 -->
            <div class="modal inmodal" id="add_user" tabindex="-1" role="dialog" aria-hidden="true" style="font-size: 14px;">
                <div class="modal-dialog" style="width: 700px">
                    <div class="modal-content animated fadeIn">
                        <div class="modal-header add-header">
                            <button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">&times;</span><span class="sr-only">Close</span></button>
                            <h3>增加成员</h3>
                            <p><span id="insurance_name">为了方便您以后的操作，请填写该成员的真实信息</span></p>
                        </div>

                        <div class="modal-header edit-header">
                            <button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">&times;</span><span class="sr-only">Close</span></button>
                            <h3>成员修改</h3>
                            <small>请确认变更成员信息</small>
                        </div>

                        <div class="modal-body">
                            <div class="form-horizontal">
                                <div class="form-group form-fangan">
                                    <label class="col-xs-4 control-label font-noraml">选择方案：</label>

                                    <div class="col-xs-7">
                                        <select name="eid" class="form-control select-fangan">
                                            <?php  $_smarty_tpl->tpl_vars['insuranceList'] = new Smarty_Variable; $_smarty_tpl->tpl_vars['insuranceList']->_loop = false;
 $_smarty_tpl->tpl_vars['key'] = new Smarty_Variable;
 $_from = $_smarty_tpl->tpl_vars['data']->value['insurance_list']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array');}
foreach ($_from as $_smarty_tpl->tpl_vars['insuranceList']->key => $_smarty_tpl->tpl_vars['insuranceList']->value) {
$_smarty_tpl->tpl_vars['insuranceList']->_loop = true;
 $_smarty_tpl->tpl_vars['key']->value = $_smarty_tpl->tpl_vars['insuranceList']->key;
?>
                                                <option value="<?php echo $_smarty_tpl->tpl_vars['insuranceList']->value['id'];?>
"><?php echo $_smarty_tpl->tpl_vars['insuranceList']->value['product_name'];?>
</option>
                                            <?php } ?>
                                        </select>
                                    </div>
                                </div>

                                <div class="form-group">
                                    <label class="col-xs-4 control-label font-noraml"><span style="color: red">*</span>被保险人姓名：</label>

                                    <div class="col-xs-7">
                                        <div class="input-group" style="width: 100%">
                                            <select class="form-control input-group-addon" name="relType" id="relTypeId" style="width: 30%">
                                                <option value="1">本人</option>
                                                <option value="2">子女</option>
                                            </select>
                                            <input type="text" name="realname" placeholder="被保险人的真实姓名" class="form-control pull-left form-name" style="width: 70%">
                                        </div>
                                    </div>
                                </div>

                                <div class="form-group discern_0">
                                    <label class="col-xs-4 control-label font-noraml"><span style="color: red">*</span>被保险人证件：</label>

                                    <div class="col-xs-7">
                                        <div class="input-group" style="width: 100%">
                                            <select class="form-control input-group-addon pull-left" name="certType" id="certTypeId" style="width: 30%">
                                                <option value="1">身份证</option>
                                                <option value="2">护照</option>
                                            </select>

                                            <input type="text" name="id_number" placeholder="被保险人证件号码" class="form-control pull-left form-idnum" style="width: 70%">
                                        </div>
                                    </div>
                                </div>

                                <div class="form-group" style="display: none" id="relBirthDiv">
                                    <label class="col-xs-4 control-label font-noraml"><span style="color: red">*</span>被保险人信息：</label>
                                    <div class="col-xs-3" style="padding-right: 0px;">
                                        <div class="base_attr pull-left">
                                            <span href="javascript:;" class="add_base_attr base_attr_on"  data-value="1">男<i></i></span>
                                            <span href="javascript:;" class="add_base_attr"  data-value="2">女<i></i></span>
                                            <input type="hidden" name="relSex" id="relSexId" />
                                        </div>
                                    </div>

                                    <div class="col-xs-4" id="relBirthParentId" style="padding-left: 46px">
                                        <div class="input-group date plan_date" data-date="" data-date-format="yyyy-mm-dd">
                                            <span class="input-group-addon"><i class="fa fa-calendar"></i></span>
                                            <input type="text" id="relBirthDayId" name="relBirthDay" class="form-control" value="" readonly="readonly" />
                                        </div>
                                    </div>
                                </div>

                                <div class="form-group">
                                    <label class="col-xs-4 control-label font-noraml">被保险人手机：</label>

                                    <div class="col-xs-7">
                                        <input aria-required="true" class="form-control form-mobile" name="mobile" placeholder="手机号为重要信息，空号码可能影响成员的保障" required="" type="text" onkeyup="value=value.replace(/[\D]/g,'')"/>
                                    </div>
                                </div>

                                <div class="form-group" style="display: none" id="mainCertCodeDiv">
                                    <label class="col-xs-4 control-label font-noraml"><span style="color: red">*</span>主被保险人身份证：</label>

                                    <div class="col-xs-7">
                                        <input type="text" placeholder="18位身份证号码 （必须是在保成员）" class="form-control" name='mainCertCode' id="mainCertCode">
                                    </div>
                                </div>

                                <div class="form-group health_insurance" style="display: none">
                                    <label class="col-xs-4 control-label font-noraml"><span style="color: red">*</span>被保险人医保信息：</label>
                                    <div class="col-xs-7">
                                        <div class="input-group" style="width: 100%">
                                            <select class="form-control input-group-addon" name="medicare_type" style="width: 44.8%;">
                                                <option value="1">城镇职工</option>
                                                <option value="2">城镇居民</option>
                                                <option value="3">新型农村合作医疗</option>
                                                <option value="4">均未参加</option>
                                            </select>

                                            <input type="text" placeholder="点击选择医保所在地" data-prefix="add" class="form-control pull-left health_insurance_address" style="width: 55.2%;" readonly/>
                                        </div>
                                    </div>
                                </div>

                                <div class="form-group">
                                    <label class="col-xs-4 control-label font-noraml"><span style="color: red">*</span>保障期间：</label>

                                    <div class="col-xs-7">
                                            <span class="input-group date plan_date startTimeBox pull-left" data-date="" data-date-format="yyyy-mm-dd" style="width: 45%">
                                                <span class="input-group-addon"><i class="fa fa-calendar"></i></span>
                                                <input type="text" name="starttime" class="form-control" value="" readonly="readonly"/>
                                            </span>
                                        <span class="input-group-addon pull-left" style="width: 10%;height: 34px;border-left: 0;border-right: 0;padding:0;line-height: 34px">至</span>
                                            <span class="input-group date plan_date endTimeBox pull-left" data-date="" data-date-format="yyyy-mm-dd" style="width: 45%">
                                                <span class="input-group-addon"><i class="fa fa-calendar"></i></span>
                                                <input type="text" name="endtime" class="form-control" value="" readonly="readonly"/>
                                            </span>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <div class="col-xs-7 col-xs-offset-4">
                                        <button class="btn btn-primary btn_submit" type="button" id="userForm">确认提交</button>
                                    </div>
                                </div>
                                <div class="msg" style="text-align:center;color:#ff3300;"></div>
                            </div>
                        </div>
                        <div class="modal-footer">
                            <button type="button" class="btn btn-white" data-dismiss="modal">关闭</button>
                        </div>
                    </div>
                </div>
            </div>


            <div class="modal inmodal" id="content_A" tabindex="-1" role="dialog" aria-hidden="true">
                <div class="modal-dialog">
                    <div class="modal-content animated fadeIn">
                        <div class="modal-header">
                            <button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">&times;</span><span class="sr-only">Close</span>
                            </button>
                            <h3>保障方案说明</h3>
                            <small id="InsuranceNameID">副标题</small>
                        </div>
                        <div class="modal-body text-center" id="InsuranceContentID">
                            详细内容10000字省略
                        </div>
                        <div class="modal-footer">
                            <button type="button" class="btn btn-white" data-dismiss="modal">关闭</button>
                        </div>
                    </div>
                </div>
            </div>

            <div id="layer" style="width: 100%;height: 100%;z-index: 10000;position: fixed;display: none;"></div>

            <div class="layer2 _loading" style=""></div>

            <div class="load _loading">
                <img src="http://www.insgeek.com/public/insgeek2.0/img/user/loading.gif">
                <p>提交中，请稍后！</p>
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
/js/plugins/sweetalert.min.js"><?php echo '</script'; ?>
>        <!-- 确认弹窗 -->
<?php echo '<script'; ?>
 src="<?php echo $_smarty_tpl->getConfigVariable('static_path');?>
/js/topup.js"><?php echo '</script'; ?>
>






<?php echo '<script'; ?>
 src="<?php echo $_smarty_tpl->getConfigVariable('static_path');?>
/js/plugins/drag/drag.js"><?php echo '</script'; ?>
>


    <?php echo '<script'; ?>
 src="<?php echo $_smarty_tpl->getConfigVariable('static_path');?>
/js/plugins/bootstrap.min.js"><?php echo '</script'; ?>
>  <!-- 鼠标经过效果 以及弹窗 -->
    <?php echo '<script'; ?>
 src="<?php echo $_smarty_tpl->getConfigVariable('static_path');?>
/js/plugins/metisMenu/jquery.metisMenu.js"><?php echo '</script'; ?>
>
    <?php echo '<script'; ?>
 src="<?php echo $_smarty_tpl->getConfigVariable('static_path');?>
/js/plugins/bootstrap-datepicker.js"><?php echo '</script'; ?>
>

    <?php echo '<script'; ?>
 src="<?php echo $_smarty_tpl->getConfigVariable('static_path');?>
/js/address/cityJson.js"><?php echo '</script'; ?>
>
    <?php echo '<script'; ?>
 src="<?php echo $_smarty_tpl->getConfigVariable('static_path');?>
/js/address/citySet.js"><?php echo '</script'; ?>
>
    <?php echo '<script'; ?>
 src="<?php echo $_smarty_tpl->getConfigVariable('static_path');?>
/js/address/Popt.js"><?php echo '</script'; ?>
>
    <?php echo '<script'; ?>
 src="<?php echo $_smarty_tpl->getConfigVariable('static_path');?>
/js/address/address_mapping.js"><?php echo '</script'; ?>
>

    <?php echo '<script'; ?>
 src="<?php echo $_smarty_tpl->getConfigVariable('static_path');?>
/js/igCustom.js"><?php echo '</script'; ?>
>
    <?php echo '<script'; ?>
 src="<?php echo $_smarty_tpl->getConfigVariable('static_path');?>
/js/group/index.js"><?php echo '</script'; ?>
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
<?php /* Smarty version Smarty-3.1.21-dev, created on 2017-02-12 12:17:58
         compiled from "C:\xampp\htdocs\datebaofront-dev\geekwork\templates\template\sidebar.tpl" */ ?>
<?php if ($_valid && !is_callable('content_58a04466230826_02680050')) {function content_58a04466230826_02680050($_smarty_tpl) {?><div class="col-xs-2">
    <div class="top-border white-bg">
        <ul class="nav metismenu" id="side-menu">
            <li id="index-group">
                <a href="/templates/group/index.html">
                    <i class="fa fa-home"></i><span class="nav-label">用户首页</span>
                </a>
            </li>
            <li>
                <a href="#">
                    <i class="fa fa-calendar-o"></i><span class="nav-label">保障管理</span>
                    <span class="fa arrow"></span>
                </a>
                <ul class="nav left-m collapse">
                    <li id="insurance">
                        <a href="/templates/group/insuranceList.html">
                            <i class="fa fa-list-alt"></i>保障方案
                        </a>
                    </li>
                    <li id="userlist">
                        <a href="/templates/group/userList">
                            <i class="fa fa-sitemap"></i>成员管理
                        </a>
                    </li>
                </ul>
            </li>
            <li>
                <a href="#">
                    <i class="fa fa-pie-chart"></i><span class="nav-label">数据统计</span>
                    <span class="fa arrow"></span>
                </a>
                <ul class="nav left-m collapse">
                    <li id="lipei_s">
                        <a href="/templates/group/DataStatistics/lipei_statistical">
                            <i class="fa fa-line-chart"></i>报销统计
                        </a>
                    </li>
                    <li id="user_s">
                        <a href="/templates/group/DataStatistics/user_statistical">
                            <i class="fa fa-area-chart"></i>人管统计
                        </a>
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
                        <a href="financial/index"><i class="fa fa-list"></i> 总览</a>
                    </li>
                    <li id="charge">
                        <a href="financial/charge"><i class="fa fa-money"></i> 充值</a>
                    </li>
                    <li id="payment">
                        <a href="financial/payment"><i class="fa fa-external-link"></i> 缴费</a>
                    </li>
                    <li id="withdraw">
                        <a href="financial/withdraw"><i class="fa fa-credit-card"></i> 提现</a>
                    </li>
                    <li id="manageInfo">
                        <a href="financial/manageInfo"><i class="fa fa-cogs"></i> 管理设置</a>
                    </li>
                    <li id="changeFinancialPassword" style="margin-bottom:0">
                        <a href="financial/changeFinancialPassword"><i class="fa fa-tasks"></i> 财务密码</a>
                    </li>
                </ul>
            </li>
            <li id="updateGroupUserInfo">
                <a href="group/updateGroupUserInfo">
                    <i class="fa fa-cog"></i><span class="nav-label">账户维护</span>
                </a>
            </li>
            <li id="admin_log">
                <a href="DataStatistics/admin_log">
                    <i class="fa fa-pencil-square"></i><span class="nav-label">操作记录</span>
                </a>
            </li>
        </ul>
    </div>
</div><?php }} ?>
