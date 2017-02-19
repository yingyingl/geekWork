<?php /* Smarty version Smarty-3.1.21-dev, created on 2017-02-16 09:28:48
         compiled from "C:\xampp\htdocs\datebaofront-dev\geekwork\templates\group\index.tpl" */ ?>
<?php /*%%SmartyHeaderCode:19528589d6fb8f1a826-12757569%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '697bc688886be8fc6b2e17cc0c9881b8fca3d69b' => 
    array (
      0 => 'C:\\xampp\\htdocs\\datebaofront-dev\\geekwork\\templates\\group\\index.tpl',
      1 => 1487124507,
      2 => 'file',
    ),
    '8914ad3932f41f14fd678cbb4594545fc290ffb6' => 
    array (
      0 => 'C:\\xampp\\htdocs\\datebaofront-dev\\geekwork\\templates\\template\\front.tpl',
      1 => 1487033542,
      2 => 'file',
    ),
    '1274aa4b66132fed7876bd1d3251a277d2585188' => 
    array (
      0 => 'C:\\xampp\\htdocs\\datebaofront-dev\\geekwork\\templates\\template\\sidebar.tpl',
      1 => 1487233716,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '19528589d6fb8f1a826-12757569',
  'function' => 
  array (
  ),
  'version' => 'Smarty-3.1.21-dev',
  'unifunc' => 'content_589d6fb913e1e4_60934958',
  'has_nocache_code' => false,
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_589d6fb913e1e4_60934958')) {function content_589d6fb913e1e4_60934958($_smarty_tpl) {?><!DOCTYPE HTML>
<html>
<head>
    <meta charset="utf-8">
    <title>用户首页</title>
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
    <link href="<?php echo $_smarty_tpl->getConfigVariable('static_path');?>
/css/group/proshow.css" rel="stylesheet">

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
 $_smarty_tpl = $_smarty_tpl->setupInlineSubTemplate("template/sidebar.tpl", $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, null, array(), 0, '19528589d6fb8f1a826-12757569');
content_58a562c0baaed4_67023136($_smarty_tpl);
$_smarty_tpl = array_pop($_tpl_stack); 
/*  End of included template "template/sidebar.tpl" */?>

                <div id="page" data-page="index-group"></div>

                <div class="col-xs-10">

                    <!-- 面包屑 -->
                    <div class="ibox-title">
                        用户首页
                        <div class="pull-right">
                            <button data-toggle="dropdown" class="btn btn-xs btn-primary" onclick="location.href='UploadUserInfo/flow_batch.html'" >批量加人</button>
                            <button class="btn btn-xs btn-primary" data-all="true" id="all">全部收起</button>
                        </div>
                    </div>

                    <!-- top -->
                    <div class="row border-bottom white-bg dashboard-header" style="margin: 0 0 20px 0;border-top: #e7eaec 1px solid">
                        <div class="col-xs-4" style="padding: 0;border-right: 1px solid #e7eaec">
                            <div class="text-center">
                                <div class="m-b-sm">
                                    <img alt="image" class="img-circle" src="<?php echo $_smarty_tpl->getConfigVariable('static_path');?>
/images/group/group.png">
                                </div>
                                <small><?php echo $_smarty_tpl->tpl_vars['data']->value['enterprise_name'];?>
</small>
                            </div>
                        </div>

                        <div class="col-xs-3">
                            <div style="margin-left: 20px;border-right: 1px solid #e7eaec">
                                <p><a href="/group/insuranceList"><small><i class="fa fa-file-text"></i> 共 <?php echo $_smarty_tpl->tpl_vars['data']->value['insurance_num'];?>
 种保障方案</small></a></p>
                                <p><a href="/group/userList/wait/1"><small><i class="fa fa-plus-square"></i> 共 <?php echo $_smarty_tpl->tpl_vars['data']->value['wait_people_num'];?>
 人等待审核</small></a></p>
                                <p><a href="/group/userList"><small><i class="fa fa-umbrella"></i> 共 <?php echo $_smarty_tpl->tpl_vars['data']->value['insurance_people_num'];?>
 人在保</small></a></p>
                            </div>
                        </div>

                        <div class="col-xs-5">
                            <div style="margin-left: 0px">
                                <p class="tooltip-demo">
                                    <small>
                                        <i class="fa fa-external-link-square"></i>当前应缴：<span class="text-danger"><?php echo $_smarty_tpl->tpl_vars['data']->value['should_pay'];?>
</span>元
                                    </small>
                                </p>
                                <p class="tooltip-demo">
                                    <small>
                                        <i class="fa fa-history"></i>未出账单：<span class="text-danger"><?php echo $_smarty_tpl->tpl_vars['data']->value['wait_pay'];?>
</span>
                                        元 <button type="button" class="btn btn-xs btn-primary" data-toggle="tooltip" data-placement="bottom" title="" data-original-title="计费周期：2017-01-24 至 2017-02-23。计费中的金额可能会随着您的增、减人操作而相应变化，最终账单金额以账单日的结算金额为准。">计费中</button>
                                    </small>
                                </p>
                                <p><small><i class="fa fa-info-circle"></i><a href="help/group_help.html" target="_self">企业用户操作帮助</a></small></p>
                            </div>
                        </div>
                    </div>

                    <!-- list -->
                    <?php  $_smarty_tpl->tpl_vars['insuranceList'] = new Smarty_Variable; $_smarty_tpl->tpl_vars['insuranceList']->_loop = false;
 $_smarty_tpl->tpl_vars['key'] = new Smarty_Variable;
 $_from = $_smarty_tpl->tpl_vars['data']->value['insurance_list']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array');}
foreach ($_from as $_smarty_tpl->tpl_vars['insuranceList']->key => $_smarty_tpl->tpl_vars['insuranceList']->value) {
$_smarty_tpl->tpl_vars['insuranceList']->_loop = true;
 $_smarty_tpl->tpl_vars['key']->value = $_smarty_tpl->tpl_vars['insuranceList']->key;
?>
                        <div class="ibox float-e-margins iboxIndex iboxlist iboxlist<?php echo $_smarty_tpl->tpl_vars['insuranceList']->value['id'];?>
" data-id="<?php echo $_smarty_tpl->tpl_vars['insuranceList']->value['id'];?>
" data-load="true">
                            <div class="ibox-title">
                                 <span>
                                    <?php echo $_smarty_tpl->tpl_vars['insuranceList']->value['product_name'];?>

                                     <small>此方案目前共 <?php echo $_smarty_tpl->tpl_vars['insuranceList']->value['people_num'];?>
 人，保障日期 <notemtpy><?php echo $_smarty_tpl->tpl_vars['insuranceList']->value['begin_date'];?>
</notemtpy> 至 <notemtpy><?php echo $_smarty_tpl->tpl_vars['insuranceList']->value['end_date'];?>
</notemtpy></small>
                                </span>

                                <div class="ibox-tools"><a class="collapse-link"><i class="fa updown fa-chevron-up"></i></a></div>
                            </div>

                            <div class="ibox-content" style="display: block;">
                                <div class="btn-group tooltip-demo">
                                    <button class="btn btn-white del_user_all" type="button">批量删减</button>
                                    <button class="btn btn-white add_user" type="button" data-toggle="modal" data-is-medicare="0">增加成员</button>
                                    <button class="btn btn-white two_code" type="button" data-toggle="modal" data-target="#two_code">加人推送</button>
                                </div>

                                <div class="m-t-35">
                                    <div id="DataTables_Table_0_wrapper" class="dataTables_wrapper form-inline" role="grid">
                                        <p class="ajax-loading"></p>
                                        <table class="table table-hover dataTable no-footer" id="DataTables_Table_0" aria-describedby="DataTables_Table_0_info">
                                            <thead>
                                            <tr role="row">
                                                <th style="width: 24px;"><input type="checkbox" class="checkboxAll"></th>
                                                <th style="width: 110px;">姓名</th>
                                                <th style="width: 195px;">证件号码</th>
                                                <th style="width: 121px;">手机号码</th>
                                                <th class="text-center"  style="width: 102px;">保障开始</th>
                                                <th class="text-center" style="width: 102px;">保障结束</th>
                                                <th class="text-center" style="width: 50px;">状态</th>
                                                <th style="width: 121px;">操作</th>
                                            </tr>
                                            </thead>
                                            <tbody></tbody>
                                        </table>

                                        <div class="pagination-list clearfix" id="pagination<?php echo $_smarty_tpl->tpl_vars['insuranceList']->value['id'];?>
"></div>
                                    </div>

                                    <div class="text-center"><div class="btn-group"></div></div>
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
<?php /* Smarty version Smarty-3.1.21-dev, created on 2017-02-16 09:28:48
         compiled from "C:\xampp\htdocs\datebaofront-dev\geekwork\templates\template\sidebar.tpl" */ ?>
<?php if ($_valid && !is_callable('content_58a562c0baaed4_67023136')) {function content_58a562c0baaed4_67023136($_smarty_tpl) {?><div class="col-xs-2">
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
                <a href="/group/updateGroupUserInfo">
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
