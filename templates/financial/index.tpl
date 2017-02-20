{extends file="template/front.tpl"}

{block name="title"}充值{/block}

{block name="container"}
    <div class="wrapper wrapper-content">
        <div class="container">
            <div class="row">

                {include file="template/sidebar.tpl"}

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
                                            <span class="text-danger">0.00元</span>
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
                                            <span style="vertical-align: middle">0.00</span><small>元</small>
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
{/block}

{block name="js"}
    <script src="http://www.insgeek.com/public/group/js/plugins/chartJs/Chart.min.js"></script>
    <script>
    $(function () {

        //初始化账单的table
        var billLog = $("#billLog").dataTable({
            "bLengthChange":false,
            ordering:false,
            "searching": false,
            "bStateSave": true//状态保存
        });

        //初始化数据,数据存放的顺序需要跟html中table的放置顺序相同
        var datas = [[],[],[]];


        //初始化表格的数据
        var dataTableArr = [];
        $('.data-by-time').each(function(k){
            dataTableArr[k] = $(this).dataTable({
                data:datas[k],
                bLengthChange:false,
                ordering:false,
                searching: false,
                bStateSave: true//状态保存
            });
        });


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
        /*time select initialize*/
        $('.input-daterange').datepicker({
            format: 'yyyy-mm-dd',
            todayHighlight:true,
            keyboardNavigation: false,
            forceParse: false,
            autoclose: true
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
    </script>
{/block}