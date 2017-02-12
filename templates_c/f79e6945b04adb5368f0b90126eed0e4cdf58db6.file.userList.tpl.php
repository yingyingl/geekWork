<?php /* Smarty version Smarty-3.1.21-dev, created on 2017-02-12 15:24:32
         compiled from "C:\xampp\htdocs\datebaofront-dev\geekwork\templates\group\userList.tpl" */ ?>
<?php /*%%SmartyHeaderCode:1537658a069e2a507b4-78098113%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    'f79e6945b04adb5368f0b90126eed0e4cdf58db6' => 
    array (
      0 => 'C:\\xampp\\htdocs\\datebaofront-dev\\geekwork\\templates\\group\\userList.tpl',
      1 => 1486909470,
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
      1 => 1486907313,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '1537658a069e2a507b4-78098113',
  'function' => 
  array (
  ),
  'version' => 'Smarty-3.1.21-dev',
  'unifunc' => 'content_58a069e2b34079_02317736',
  'has_nocache_code' => false,
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_58a069e2b34079_02317736')) {function content_58a069e2b34079_02317736($_smarty_tpl) {?><!DOCTYPE HTML>
<html>
<head>
    <meta charset="utf-8">
    <title>成员管理</title>
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
 $_smarty_tpl = $_smarty_tpl->setupInlineSubTemplate("template/sidebar.tpl", $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, null, array(), 0, '1537658a069e2a507b4-78098113');
content_58a07020f3c132_67844437($_smarty_tpl);
$_smarty_tpl = array_pop($_tpl_stack); 
/*  End of included template "template/sidebar.tpl" */?>

                <div id="page" data-page="userlist"></div>

                <div class="col-xs-10">
                    <div class="ibox float-e-margins">
                        <div class="ibox-title"><span>成员管理</span></div>

                        <div class="ibox-content">
                            <ul id="ins_tabs" class="nav-tabs">
                                <li class="active" data-target="0">
                                    <a data-toggle="tab" href="#tab-1" aria-expanded="true">在保成员列表</a>
                                </li>
                                <li id="tab-2-head" data-target="1">
                                    <a data-toggle="tab" href="#tab-2" aria-expanded="false" class="count-info">待核成员列表</a>
                                </li>
                                <li data-target="2">
                                    <a data-toggle="tab" href="#tab-3" aria-expanded="false" class="count-info">已拒成员列表</a>
                                </li>
                                <li data-target="3">
                                    <a data-toggle="tab" href="#tab-4" aria-expanded="false" class="count-info">已失效成员列表</a>
                                </li>
                            </ul>

                            <div class="tab-content">
                                <div id="tab-1" class="tab-pane active iboxlist"  data-id="" data-load="true">
                                    <div class="btn-group">
                                        <button class="btn btn-white del_user_all" type="button" >批量减人</button>
                                        <button class="btn btn-white add_user" data-toggle="modal" id="add_user_btn" type="button">增加成员</button>
                                        <button class="btn btn-white two_code" title="点此可通过二维码添加成员" type="button" data-toggle="modal" data-target="#two_code">二维码加人</button>
                                        <button class="btn btn-white" title="您可以通过导入excel表格批量加人" type="button" onclick="location.href='/UploadUserInfo/flow_batch.html'" >批量加人</button>

                                        <form action="http://www.insgeek.com/Service/exportInsurancedUsersInfo" method="post" class="pull-right" style="margin-left: -2px">
                                            <input type="hidden" name="group_id" value="61249" style="display: none"/>
                                            <button type="submit" class="btn btn-white">导出在保名单</button>
                                        </form>
                                    </div>

                                    <input type="hidden" name="eid" value="2955" />

                                    <div class="m-t-35 form-inline">
                                        <table class="table table-hover">
                                        <thead>
                                        <tr>
                                            <th><input type="checkbox" id="checkboxALLInsurance">全选</th>
                                            <th>姓名</th>
                                            <th>证件号码</th>
                                            <th>手机号码</th>
                                            <th class="text-center" style="width: 100px">方案名称</th>
                                            <th class="text-center">保障开始时间</th>
                                            <th class="text-center">保障结束时间</th>
                                            <th></th>
                                        </tr>
                                        </thead>
                                        <tbody id="user_all_insurance">
                                        <tr id="77161">
                                            <td><input type="checkbox" name="idArr[]" value="77161" class="form-control"/></td>
                                            <td><div class="table-h table-name" style="width: 70px" title="测试测">测试测</div></td>
                                            <td><div class="table-h">510900199111249619</div></td>
                                            <td><div class="table-h text-left">13511111111</div></td>
                                            <td><div class="table-h table-name" style="width:100px;margin:auto;text-align: center" title="【极客保 - 医疗型】测试">【极客保 - 医疗型】测试</div></td>
                                            <td><div class="table-h text-center">2017-02-13</div></td>
                                            <td><div class="table-h text-center">2018-01-24</div></td>
                                            <td>
                                                <div class="btn-group">
                                                    <button class="btn-white btn btn-bitbucket editor_user" data-toggle="modal" data-target="#edit_user" data-medicare-type="2" data-medicare-address="425000" data-is-medicare="1" title="修改成员信息"><i class="fa fa-edit text-navy"></i></button>
                                                    <button class="btn-white btn btn-bitbucket del_user" title="删减"><i class="fa fa-trash-o text-navy"></i></button>
                                                </div>
                                            </td>
                                        </tr>
                                        </tbody>
                                        </table>
                                    </div>
                                </div>

                                <div id="tab-2" class="tab-pane">
                                    <div class="btn-group">
                                        <button class="btn btn-default" type="button" id="yes_user_all_waiter" disabled="true">批量通过</button>
                                        <button class="btn btn-default" type="button" id="no_user_all_waiter" disabled="true">批量拒绝</button>
                                    </div>

                                    <div class="m-t-35 form-inline">
                                        <table class="table table-hover">
                                            <thead>
                                            <tr>
                                                <th><input type="checkbox" id="checkboxALLWaiter">全选</th>
                                                <th>姓名</th>
                                                <th>证件号码</th>
                                                <th>手机号码</th>
                                                <th class="text-center">申请日期</th>
                                                <th class="text-center" style="width:80px">方案名称</th>
                                                <th class="text-center">保障开始时间</th>
                                                <th class="text-center">保障结束时间</th>
                                                <th></th>
                                            </tr>
                                            </thead>
                                            <tbody id="user_all_waiter">
                                            </tbody>
                                        </table>
                                    </div>
                                </div>

                                <div id="tab-3" class="tab-pane">
                                    <div class="btn-group">
                                        <button class="btn btn-outline btn-primary" type="button" id="yes_user_all_no">批量审核通过</button>
                                    </div>

                                    <div class="m-t-35 form-inline">
                                        <table class="table table-hover">
                                            <thead>
                                            <tr>
                                                <th><input type="checkbox" id="checkboxALLNo">全选</th>
                                                <th>姓名</th>
                                                <th>证件号码</th>
                                                <th class="text-center">申请时间</th>
                                                <th class="text-center">拒绝时间</th>
                                                <th class="text-center" style="width:80px">方案名称</th>
                                                <th class="text-center">保障开始时间</th>
                                                <th class="text-center">保障结束时间</th>
                                                <th></th>
                                            </tr>
                                            </thead>
                                            <tbody id="user_all_no">
                                            <tr id="75817">
                                                <td><input type="checkbox" name="idArr[]" value="75817" class="form-control"/></td>
                                                <td><div class="table-h table-name" style="width: 60px" title="王男">王男</div></td>
                                                <td><div class="table-h">341881197503161520</div></td>
                                                <td><div class="table-h text-center" style="width: 80px">2017-01-30</div></td>
                                                <td><div class="table-h text-center" style="width: 80px">2017-01-30</div></td>
                                                <td><div class="table-h table-name text-center" style="width:70px;margin: auto" title="【极客保 - 意外型】测试">【极客保 - 意外型】测试</div></td>
                                                <td><div class="table-h text-center" style="width: 80px">2017-02-01</div></td>
                                                <td><div class="table-h text-center" style="width: 80px">2018-01-23</div></td>
                                                <td>
                                                    <div class="btn-group">
                                                        <button data-request="2017-01-30" data-start="2017-02-13" class="btn btn-white btn-bitbucket yes" title="审核通过"><i class="fa fa-check text-navy"></i></button>
                                                    </div>
                                                </td>
                                            </tr>
                                            </tbody>
                                        </table>
                                    </div>
                                </div>

                                <div id="tab-4" class="tab-pane">
                                    <div class="m-t-35 form-inline">
                                        <table class="table table-hover">
                                            <thead>
                                            <tr>
                                                <th style="width:100px">姓名</th>
                                                <th>证件号码</th>
                                                <th class="text-center" style="width:220px">方案名称</th>
                                                <th class="text-center">保障开始时间</th>
                                                <th class="text-center">保障结束时间</th>
                                                <th class="text-center">失效原因</th>
                                            </tr>
                                            </thead>
                                            <tbody>
                                            <tr>
                                                <td><div class="table-h table-name" style="width: 100px" title="宗测">宗测</div></td>
                                                <td><div class="table-h">34180219890919273X</div></td>
                                                <td><div class="table-h table-name text-center" style="width:220px;margin: auto" title="【极客保 - 医疗型】测试">【极客保 - 医疗型】测试</div></td>
                                                <td><div class="table-h text-center">2017-02-03</div></td>
                                                <td><div class="table-h text-center">2017-02-04</div></td>
                                                <td><div class="table-h text-center">失效</div></td>
                                            </tr>
                                            </tbody>
                                        </table>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
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

                <div class="load _loading">
                    <img src="<?php echo $_smarty_tpl->getConfigVariable('static_path');?>
/images/loading.gif">
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
/js/plugins/pagination.js"><?php echo '</script'; ?>
>   <!-- 分页 -->
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
<?php /* Smarty version Smarty-3.1.21-dev, created on 2017-02-12 15:24:32
         compiled from "C:\xampp\htdocs\datebaofront-dev\geekwork\templates\template\sidebar.tpl" */ ?>
<?php if ($_valid && !is_callable('content_58a07020f3c132_67844437')) {function content_58a07020f3c132_67844437($_smarty_tpl) {?><div class="col-xs-2">
    <div class="top-border white-bg">
        <ul class="nav metismenu" id="side-menu">
            <li id="index-group">
                <a href="/templates/group/index">
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
                        <a href="/group/userList"><i class="fa fa-sitemap"></i>成员管理</a>
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
                        <a href="/DataStatistics/lipei_statistical"><i class="fa fa-line-chart"></i>报销统计</a>
                    </li>
                    <li id="user_s">
                        <a href="/DataStatistics/user_statistical"><i class="fa fa-area-chart"></i>人管统计</a>
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
                <a href="/DataStatistics/admin_log">
                    <i class="fa fa-pencil-square"></i><span class="nav-label">操作记录</span>
                </a>
            </li>
        </ul>
    </div>
</div><?php }} ?>
