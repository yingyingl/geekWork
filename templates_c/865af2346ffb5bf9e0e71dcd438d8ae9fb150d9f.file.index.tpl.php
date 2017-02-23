<?php /* Smarty version Smarty-3.1.21-dev, created on 2017-02-23 20:39:30
         compiled from "/Users/lorine/Documents/workspace/datebaofront-dev/geekwork/templates/financial/index.tpl" */ ?>
<?php /*%%SmartyHeaderCode:44871463158aed54ed1c9c7-02122214%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '865af2346ffb5bf9e0e71dcd438d8ae9fb150d9f' => 
    array (
      0 => '/Users/lorine/Documents/workspace/datebaofront-dev/geekwork/templates/financial/index.tpl',
      1 => 1487853566,
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
  'nocache_hash' => '44871463158aed54ed1c9c7-02122214',
  'function' => 
  array (
  ),
  'version' => 'Smarty-3.1.21-dev',
  'unifunc' => 'content_58aed54edbb991_91698946',
  'has_nocache_code' => false,
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_58aed54edbb991_91698946')) {function content_58aed54edbb991_91698946($_smarty_tpl) {?><!DOCTYPE HTML>
<html>
<head>
    <meta charset="utf-8">
    <title>总览</title>
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
 $_smarty_tpl = $_smarty_tpl->setupInlineSubTemplate("template/sidebar.tpl", $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, null, array(), 0, '44871463158aed54ed1c9c7-02122214');
content_58aed802d0a943_12111419($_smarty_tpl);
$_smarty_tpl = array_pop($_tpl_stack); 
/*  End of included template "template/sidebar.tpl" */?>

                <div id="page" data-page="financialIndex"></div>

                <div class="col-xs-10">
                    <div class="row">
                        <div class="col-xs-4">
                            <div class="ibox float-e-margins finance-list">
                                <div class="ibox-title">账户余额</div>
                                <div class="ibox-content text-center zyRelative" style="padding-top: 0;padding-bottom: 0;">
                                    <div class="row tooltip-demo" style="padding: 20px 15px 0;height: 75px">
                                        <h2 class="no-margins text-danger">0.00<small>元</small></h2>
                                        <small>
                                            可提现金额
                                            <span class="text-danger"><?php echo $_smarty_tpl->tpl_vars['data']->value['should_pay'];?>
元</span>
                                            <i class="fa fa-question-circle text-info" data-toggle="tooltip" data-placement="bottom" data-original-title="余额中的红包收入、积分兑换收入、未缴清保障的理赔金将影响可提现的额度"></i>
                                        </small>
                                    </div>
                                                <span class="btn-group pull-right finance-remain-btn" id="accountBalanceBtnGroup" style="margin-top: 8px">
                                                    <a class="btn btn-xs btn-white" href="http://www.insgeek.com/Financial/charge.html">充值</a>
                                                    <a class="btn btn-xs btn-white" href="http://www.insgeek.com/Financial/withdraw.html">提现</a>
                                                </span>
                                </div>
                            </div>
                        </div>
                        <div class="col-xs-4" id="finance-payFees">
                            <div class="ibox float-e-margins finance-list">
                                <div class="ibox-title">
                                    当前应缴
                                </div>
                                <div class="ibox-content fin tooltip-demo" style="padding: 20px 15px 0;">
                                    <div class="row text-center" style="height: 55px;">
                                        <h2 class="dropdown open" style="margin: 0;">
                                            <button class="btn btn-danger btn-circle" style="cursor: default;margin: 0;">预</button>
                                            <span style="vertical-align: middle"><?php echo $_smarty_tpl->tpl_vars['data']->value['should_pay'];?>
</span><small>元</small>
                                        </h2>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-xs-4" >
                            <div class="ibox float-e-margins finance-list">
                                <div class="ibox-title">历史账单金额</div>
                                <div class="ibox-content no-padding">
                                    <div style="margin-left:10px;margin-right:10px;margin-top: 5px;">
                                        <canvas id="barChart" height="110"></canvas>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!--<div class="col-xs-4" >-->
                        <!--<div class="ibox float-e-margins finance-list">-->
                        <!--<div class="ibox-title">财务账户信息</div>-->

                        <!--<div class="ibox-content no-padding">-->
                        <!--<ul class="list-group" style="font-size: 12px">-->
                        <!--<li class="list-group-item clear" style="padding-bottom: 0;">-->
                        <!--<div>-->
                        <!--<form action="">-->
                        <!--<div class="list-group-item-one clearfix" style="margin-bottom: 5px">-->
                        <!--<div class="pull-left" style="line-height: 30px;">发票抬头：</div>-->
                        <!--<div class="pull-right form-group" style="margin: 0;">-->
                        <!--<select class="form-control pull-left select-form" id="receiptSelect" style="width: 200px;">-->
                        <!---->
                        <!--<option value="测试">测试</option>-->
                        <!---->
                        <!---->
                        <!--<option value="1">新增</option>-->
                        <!--</select>-->
                        <!--</div>-->
                        <!--</div>-->
                        <!--<div class="list-group-item-one clearfix">-->
                        <!--<div class="pull-left" style="line-height: 30px;">发票内容：</div>-->
                        <!--<div class="pull-right form-group" style="margin: 0;">-->
                        <!--<select class="form-control pull-left select-form" style="width: 200px;">-->
                        <!--<option value="1">信息服务费</option>-->
                        <!--</select>-->
                        <!--</div>-->
                        <!--</div>-->
                        <!--</form>-->
                        <!--</div>-->
                        <!--<div class="clearfix marginBtn text-right" style="margin-top: 8px">-->
                        <!--<a class="btn btn-xs btn-white" href="http://www.insgeek.com/Financial/manageInfo.html">信息管理</a>-->
                        <!--<a class="btn btn-xs btn-white" data-toggle="modal" data-target="#myModal1" disabled>索取发票</a>-->
                        <!--<a class="btn btn-xs btn-white" data-toggle="modal" data-target="#myModal2" disabled>索取合同</a>-->
                        <!--</div>-->
                        <!--</li>-->
                        <!--</ul>-->
                        <!--</div>-->
                        <!--</div>-->
                        <!--</div>-->
                    </div>
                    <div class="ibox float-e-margins">
                        <div class="ibox-title">
                            <span>财务详情 </span>
                        </div>
                        <div class="ibox-content" style="padding-bottom: 1px">
                            <ul id="ins_tabs" class="nav-tabs">
                                <li class="active"><a data-toggle="tab" href="#tab-1" aria-expanded="true">账单</a></li>
                                <li><a data-toggle="tab" href="#tab-2" aria-expanded="false" class="count-info">流水明细</a></li>
                                <li><a data-toggle="tab" href="#tab-3" aria-expanded="false" class="count-info">充值记录</a></li>
                                <li><a data-toggle="tab" href="#tab-4" aria-expanded="false" class="count-info">提现记录</a></li>
                            </ul>
                            <div class="tab-content">
                                <div class="tab-pane active" id="tab-1">
                                    <table class="table pay-table finance-table-all table-hover" data-page-size="5" data-sort="false">
                                        <thead>
                                        <tr>
                                            <th data-toggle="true" width="30%">账单</th>
                                            <th width="30%">计费时间</th>
                                            <th width="20%" class="pay-table-font-r">金额（人民币 元）</th>
                                            <th width="20%">状态</th>
                                        </tr>
                                        </thead>
                                        <tbody>
                                        <tr data-start_trans_id="178029" data-end_trans_id="182658" data-bill_id="15037" data-manual_trans_id="0">
                                            <td>17002</td>
                                            <td>
                                                2017-01-24 至 2017-02-23                                            </td>
                                            <td class="pay-table-font-r">894.54</td>
                                            <td>
                                                计费中
                                            </td>
                                        </tr><tr data-start_trans_id="177991" data-end_trans_id="177992" data-bill_id="15029" data-manual_trans_id="0">
                                            <td>17001</td>
                                            <td>
                                                2017-01-23                                                                                                </td>
                                            <td class="pay-table-font-r">8.16</td>
                                            <td>
                                                已支付                                            </td>
                                        </tr>                                    <!--<tr data-toggle="modal" data-target="#myModal0">-->
                                        <!--<td>2015091000000001</td>-->
                                        <!--<td>2015.09.10-2015.12.10</td>-->
                                        <!--<td>20000000000</td>-->
                                        <!--</tr>-->
                                        </tbody>
                                    </table>
                                </div>
                                <div class="tab-pane" id="tab-2">
                                    <div class="ibox float-e-margins" style="margin-bottom: 0">
                                        <div class="ibox-title" style="padding: 5px 0;border: 0;font-size: 14px;line-height: 35px;">
                                            <div data-href="http://www.insgeek.com/financial/getTransactionLogDateAjax/" class="form-group pull-left" id="data_transaction" style="padding: 0;">
                                                <select id="transSelect" class="form-control select-all select-show-time select-time pull-left" style="width: 200px;height: 30px;">
                                                    <option value="0" selected>近一周</option>
                                                    <option value="1">近一个月</option>
                                                    <option value="2">近三个月</option>
                                                    <option value="3">全部</option>
                                                    <option value="4">自定义</option>
                                                </select>
                                                <div class="user-defined-show pull-left" style="margin-left: 20px">
                                                    <div class="input-daterange input-group pull-left" id="datepicker_transaction">
                                                        <input type="text" class="input-sm form-control" name="start" readonly value="2017-02-20" />
                                                        <span class="input-group-addon" style="background-color: white">至</span>
                                                        <input type="text" class="input-sm form-control" name="end" readonly value="2017-02-20" />
                                                    </div>
                                                    <button id="showTransDataBtn" class="btn btn-primary show-btn-all pull-left" style="margin: 0;margin-left: 20px;padding: 4px 12px;">查询</button>
                                                </div>
                                            </div>
                                            <!--<ul class="list-inline pull-right finance-left">-->
                                            <!--<li><a href="#">下载流水明细</a></li>-->
                                            <!--</ul>-->
                                        </div>
                                        <table id="transLog" class="table pay-table table-hover data-by-time">
                                            <thead>
                                            <tr>
                                                <th width="20%">发生时间</th>
                                                <th width="30%">流水号</th>
                                                <th width="30%">发生项目</th>
                                                <th width="20%" class="pay-table-font-r">发生金额（元）</th>
                                            </tr>
                                            </thead>
                                            <tbody>
                                            </tbody>
                                        </table>
                                    </div>
                                </div>
                                <div class="tab-pane" id="tab-3">
                                    <div class="ibox float-e-margins" style="margin-bottom: 0">
                                        <div class="ibox-title" style="padding: 5px 0;border: 0;font-size: 14px;">
                                            <div data-href="http://www.insgeek.com/financial/getChargeTradeLogAjax/" class="form-group pull-left" id="data_chargeLog" style="padding: 0;">
                                                <select id="chargeSelect" class="form-control select-all select-show-time select-time pull-left" style="width: 200px;height: 30px;">
                                                    <option value="0" selected>近一周</option>
                                                    <option value="1">近一个月</option>
                                                    <option value="2">近三个月</option>
                                                    <option value="3">全部</option>
                                                    <option value="4">自定义</option>
                                                </select>
                                                <div class="user-defined-show pull-left" style="margin-left: 20px">
                                                    <div class="input-daterange input-group pull-left" id="datepicker_chargeLog">
                                                        <input type="text" class="input-sm form-control" name="start" readonly value="2017-02-20" />
                                                        <span class="input-group-addon" style="background-color: white">至</span>
                                                        <input type="text" class="input-sm form-control" name="end" readonly value="2017-02-20" />
                                                    </div>
                                                    <button id="showChargeTradeBtn" class="btn btn-primary show-btn-all pull-left" style="margin: 0;margin-left: 20px;padding: 4px 12px;">查询</button>
                                                </div>
                                            </div>
                                            <!--<div class="download pull-right" style="line-height: 35px;"><a href="#">下载充值记录</a></div>-->
                                        </div>
                                        <table id="chargeTradeLog" class="table pay-table table-hover data-by-time" style="margin-top: 0">
                                            <thead>
                                            <tr>
                                                <th style="width: 190px">发生时间</th>
                                                <th style="width: 190px" class="pay-table-font-r">充值金额（元）</th>
                                                <th style="width: 190px">支付方式</th>
                                                <th style="width: 370px">充值流水号</th>
                                            </tr>
                                            </thead>
                                            <tbody>
                                            </tbody>
                                        </table>
                                    </div>
                                </div>
                                <div class="tab-pane" id="tab-4">
                                    <div class="ibox float-e-margins" style="margin-bottom: 0">
                                        <div class="ibox-title" style="padding: 5px 0;border: 0;font-size: 14px;">
                                            <div data-href="http://www.insgeek.com/financial/getWithdrawTradeLogByTime/" class="form-group pull-left" id="data_withdrawLog" style="padding: 0;">
                                                <select id="withdrawSelect" class="form-control select-show-time select-time pull-left select-all" style="width: 200px;height: 30px;">
                                                    <option value="0" selected>近一周</option>
                                                    <option value="1">近一个月</option>
                                                    <option value="2">近三个月</option>
                                                    <option value="3">全部</option>
                                                    <option value="4">自定义</option>
                                                </select>
                                                <div class="user-defined-show pull-left" style="margin-left: 20px">
                                                    <div class="input-daterange input-group pull-left" id="datepicker_withdrawLog">
                                                        <input type="text" class="input-sm form-control" name="start" readonly value="2017-02-20" />
                                                        <span class="input-group-addon" style="background-color: white">至</span>
                                                        <input type="text" class="input-sm form-control" name="end" readonly value="2017-02-20" />
                                                    </div>
                                                    <button id="showWithdrawBtn" class="btn btn-primary pull-left show-btn-all" style="margin: 0;margin-left: 20px;padding: 4px 12px;">查询</button>
                                                </div>
                                            </div>
                                            <!--<div class="download pull-right" style="line-height: 35px;"><a href="#">下载提现记录</a></div>-->
                                        </div>
                                        <table id="withdrawTradeLog" class="table pay-table table-hover data-by-time" style="margin-top: 0">
                                            <thead>
                                            <tr>
                                                <th style="width: 170px">发生时间</th>
                                                <th style="width: 120px">银行流水</th>
                                                <th class="pay-table-font-r" style="width: 150px">提现金额（元）</th>
                                                <th style="width: 160px">收款账户</th>
                                                <th style="width: 170px">交易单号</th>
                                                <th style="width: 130px">提现状态</th>
                                            </tr>
                                            </thead>
                                            <tbody>
                                            </tbody>
                                        </table>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="ibox float-e-margins finance-table-all-show" style="height: 0;margin:0;overflow: hidden;position: relative;">
                        <div class="ibox-title" style="padding:10px 20px 0;font-size: 14px">
                            <span class="ibox-title-top" id="billTitle">账单：</span>
                            <span class="ibox-title-top" id="dateTitle">计费时间：</span>
                            <span class="ibox-title-top" id="amountTitle">金额（人民币 元）：</span>
                            <!--<a href="#" class="list-inline pull-right finance-left">下载账单</a>-->
                        </div>
                        <div class="ibox-content" style="padding:0 20px">
                            <table class="table pay-table table-hover" id="billLog">
                                <thead>
                                <tr>
                                    <th data-toggle="true" width="20%">交易时间</th>
                                    <th width="30%">流水号</th>
                                    <th width="30%">发生项目</th>
                                    <th width="20%" class="pay-table-font-r">发生金额（元）</th>
                                </tr>
                                </thead>
                                <tbody>
                                </tbody>
                            </table>
                        </div>
                        <span class="table-show-close"><i class="fa fa-times"></i></span>
                    </div>
                    <div class="modal inmodal" id="myModal1" tabindex="-1" role="dialog"  aria-hidden="true">
                        <div class="modal-dialog">
                            <div class="modal-content animated fadeIn">
                                <div class="modal-header">

                                </div>
                                <div class="modal-body">
                                    开发中...
                                </div>
                                <div class="modal-footer">
                                    <button type="button" class="btn btn-primary" data-dismiss="modal">确定</button>
                                    <!--<button type="button" class="btn btn-primary">Save changes</button>-->
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="modal inmodal" id="myModal2" tabindex="-1" role="dialog"  aria-hidden="true">
                        <div class="modal-dialog">
                            <div class="modal-content animated fadeIn">
                                <div class="modal-header">

                                </div>
                                <div class="modal-body">
                                    开发中...
                                </div>
                                <div class="modal-footer">
                                    <button type="button" class="btn btn-primary" data-dismiss="modal">确定</button>
                                    <!--<button type="button" class="btn btn-primary">Save changes</button>-->
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
 src="<?php echo $_smarty_tpl->getConfigVariable('static_path');?>
/js/plugins/jquery.metisMenu.js"><?php echo '</script'; ?>
>


    <?php echo '<script'; ?>
 src="http://www.insgeek.com/public/group/js/plugins/chartJs/Chart.min.js"><?php echo '</script'; ?>
>
    <?php echo '<script'; ?>
>
    $(function () {


        //初始化数据,数据存放的顺序需要跟html中table的放置顺序相同
        var datas = [[],[],[]];




        //获取所有的时间select
        var selectAll = $('.select-all');
        //select事件触发
        selectAll.change(function(){
            if($(this).val() != 4){
                var tableObj = dataTableArr[selectAll.index($(this))];
                requestLogByDate(tableObj,$(this).parent().data('href'),{ option:$(this).val()});
            }
        });

        //自定义区间段按钮的事件触发
        var btnAll = $('.show-btn-all');
        btnAll.click(function(){
            var tableObj = dataTableArr[btnAll.index($(this))];
            var parents = $(this).parent().parent();
            var startTime = parents.find("input[name='start']").val();
            var endTime = parents.find("input[name='end']").val();
            requestLogByDate(tableObj,parents.data('href'),{ option:4,start_time:startTime,end_time:endTime});
        });
        function requestLogByDate(obj,url,param){
            callAjax(param,0,function(response){
                var data = JSON.parse(response);
                if (data.length > 0) {
                    obj.fnClearTable();
                    obj.fnAddData(data);
                }else {
                    obj.fnClearTable();
                }
            },url);
        }

        var clickShowTr=$('.clickShowTr'),
                check=true,//check show or hidden
                flag=true,//check if first ,create new
                careFlag=true,
                tr,td,ul,li;
        clickShowTr.find("td:nth-of-type(1)").prepend("<i class='fa fa-caret-right'></i>");
        clickShowTr.click(showHidden);
        function showHidden(){
            /*实现点击箭头转动*/
            var caretRight=$(this).find("i");
            if(careFlag){
                caretRight.css({
                    transform:"rotate(90deg)"
                });
                careFlag=false;
            }else {
                caretRight.css({
                    transform:"rotate(0)"
                });
                careFlag=true;
            }
            /*实现点击箭头转动结束*/
            var oldUl=$(this).next().find('ul').length;
            if(oldUl==0){
                tr=$(this).clone().insertAfter($(this)).removeClass().css('display','table-row');
                tr.find("td:nth-of-type(1) i").remove();
                td=tr.find("td:nth-of-type(3)").text('');
                ul=$("<ul class='list-inline'>").appendTo(td);
                li=$("<li>465464678987</li><li>465464678987</li><li>465464678987</li><li>465464678987</li><li>465464678987</li>").appendTo(ul).css('display','block');
                flag=true;
            }else if(oldUl==1&&flag&&check){
                $(this).next().css({
                    display:'none'
                });
                flag=false;
            }else if(oldUl==1&&check){
                $(this).next().css({
                    display:'table-row'
                });
                check=false;
            }else if(oldUl==1&&!check){
                $(this).next().css({
                    display:'none'
                });
                check=true;
            }
        }
        /*account remaining show*/
        var zyOnmouse=$('#zyOnmouse'),
                zyShow=$('.zyShow');
        var handle = null;
        zyOnmouse.hover(onmouse,mouseleave);
        function onmouse(){
            zyShow.show();
        }
        function mouseleave(){
            zyShow.hide();
        }
        /*click show table content and tbody=>tr height-light*/
        var tabelAllTr=$('.finance-table-all').find('tbody tr'),
                tabelAllShow=$('.finance-table-all-show');
        var billTitleObj = $('#billTitle');
        var dateTitleObj = $('#dateTitle');
        var amountTitleObj = $('#amountTitle');
        tabelAllTr.on("click", function () {
            //处理账单的头信息
            billTitleObj.text('账单：' + $(this).find('td:nth-child(1)').text());
            dateTitleObj.text('计费时间：' + $(this).find('td:nth-child(2)').text());
            amountTitleObj.text('金额（人民币 元）：' + $(this).find('td:nth-child(3)').text());
            var startTransId = $(this).data('start_trans_id');
            var endTransId = $(this).data('end_trans_id');
            var manualTransId = $(this).data('manual_trans_id');
            var billId=$(this).data('bill_id');
            requestLogByDate(
                    billLog,
                    'http://www.insgeek.com/financial/getBillLog/',
                    {
                        bill_id: billId,
                        start_transaction_id: startTransId,
                        end_transaction_id: endTransId,
                        manual_transaction_id: manualTransId
                    }
            );
            tabelAllShow.css({
                height:'auto',
                overflow:'visible'
            });
            tabelAllTr.removeClass('active');
            $(this).addClass('active');
        });
        /*click table-show-close close the table content*/
        var tableShowClose=$('.table-show-close');
        tableShowClose.on('click', function () {
            tabelAllShow.css({
                height:0,
                overflow:'hidden'
            });
            tabelAllTr.removeClass('active');
        });
        /*if selectBar not equal "账单",the tabelAllShow hidden*/
        var selectBar=$('#ins_tabs').find('li');
        selectBar.on('click', function () {
            if($(this).find('a').text()!='账单'){
                tabelAllShow.css({
                    height:0,
                    overflow:'hidden'
                });
                tabelAllTr.removeClass('active');
            }
        });
        /*when select value is user-defined,the time controller show*/
        var selectShowTime=$('.select-show-time');
        selectShowTime.on('change', function () {
            if($(this).val()=="4"){
                $(this).next('.user-defined-show').css({
                    display:'table'
                })
            }else {
                $(this).next('.user-defined-show').css({
                    display:'none'
                })
            }
        });
        

        var receiptSelectObj = $('#receiptSelect');
        receiptSelectObj.change(function(){
            if($(this).val() == 1)
            {
                location.href = "http://www.insgeek.com" + "/Financial/manageInfo/tab-2";
            }
        });


        var barData = {
            labels: ["17001","17002"],
            datasets: [
                {
                    label: "My Second dataset",
                    fillColor: "rgba(26,179,148,0.5)",
                    strokeColor: "rgba(26,179,148,0.8)",
                    highlightFill: "rgba(26,179,148,0.75)",
                    highlightStroke: "rgba(26,179,148,1)",
                    data: ["8.16","894.54"]                }
            ]
        };

        var barOptions = {
            scaleBeginAtZero: true,
            scaleShowGridLines: true,
            scaleGridLineColor: "rgba(0,0,0,.05)",
            scaleGridLineWidth: 1,
            barShowStroke: true,
            barStrokeWidth: 2,
            barValueSpacing: 5,
            barDatasetSpacing: 1,
            responsive: true,
        }


        var ctx = document.getElementById("barChart").getContext("2d");
        var myNewChart = new Chart(ctx).Bar(barData, barOptions);


    });
    <?php echo '</script'; ?>
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
<?php /* Smarty version Smarty-3.1.21-dev, created on 2017-02-23 20:39:30
         compiled from "/Users/lorine/Documents/workspace/datebaofront-dev/geekwork/templates/template/sidebar.tpl" */ ?>
<?php if ($_valid && !is_callable('content_58aed802d0a943_12111419')) {function content_58aed802d0a943_12111419($_smarty_tpl) {?><div class="col-xs-2">
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
