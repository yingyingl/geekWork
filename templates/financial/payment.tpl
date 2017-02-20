{extends file="template/front.tpl"}

{block name="title"}缴费{/block}

{block name="container"}
    <div class="wrapper wrapper-content">
        <div class="container">
            <div class="row">

                {include file="template/sidebar.tpl"}

                <div id="page" data-page="payment"></div>

                <div class="col-xs-10">
                    <div class="finance-recharge finance-payment ibox float-e-margins">
                    <div class="ibox-title">
                        <span>缴费</span>
                    </div>
                    <div class="ibox-content">
                    <ul id="ins_tabs" class="nav-tabs">
                        <li class="active"><a data-toggle="tab" href="#tab-1" aria-expanded="true">缴费</a></li>
                        <li><a data-toggle="tab" href="#tab-2" aria-expanded="false" class="count-info">缴费记录</a></li>
                    </ul>
                    <div class="tab-content global-tab-content">
                    <div class="tab-pane active" id="tab-1" >
                        <div class="alert alert-danger" style="display: none"><i class="fa fa-minus-square"></i>密码输入错误请重新输入</div>
                        <!--group为组，组中分为charge-head为头部，body为内容-->
                        <div>
                            <div class="payment-clickShow clear" style="margin-bottom: 15px;padding-right:0 ">
                                <div class="alert alert-warning" style="margin-top: 15px">
                                    <h3>温馨提示：</h3>
                                    <p>1、支付宝账户必须为企业支付宝账户，否则支付款项将会退回支付账户；</p>
                                    <p>2、无法通过在线支付时，请选择使用转账汇款，谢谢。</p>

                                </div>
                                <div class="pull-left payment-clickShow-left">
                                    <div class="charge-group charge-group-click clear" style="margin: 10px 0;">
                                        <div class="charge-head">
                                            <i class="fa fa-plus-circle rotate-font"></i>可用余额：
                                        </div>
                                        <div class="charge-body">
                                            <span style="color: #ec4758;">0.00元</span>
                                        </div>
                                    </div>
                                </div>
                                <div class="payment-hidden pull-left">
                                    <div class="pull-left">
                                        <div class="charge-group charge-group-payment clear">
                                            <div class="pull-left" style="line-height: 34px">
                                                <input type="checkbox" id="balanceChecked"/>
                                                使用余额：
                                            </div>
                                            <div class="form-group pull-left">
                                                <input disabled="disabled" type="text" class="form-control" placeholder="请输入使用金额" style="width: 187px;" id="inputBalance"/>
                                            </div>
                                            <!--</form>-->
                                        </div>
                                        <div class="deposit-table deposit-password  charge-group clearfix">
                                            <div class="charge-head">财务密码：</div>
                                            <div class="charge-body form-group" style="margin: 0;">
                                                <div class="alieditContainer pull-left" id="payPassword_container" data-disabled="disabled">
                                                    <input type="password" id="payPassword_rsainput" name="payPassword_rsainput" class="ui-input i-text sixDigitPasswordInput" autocomplete="off" value="" maxlength="6" style="outline: none; margin-left: -999px;">
                                                </div>
                                                <span class="pull-left" style="border: 0;"><a href="http://www.insgeek.com/Financial/findFinancialPassword.html" target="_blank">忘记密码?</a></span>
                                            </div>
                                        </div>
                                        <div class="deposit-table deposit-password charge-group clearfix">
                                            <div class="charge-head">验证码：</div>
                                            <div class="charge-body form-group pull-left financial-box-width" style="margin: 0;">
                                                <input disabled="disabled" type="text" id="verify" class="form-control pull-left financial-password-input pwdVerify" style="width: 187px;"/>
                                                                        <span class="pull-left login-box" style="margin-left: 20px">
                                                                            <img class="verity-pec" id="verifyShow" src="http://www.insgeek.com/verify/verify_show/" onclick="this.src='http://www.insgeek.com/verify/verify_show/'+Math.random()"/>
                                                                        </span>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <!--<div class="hr-line-dashed"></div>-->
                            <div id="paySection">
                                <div class="favorable charge-group clearfix" style="height: auto;">
                                    <div class="charge-head">支付方式：</div>
                                    <div class="charge-body">
                                        <ul class="favorable-line list-inline clear pull-left" style="margin: 0;">
                                            <li class="myselect" id="payOnline" data-value="0">
                                                <em>在线支付</em>
                                            </li>
                                            <li class="myselect" data-value="1">
                                                <em>转账汇款</em>
                                            </li>
                                        </ul>
                                        <div class="pull-left text-danger" style="line-height: 40px;margin-left: 20px;display: none" id="useBalanceAll">全部使用余额支付</div>
                                    </div>
                                </div>
                                <div class="ibox-content js-ibox-content" id="js-ibox-0" style="display: block;padding:10px 0;border-bottom: 1px solid #e7eaec;">
                                    <!--<div class="tab-content">-->
                                    <!--<div class="tab-pane active favorable">-->
                                    <!--<ul class="list-inline clear" style="margin: 0;">-->
                                    <!--<li class="finance-online-active">-->
                                    <!--<em>钱方</em>-->
                                    <!--</li>-->
                                    <!--</ul>-->
                                    <!--</div>-->
                                    <!--</div>-->
                                    <div class="charge-group clearfix">
                                        <!--<button type="button" id="submitPayOnline" class="btn btn-primary btn-sm btn-de" data-toggle="modal" data-target="#myModal2">立即缴费</button>-->
                                        <div class="charge-group favorable clearfix">
                                            <div class="charge-head">支付方式：</div>
                                            <div class="charge-body">
                                                <ul class="list-inline clear" style="margin: 0;height: 40px;" id="onlinePayTypeSel">
                                                    <li class="alipay olType" value="0">
                                                        <img src="http://www.insgeek.com/public/insgeek2.0/img/finance/Alipay.png" alt="支付宝logo">
                                                    </li>
                                                    <li class="wxpay olType" value="1">
                                                        <img src="http://www.insgeek.com/public/insgeek2.0/img/finance/Wxpay.png" alt="微信logo">
                                                    </li>
                                                </ul>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="js-ibox-content" id="js-ibox-1" style="border-top: 1px solid #e7eaec;border-bottom: 1px solid #e7eaec">
                                    <div class="tab-content" id="offLinePaymentContent" style="padding-top: 15px">
                                        <div class="tab-pane finance-payment-transfor active">
                                            <!--group为组，组中分为charge-head为头部，body为内容-->
                                            <div class="alert alert-warning password-table deposit-password charge-group clearfix">
                                                <p style="padding: 0 15px 15px" class="text-danger">请您在汇款完成后填写汇款/转账信息，然后等待我们的财务人员进行人工确认。
                                                    确认过程大概需要 1 - 3 个工作日，如有疑问，请致电保险极客全国客服电话 400-886-2309 询问，谢谢。 </p>
                                                <div class="col-xs-6">
                                                    <p><strong>1.银行转账</strong></p>
                                                    <p>账户名称：北京维众人力资源管理有限公司</p>
                                                    <p>开户银行：招商银行北京大望路支行</p>
                                                    <p>银行账号：110920430910401</p>
                                                </div>
                                                <div class="col-xs-6">
                                                    <p><strong>2.支付宝转账</strong></p>
                                                    <p>账户名称：北京维众人力资源管理有限公司</p>
                                                    <p>支付宝账号：weizhong@insgeek.com</p>
                                                </div>
                                            </div>
                                            <div class="password-table deposit-password charge-group clearfix">
                                                <div class="charge-head">汇款金额：</div>
                                                <div class="charge-body form-group">
                                                    <input type="text" class="form-control pull-left" id="account_amount" placeholder="请输入汇款金额"/>
                                                    <span id='accountAmountErrorMsg' class="pull-left text-danger"  style="margin-left: 20px;font-size: 14px;display: none;"><i class="fa fa-times-circle-o"></i> 低于应缴总额</span>
                                                </div>
                                            </div>
                                            <div class="password-table deposit-password charge-group clearfix">
                                                <div class="charge-head">汇款姓名：</div>
                                                <div class="charge-body form-group">
                                                    <input type="text" class="form-control" id="account_name" placeholder="请输入汇款人姓名"/>
                                                </div>
                                            </div>
                                            <div class="password-table deposit-password charge-group clearfix">
                                                <div class="charge-head">汇款账号：</div>
                                                <div class="charge-body form-group">
                                                    <input type="text" class="form-control pull-left" id="account_number" placeholder="请输入转账的支付宝或者银行卡号"/>
                                                    <span id='account_type' class="pull-left"  style="margin-left: 20px;font-size: 14px"></span>
                                                </div>
                                            </div>
                                            <!--<div class="password-table deposit-password charge-group clearfix">-->
                                            <!--<div class="charge-head">汇款方式：</div>-->
                                            <!--<div class="charge-body form-group">-->
                                            <!--<input type="text" class="form-control" id="account_type" readonly/>-->
                                            <!--</div>-->
                                            <!--</div>-->
                                            <div class="password-table deposit-password charge-group clearfix">
                                                <div class="charge-body form-group">
                                                    <input type="hidden" class="form-control click-show-remind pull-left"  id="transaction_number" value="" placeholder="请输入汇款交易流水号"/>
                                                    <!--                   <span class="click-show-modal pull-left" data-toggle="modal" data-target="#myModal4" style="margin-left: 20px" >如何获取？</span> -->
                                                    <div class="modal inmodal" id="myModal4" tabindex="-1"
                                                         role="dialog" aria-hidden="true">
                                                        <div class="modal-dialog modal-lg">
                                                            <div class="modal-content animated fadeIn">
                                                                <div class="modal-header">
                                                                    <button type="button" class="close" data-dismiss="modal">
                                                                        <span aria-hidden="true">&times;</span>
                                                                        <span class="sr-only">关闭</span>
                                                                    </button>
                                                                    <h4 class="modal-title">回单流水号获取</h4>
                                                                    <small>银行回单流水号位置提示
                                                                    </small>
                                                                </div>
                                                                <div class="modal-body">
                                                                    <p class="text-center"><img src="http://www.insgeek.com/public/insgeek2.0/img/finance/huidan.jpg" alt="获取流水号"></p>
                                                                </div>
                                                                <div class="modal-footer">
                                                                    <button type="button" class="btn btn-primary" data-dismiss="modal">确定
                                                                    </button>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="payment-right text-right">
                                    <div class="payment-left-group clearfix">
                                        <div class="payment-left-head">应缴总额：<div style="width: 120px;float: right">0.00元</div></div>
                                    </div>
                                    <div class="payment-left-group clearfix">
                                        <div class="payment-left-head">使用余额：<div style="width: 120px;float: right"><span id="usedBalanceLabel">0.00</span>元</div></div>
                                    </div>
                                </div>
                                <div class="payment-clickShow-right text-right">
                                    <div class="favorable charge-group clearfix text-danger">
                                        <span id="actualPayText">实际应缴：</span>
                                        <div style="width: 120px;float: right">
                                            <span id="actualPay">0.00</span>元
                                        </div>
                                    </div>
                                </div>
                                <div class="charge-group payment-last-money clearfix">
                                    <button type="button" class="btn btn-primary btn-sm btn-de submitBtn" disabled data-toggle="modal" id="submitPayOnline" >确定</button>
                                </div>
                                <!--<button type="button" id="submitPayOnline" class="btn btn-primary btn-sm btn-de submitBtn">立即缴费</button>-->
                            </div>
                        </div>
                    </div>
                    <div class="tab-pane" id="tab-2">
                        <div class="ibox-title" style="padding: 10px 0 0 0;border: 0;font-size: 14px;">
                            <div class="form-group pull-left" id="data_5" style="padding: 0;">
                                <select class="form-control select-show-time select-time pull-left" style="width: 200px;height: 30px;" id="logSelect">
                                    <option value="0">近一周</option>
                                    <option value="1">近一个月</option>
                                    <option value="2">近三个月</option>
                                    <option value="3">全部</option>
                                    <option value="4">自定义</option>
                                </select>
                                <div class="user-defined-show pull-left" style="margin-left: 20px">
                                    <div class="input-daterange input-group pull-left" id="datepicker">
                                        <input type="text" class="input-sm form-control" name="start" readonly value="2017-02-20" id="startTime" />
                                        <span class="input-group-addon" style="background-color: white">至</span>
                                        <input type="text" class="input-sm form-control" name="end" readonly value="2017-02-20" id="endTime" />
                                    </div>
                                    <button id="showTransDataBtn" class="btn btn-primary pull-left" style="margin: 0;margin-left: 20px;padding: 4px 12px;">查询</button>
                                </div>
                            </div>
                            <!--<div class="download pull-right" style="line-height: 35px;"><a href="#">下载缴费记录</a></div>-->
                        </div>
                        <div class="ibox-content no-border" style="padding: 0;">
                            <table class="table pay-table table-hover" id="withdrawTradeLog" style="margin-top: 0">
                                <thead>
                                <tr>
                                    <th data-toggle="true" style="width: 180px">发生时间</th>
                                    <th style="width: 250px">保险极客交易单号</th>
                                    <th class="pay-table-font-r" style="width: 180px">缴费金额（元）</th>
                                    <th style="width: 180px">缴费方式</th>
                                    <th style="width: 180px">状态</th>
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
                </div>

                <div class="modal inmodal" id="myModal2" tabindex="-1" role="dialog" data-backdrop="static" aria-hidden="true">
                    <div class="modal-dialog">
                        <div class="finance-recharge finance-payment ibox float-e-margins">
                            <div class="ibox-title">
                                <button type="button" class="close" data-dismiss="modal">
                                    <span aria-hidden="true">x</span>
                                    <span class="sr-only"></span>
                                </button>
                            </div>
                            <div class="ibox-content no-border">
                                <div class="tab-content">
                                    <div class="tab-pane active">
                                        <!--group为组，组中分为charge-head为头部，body为内容-->
                                        <div class="favorable charge-group clearfix" style="height: auto;">
                                            <div class="payment-success">
                                                <strong>缴费中...</strong>
                                                <span>支付成功前请勿关闭此支付验证窗口</span>
                                                <span>支付成功后根据您支付的情况点击下面的按钮</span>
                                            </div>
                                        </div>
                                        <div class="hr-line-dashed" style="border-color:transparent;"></div>
                                        <div class="charge-group payment-check clearfix">
                                            <button class="btn btn-primary btn-sm btn-de pull-left" data-dismiss="modal">缴费成功</button>
                                            <button class="btn btn-primary btn-sm btn-de pull-left">缴费失败</button>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="modal inmodal" id="myModal1" tabindex="-1" role="dialog"  aria-hidden="true">
                    <div class="modal-dialog">
                        <div class="modal-content animated fadeIn">
                            <div class="finance-recharge ibox float-e-margins">
                                <div class="ibox-title">
                                    <span>修改</span>
                                    <button type="button" class="close" data-dismiss="modal">
                                        <span aria-hidden="true">x</span>
                                        <span class="sr-only"></span>
                                    </button>
                                </div>
                                <div class="ibox-content">
                                    <div class="tab-content global-tab-content">
                                        <div class="tab-pane active" id="city_list_change">
                                            <!--group为组，组中分为charge-head为头部，body为内容-->
                                            <div class="password-table deposit-password charge-group clearfix" style="font-size: 18px;">请输入新的收货地址</div>
                                            <div class="hr-line-dashed"></div>
                                            <div class="password-table deposit-password charge-group clearfix">
                                                <select class="prov citySelect_change" style="margin: 0;"></select>
                                                <div class="hr-line-dashed"></div>
                                                <select class="city citySelect_change" disabled="disabled"></select>
                                                <div class="hr-line-dashed"></div>
                                                <select class="dist citySelect_change" disabled="disabled"></select>
                                                <div class="hr-line-dashed dist-hidden" style="display: none;"></div>
                                            </div>
                                            <div class="password-table deposit-password charge-group clearfix">
                                                <div class="form-group clear">
                                                    <input type="text" class="form-control manage-add-type-2 pull-left"/>
                                                </div>
                                            </div>
                                            <div class="hr-line-dashed"></div>
                                            <div class="charge-group payment-check clearfix">
                                                <button class="btn btn-primary btn-sm btn-de pull-left">确定</button>
                                                <button class="btn btn-primary btn-sm btn-de pull-left" data-dismiss="modal">取消</button>
                                            </div>
                                        </div>
                                    </div>
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
    <script src="{#static_path#}/js/address/jquery.cityselect.js"></script>
    <script src="{#static_path#}/js/ig.validation-0.0.1.js"></script>
    <script src="{#static_path#}/js/plugins/jquery.pwd.min.js"></script>
    <script id='spay-script' type='text/javascript' src='https://jspay.beecloud.cn/1/pay/jsbutton/returnscripts?appId=5f57603a-e2c5-45fd-bb67-f299ef9d1e83'></script>
    <script>
    $(function ()
    {

        var data = [];
        var dt = $('.table-hover').dataTable({
            data:data,
            "bLengthChange":false,
            ordering:false,
            "searching": false,
            "bStateSave": true//状态保存
        });



        var startTimeObj = $('#startTime');
        var endTimeObj = $('#endTime');
        $('#logSelect').change(function(){
            var val = $(this).val();
            if(val != 4){
                requestLogByTime($(this).val());
            }
        });

        $('#showTransDataBtn').click(function(){
            requestLogByTime(4);
        });




        function requestLogByTime(option){
            callAjax({
                option:option,
                start_time:startTimeObj.val(),
                end_time:endTimeObj.val()
            },0,function(response){
                var data = JSON.parse(response);
                if (data.length > 0) {
                    dt.fnClearTable();
                    dt.fnAddData(data);
                }else{
                    dt.fnClearTable();
                }
            },'http://www.insgeek.com/financial/getPaymentTransactionLogAjax/');
        }
        var financialPasswordIsExist = '1';
        var accountNameFlag = false;
        var accountNumberFlag = false;
        var transactionNumberFlag = false;
        var financialPasswordFlag = false;
        var verifyFlag = false;
        $('#data_1 .input-group.date').datepicker({
            format: 'yyyy-mm-dd',
            todayHighlight:true,
            todayBtn: "linked",
            keyboardNavigation: false,
            forceParse: false,
            calendarWeeks: true,
            autoclose: true
        });
        //财务中心点击相应的li被选择上
        var paymentSelectIsClick = false,
                submitBtn = $(".submitBtn"),
                paymentSelect=$(".favorable-line .myselect"),
                onlinePaySelObj=$("#onlinePayTypeSel .olType"),
                num,
                dataValue,
                submitPayOnline,
                submitPayOffline;
        var prevPaymentSelect = paymentSelect.eq(0);
        var onlinePayType=0;
        onlinePaySelObj.click(function(){
            onlinePaySelObj.removeClass("finance-active");
            $(this).addClass("finance-active");
            onlinePayType=$(this).attr('value');
        });
        paymentSelect.click(function () {
            if(paymentSelectIsClick){
                prevPaymentSelect = $(this);
                paymentSelect.removeClass("finance-active");
                $(this).addClass("finance-active");
                num=$(this).index();
                dataValue=$(this).attr("data-value");
                $(".js-ibox-content").css({
                    display: "none"
                });
                $("#js-ibox-" + num).css({
                    display: "block"
                });
                if(dataValue==0){
                    $('#actualPayText').html('实际应缴：');
                    submitBtn.on("click",submitPayOnlineFun);
                }else if(dataValue==1){
                    $('#actualPayText').html('最小应缴：');
                    submitBtn.on("click",submitPayOfflineFun);
                }else {
                    return;
                }
                updateOfflineBtnState();
            }
        });
        /*when select value is user-defined,the time controller show*/
        var selectShowTime=$(".select-show-time");
        selectShowTime.on("change", function ()
        {
            if ($(this).val()==4)
            {
                $(this).next(".user-defined-show").css({
                    display: "table"
                })
            } else
            {
                $(this).next(".user-defined-show").css({
                    display: "none"
                })
            }
        });
        /*time select initialize*/
        $('#data_5 .input-daterange').datepicker({
            format: 'yyyy-mm-dd',
            todayHighlight:true,
            keyboardNavigation: false,
            forceParse: false,
            autoclose: true
        });
        /*citySelect*/
        function selectCity(father, prov, city, dist)
        {
            father.citySelect({
                url: 'http://www.insgeek.com/public/group/js/plugins/cityselect/city.min.js',
                prov: prov,
                city: city,
                dist: dist,
                nodata: "none"
            });
        }

        var citySelectChange=$(".citySelect_change"),
                distHidden=$(".dist-hidden"),
                city, dist;
        citySelectChange.eq(0).on("change", function ()
        {
            setTimeout(function ()
            {
                city=citySelectChange.eq(1).val();
                dist=citySelectChange.eq(2).val();
                if (dist==null)
                {
                    distHidden.css({
                        display: "none"
                    });
                } else
                {
                    distHidden.css({
                        display: "block"
                    });
                }
            });
        });
        selectCity($("#city_list_change"), "北京", "东城区");
        /*when js-show-modal option is 新增 modal show*/
        var showModal=$("#js-show-modal");
        showModal.on("change", function ()
        {
            if ($(this).val()=="新增")
            {
                $("#myModal1").modal({
                    show: true
                });
            }
        });
        /*balance checkbox*/
        /*财务密码输入框*/
        var inputContainer=$("#payPassword_container");
        var inputHideLenght;
        inputContainer.Alipay(function (e) {
            inputHideLenght=e;
            updateOfflineBtnState();
        });
        // 设置仅能输入数字的文本框对象
        var inputHide=$("#payPassword_rsainput");
        var inputBalanceObj=$('#inputBalance');
        var accountAmountObj=$('#account_amount');//汇款金额obj
        //bind input event(保证只能输入数字和两位小数)
        bindInputEventForFloatText([
            inputBalanceObj,
            accountAmountObj
        ]);
        var actualPayObj=$('#actualPay');//actual pay obj
        var actualPayAmount=parseFloat("0.00").toFixed(2);
        var usedBalanceLabel=$('#usedBalanceLabel');//balance used obj
        var totalPayAmount=parseFloat("0.00").toFixed(2);//total pay amount number
        totalPayAmount=isNaN(totalPayAmount)? 0.00:totalPayAmount;
        var userBalanceAmount=parseFloat("0.00").toFixed(2);//user balance amount number
        userBalanceAmount=isNaN(userBalanceAmount)? 0.00:userBalanceAmount;


        var balanceCheckedObj=$("#balanceChecked"),
                inputDis=$("input[disabled=disabled]"),
                balanceCheckFlag=balanceCheckedObj.is(":checked");
        if(userBalanceAmount<=0)
        {
            balanceCheckedObj.attr('disabled',true);
        }
        if(totalPayAmount<=0)
        {
            balanceCheckedObj.prop('disabled',true);
        }else{
            submitBtn.attr('disabled',false);
            paymentSelectIsClick = true;
            $('.alipay').addClass('finance-active');
            prevPaymentSelect.addClass('finance-active');
        }
        balanceCheckedObj.click(function ()
        {
            balanceCheckFlag=balanceCheckedObj.is(":checked");
            if (balanceCheckFlag)
            {
                checkFinancialPasswordIsExist();
                inputDis.removeAttr("disabled");
                setPasswordVerifyState();
            } else
            {
                inputDis.attr("disabled", "disabled");
            }
            updateToPayAmount();
            updateOfflineBtnState();
        });


        function checkFinancialPasswordIsExist(){
            if(financialPasswordIsExist != 1){
                //未设置财务密码
                swal({
                    title: '您尚未设置财务密码，请在设置密码之后使用余额。',
                    text: '',
                    type: 'warning',
                    showCancelButton: true,
                    confirmButtonColor: '#DD6B55',
                    confirmButtonText: '前往设置',
                    cancelButtonText: '暂不使用余额',
                    closeOnConfirm: false,
                    closeOnCancel: true,
                    allowEscapeKey: false   //禁用Esc
                },function(isConfirm){
                    if(isConfirm){
                        location.href = 'http://www.insgeek.com/financial/changeFinancialPassword.html/';
                    } else {
                        balanceCheckedObj.click();
                    }
                });
            }
        }
        //get input balance amount
        var inputBalanceAmount=parseFloat($.trim(inputBalanceObj.val()));
        inputBalanceAmount=isNaN(inputBalanceAmount)? 0:inputBalanceAmount;
        function checkInputBalance()
        {
            inputBalanceAmount=parseFloat($.trim(inputBalanceObj.val()));
            totalPayAmount=parseFloat(totalPayAmount);
            userBalanceAmount=parseFloat(userBalanceAmount);
            //to make sure input balance amount is appropriate
            if (inputBalanceAmount>totalPayAmount || inputBalanceAmount>userBalanceAmount)
            {
                var mode =(inputBalanceAmount>userBalanceAmount) ? 1 : 2;
                var adjustAmount=(userBalanceAmount>totalPayAmount) ? totalPayAmount : userBalanceAmount;
                return confirmUpdateInputBalance(mode,adjustAmount);
            }
            else
            {
                if(balanceCheckFlag && inputBalanceAmount==totalPayAmount){
                    //全部使用余额的话，需要更新转账的所填金额以及在线支付的实际支付金额
                    actualPayAmount=0;
                    accountAmountObj.val(0);
                }
                $(this).css('border-color','#e5e6e7');
                updateToPayAmount();
                return true;
            }
        }

        function confirmUpdateInputBalance(mode,adjustAmount)
        {
            var text=mode==1? '您输入的金额超过了可用的余额，是否要使用全部可用余额？':'您输入的金额大于应缴总额，请确认是否减少为应缴总额？';
            var result=false;
            swal({
                        title:'警告！',
                        text: text,
                        type: 'warning',
                        showCancelButton: true,
                        confirmButtonColor: '#DD6B55',
                        confirmButtonText: '确认变更',
                        cancelButtonText: '返回修改',
                        closeOnConfirm: true,
                        closeOnCancel: true
                    },
                    function (isConfirm)
                    {
                        if(isConfirm)
                        {
                            //confirm
                            inputBalanceAmount=adjustAmount;
                            inputBalanceObj.val(adjustAmount);
                            inputBalanceObj.css('border-color','#e5e6e7');
                            //全部使用余额的话，需要更新转账的所填金额以及在线支付的实际支付金额
                            actualPayAmount=0;
                            accountAmountObj.val(0);
                            result=true;
                        }
                        else
                        {
                            //cancel
                            inputBalanceAmount=0;
                            inputBalanceObj.css('border-color','red');
                        }
                        updateToPayAmount();
                        return result;
                    });
        }

        inputBalanceObj.on('blur',function(){
            if($(this).val() != '') $(this).val(parseFloat($(this).val()));
            checkInputBalance();
            setPasswordVerifyState();
            updateOfflineBtnState();
        });

        //设置财务密码输入框、验证码输入框的状态
        function setPasswordVerifyState(){
            if(parseFloat(inputBalanceAmount) == 0 || inputBalanceAmount == ''){
                $('.pwdVerify').attr('disabled','disabled');
                inputContainer.attr('data-disabled','disabled');
                financialPasswordFlag = true;
                verifyFlag = true;
            }else{
                $('.pwdVerify').removeAttr('disabled');
                inputContainer.attr('data-disabled','');
                financialPasswordFlag = inputHideLenght != ''?true:false;
                verifyFlag = verifyObj.val() != ''?true:false;
            }
        }

        /*to update pay amount number*/
        function updateToPayAmount()
        {
            if (balanceCheckFlag)
            {
                if (isNaN(inputBalanceAmount) || null==inputBalanceAmount)
                {
                    inputBalanceAmount=0.00;
                }
                actualPayAmount=(totalPayAmount - inputBalanceAmount).toFixed(2);
                actualPayObj.html(fmoney(actualPayAmount));
                usedBalanceLabel.html(fmoney(inputBalanceAmount));
            }
            else
            {
                actualPayAmount=totalPayAmount;
                actualPayObj.html(fmoney(actualPayAmount));
                usedBalanceLabel.html('0.00');
            }

            payTypeObjIsValid();
        }


        function payTypeObjIsValid(){
            if(inputBalanceAmount == totalPayAmount && balanceCheckFlag){
                $(".myselect").removeClass('finance-active');
                $('.alipay').removeClass('finance-active');
                $('.wxpay').removeClass('finance-active');
                $("#offLinePaymentContent").hide();
                $("#useBalanceAll").show();
                paymentSelectIsClick = false;
            } else {
                $("#offLinePaymentContent").show();
                $("#useBalanceAll").hide();
                paymentSelectIsClick = true;
                if(onlinePayType==0){
                    $('.alipay').addClass('finance-active');
                }else{
                    $('.wxpay').addClass('finance-active');
                }


                prevPaymentSelect.addClass('finance-active');
            }
        }

        function getPayType()
        {
            var payType=0;
            var onlineSelect=$('#payOnline').hasClass('finance-active') ? true : false;
            var userBalanceFlag=balanceCheckFlag && inputBalanceAmount!=0;
            if (userBalanceFlag && inputBalanceAmount==totalPayAmount)
            {
                payType=11;//pay with balance only
            }
            else if (!userBalanceFlag && onlineSelect && actualPayAmount==totalPayAmount)
            {
                payType=12;//pay online only
            }
            else if (userBalanceFlag && onlineSelect && (parseFloat(actualPayAmount) + inputBalanceAmount).toFixed(2)==totalPayAmount)
            {
                payType=13;//pay online + balance
            }
            else if (!userBalanceFlag && !onlineSelect && actualPayAmount==totalPayAmount)
            {
                payType=14;//pay offline only
            }
            else if (userBalanceFlag && !onlineSelect && (parseFloat(actualPayAmount) + inputBalanceAmount).toFixed(2)==totalPayAmount)
            {
                payType=15;//pay offline + balance
            }
            return payType;
        }
        function preCheckBeforeSubmit(payType)
        {
            if(!checkInputBalance())
            {
                return false;
            }
            var result=true;
            if(payType<=0)
            {
                swal("错误！", '支付方式错误，请重新选择支付方式！', "warning");
                result = false;
            }
            else if(totalPayAmount == 0)
            {
                swal("错误！", '没有账单需要支付！', "warning");
                result = false;
            }
            else
            {
                inputBalanceAmount=isNaN(inputBalanceAmount) ? 0 : inputBalanceAmount;
                if (inputBalanceAmount>userBalanceAmount)
                {
                    swal("错误！", '余额不足！', "warning");
                    result = false;
                }
            }
            return result;
        }
        var verifyObj = $("#verify");
        var verifyShowObj = $("#verifyShow");
        function checkVerify(){
            var verifyVal = $.trim(verifyObj.val());
            var ajaxFlag = true;
            callAjax({verify:verifyVal},0,function(response){
                if(response != 1) {
                    swal("验证码输入有误！", '', "warning");
                    verifyShowObj.click();
                    ajaxFlag = false;
                }
            },"http://www.insgeek.com/verify/verify_check_ajax/");
            return ajaxFlag;
        }
        verifyObj.blur(function(){
            if($(this).val() == ''){
                verifyFlag = false;
            } else {
                verifyFlag = true;
            }
            updateOfflineBtnState();
        });
        var accountAmountFlag=false;
        var accmountAmountErrorObj=$('#accountAmountErrorMsg');
        accountAmountObj.blur(function(){
            var accountAmount=parseFloat($(this).val());
            inputBalanceAmount=parseFloat(inputBalanceAmount);
            if((accountAmount+inputBalanceAmount)>=totalPayAmount)
            {
                accmountAmountErrorObj.hide();
                accountAmountFlag=true;
            }
            else {
                accmountAmountErrorObj.show();
                accountAmountFlag=false;
            }
            updateOfflineBtnState();
        });
        function checkFinancialPassword(){
            var ajaxFlag = true;
            callAjax({financialPassword:inputHide.val()},0,function(response){
                if(response != 1) {
                    swal("财务密码输入有误！", '', "warning");
                    verifyShowObj.click();
                    ajaxFlag = false;
                }
            },"http://www.insgeek.com/financial/checkFinancialPassword/");
            return ajaxFlag;
        }

        function submitPayOnlineFun(){
            var payType=getPayType();
            if(!preCheckBeforeSubmit(payType))
            {
                return;
            }
            //检查验证码
            if(balanceCheckFlag && inputBalanceObj.val() > 0 && !checkVerify()) return;
            //检查财务密码
            if(balanceCheckFlag && inputBalanceObj.val() > 0 && !checkFinancialPassword()) return;

            if (payType!=14 || payType!=15)
            {
                var text=((inputBalanceAmount==0 || !balanceCheckFlag)? '':'使用余额：￥'+fmoney(parseFloat(inputBalanceAmount),2))+(actualPayAmount==0? '':'  线上支付：￥'+fmoney(actualPayAmount,2));
                var text=text+ (actualPayAmount==0?'':'\n您将通过'+(onlinePayType==0?'支付宝':'微信')+'扫码进行线上缴费');
                swal(setPayConfirmInfo('请确认您的支付信息：',text,'warning'),
                        function(isConfirm)
                        {
                            if(isConfirm)
                            {
                                //提交缴费请求，如果是在线缴费，需要返回bc数据
                                actualPayAmount=isNaN(actualPayAmount)? 0:actualPayAmount;
                                var options={};
                                options.channel=onlinePayType;//在线支付方式
                                var result=submitPayRequest(payType,inputBalanceAmount*100,actualPayAmount*100,options);
                                var reload=false;
                                var isOnline=true;
                                var successText='支付申请成功！请继续扫码进行支付！';
                                var msgTitle='支付申请成功！';
                                if(payType==11)
                                {
                                    successText='支付成功！使用余额支付账单成功！';
                                    reload=true;
                                    isOnline=false;
                                    msgTitle='支付成功';
                                }
                                showPayResultInfo(result,msgTitle,successText,'success',reload,isOnline);
//                                if ((payType==12 || payType==13) && (result instanceof Object))
//                                {
//                                    title=result.title;
//                                    amount=result.amount;
//                                    out_trade_no=result.out_trade_no;
//                                    sign=result.sign;
//                                    return_url=result.return_url;
//                                    debug=result.debug;
//                                    asyncPay();
//                                }
                            }
                            else
                            {
//                                swal("提醒！", '您取消了支付申请！', "warning");
                            }
                        });

            }
            else
            {
                swal("错误！", '支付方式错误，请重新选择支付方式', "error");
            }
        }
        $('#submitPayOnline').on('click',submitPayOnlineFun);
        var account_type=-1;
        function submitPayOfflineFun(){
            var payType=getPayType();
            if(!preCheckBeforeSubmit(payType))
            {
                return;
            }

            //检查验证码
            if(balanceCheckFlag && inputBalanceObj.val() > 0 && !checkVerify()) return;
            //检查财务密码
            if(balanceCheckFlag && inputBalanceObj.val() > 0 && !checkFinancialPassword()) return;
            if (payType!=12 || payType!=13)
            {
                if (payType!=11 && !check_offLine_info())
                {
                    swal("错误！", '汇款信息填写有误，请填写银行卡号或者支付宝账号', "error");
                }
                else
                {
                    var accountAmount=parseFloat(accountAmountObj.val()==''?0:accountAmountObj.val());
                    var text=((inputBalanceAmount==0||!balanceCheckFlag)? '':'使用余额：￥'+fmoney(parseFloat(inputBalanceAmount),2))+(accountAmount==0? '':'  通过汇款支付：￥'+fmoney(accountAmount,2));
                    swal(setPayConfirmInfo('请确认您的支付信息：',text,'warning'),
                            function (isConfirm)
                            {
                                if(isConfirm)
                                {
                                    //提交缴费请求
                                    var options={};
                                    options.account_number=$.trim(account_numberObj.val());
                                    options.account_type=account_type;
                                    options.account_name=$.trim(account_nameObj.val());
                                    options.transaction_number=$.trim(transaction_numberObj.val());
                                    inputBalanceAmount=isNaN(inputBalanceAmount)? 0:inputBalanceAmount;
                                    accountAmount=isNaN(accountAmount)? 0:accountAmount;
                                    var result=submitPayRequest(payType,inputBalanceAmount*100,accountAmount*100,options);
                                    var successText=payType==11? '支付成功！使用余额支付成功！':'支付成功！请耐心等待我们客服人员的确认！';
                                    showPayResultInfo(result,'支付成功！',successText,'success',true,false);
                                }
                                else
                                {
//                                    swal("提醒！", '您取消了支付申请！', "warning");
                                }
                            }
                    );
                }
            }
            else
            {
                swal("错误！", '支付方式错误，请重新选择支付方式', "error");
            }
        }
//        submitPayOffline.on('click', function ()
//        {
//
//        });

        function updateOfflineBtnState()
        {
            var index = paymentSelect.index(prevPaymentSelect);
            if(balanceCheckFlag && inputBalanceAmount == totalPayAmount && verifyFlag && financialPasswordFlag){
                submitBtn.attr('disabled',false);
            }else if((balanceCheckFlag?verifyFlag && financialPasswordFlag:true) && (index == 0?true:accountAmountFlag && accountNameFlag && accountNumberFlag )){
                submitBtn.attr('disabled',false);
            }else{
                submitBtn.attr('disabled',true);
            }
        }

        $('#submitRefund').on('click',function() {
            if (totalPayAmount < 0) {
                var fm = fmoney(-totalPayAmount);
                swal({
                    title: '',
                    text: '退费完成后，￥' + fm + '将自动退回到您的帐户余额。是否确认退费？',
                    type: 'warning',
                    showCancelButton: true,
                    confirmButtonText: '确认',
                    cancelButtonText: '取消',
                    confirmButtonColor: '#DD6B55',
                    closeOnConfirm: false
                }, function(){
                    submitRefundRequest(fm);
                });
            }
        });

        function submitRefundRequest(amount) {
            var result = submitPayRequest(156, 0, 0, null);
            if (result == 1) {
                swal({
                    title: '成功！',
                    text: '账单退费成功！账单费用￥'+amount+'已经成功退到您的帐户余额，请查收！',
                    type: 'success',
                    confirmButtonText: '确认',
                    cancelButtonText: '取消',
                    confirmButtonColor: '#DD6B55',
                    closeOnConfirm: true
                },function(){
                    location.reload();
                });

            }
            else {
                swal('错误！', '账单退费失败，请重新申请账单退费', 'error');
            }
        }

        function setPayConfirmInfo(title,text,type)
        {
            return {
                title: title,
                text: text,
                type: type,
                showCancelButton: true,
                confirmButtonColor: '#DD6B55',
                confirmButtonText: '确认',
                cancelButtonText: '取消',
                closeOnConfirm: false,
                closeOnCancel: true
            };
        }
        function showPayResultInfo(result,title,text,type,reload,isOnline)
        {
            if(1==result||(result.out_trade_no!=null&&result.out_trade_no!=''))
            {
                if(isOnline){
                    if(result['respcd']=='0000'){
                        location.href="http://www.insgeek.com/Financial/scanQRCode/?query="+result['query'];
//                                    window.open("http://www.insgeek.com/Financial/scanQRCode?query="+result['query']);
                    }else{
                        swal("错误！", '支付请求失败！'+result['resperr']+'稍后请重新支付。', "error");
                    }
                }else{
                    swal({
                        title: title,
                        text: text,
                        type: type,
                        confirmButtonColor: '#DD6B55',
                        confirmButtonText: '确认',
                        closeOnConfirm: true
                    },function(){
                        if(reload){
                            location.reload();
                        }
                    });
                }
            }
            else if(-1==result)
            {
                swal("错误！", '目前没有要支付的账单！', "error");
            }
            else
            {
                swal({
                            title:'错误！',
                            text: '支付请求失败！',
                            type: 'error',
                            confirmButtonColor: '#DD6B55',
                            confirmButtonText: '确认',
                            closeOnConfirm: true
                        },
                        function ()
                        {
                            if(reload)
                            {
                                location.reload();
                            }
                        });
            }
        }
        var account_numberObj=$('#account_number');
        var account_nameObj=$('#account_name');
        var transaction_numberObj=$('#transaction_number');
        var account_typeObj=$('#account_type');
        account_numberObj.on('change', function ()
        {
            var account_number=$.trim($(this).val());
            if (check_mobile_format(account_number, false)==1 || check_email_format(account_number)==1)
            {
                account_type=1;//支付宝
                account_typeObj.html('支付宝');
            }
            else if(check_account_number_format(account_number))
            {
                account_type=0;//银行卡
                account_typeObj.html('银行卡');
            }
            else
            {
                account_type=-1;//非法类型
                account_typeObj.html("<span class='text-danger'><i class='fa fa-times-circle-o'></i> 账号有误</span>");
            }
        });

        account_nameObj.blur(function(){
            if($(this).val() != '')
            {
                accountNameFlag = true;
            }else
            {
                accountNameFlag = false;
            }

            updateOfflineBtnState();
        });

        account_numberObj.blur(function(){
            var val = $(this).val();
            if(check_account_number_format(val) || check_mobile_format(val, false)==1 || check_email_format(val)==1)
            {
                accountNumberFlag = true;
            }else
            {
                accountNumberFlag = false;
            }

            updateOfflineBtnState();
        });

        /*检查线下支付的汇款帐号/汇款方式/汇款流水号*/
        function check_offLine_info()
        {
            var flag=false;
            var account_number=$.trim(account_numberObj.val());
            var account_name=$.trim(account_nameObj.val());
            if (account_type!=-1  && account_name.length !=0 && (check_account_number_format(account_number) || check_mobile_format(account_number, false)==1 || check_email_format(account_number)==1))
            {
                flag=true;
            }
            return flag;
        }

        function getBankNameByAccountNumber(num)
        {
            var bankName='';
            callAjax(
                    { 'account_number': num}, 0,
                    function (response)
                    {
                        bankName=response;
                    }, 'http://www.insgeek.com/Service/getBankInfoByAccountID/'
            );
            return bankName;
        }
        function submitPayRequest(payType,balanceAmount,otherAmount,options)
        {
            var result=0;
            balanceAmount=(payType==12||payType==14)? 0 :balanceAmount;
            callAjax(
                    {'payType': payType,'balanceAmount': balanceAmount.toFixed(0),'otherAmount': otherAmount.toFixed(0),'options': JSON.stringify(options)}, 0,
                    function (response)
                    {
                        result=response;
                    }, 'http://www.insgeek.com/Financial/submitPayRequest/'
            );
            return result;
        }

        /*hidden*/
        var groupClick=$(".charge-group-click"),
                rotate=$(".rotate-font"),
                payHidden=$(".payment-hidden"),
                flag=true;
        function groClick(){
            if(!flag&&!balanceCheckFlag){
                payHidden.css({
                    height:0,
                    overflow:"hidden"
                });
                rotate.attr("class","fa fa-plus-circle rotate-font");
                flag=true;
            }else if(flag&&!balanceCheckFlag){

                payHidden.css({
                    height:155,
                    overflow:"visible"
                });
                rotate.attr("class","fa fa-minus-circle rotate-font");
                flag=false;
            }else if(balanceCheckFlag){

            }
        }
        groupClick.on("click",groClick);
        var toTransfer = getUrlParam('param');
        if(toTransfer == 'transfer'){
            paymentSelect[1].click();
        }
    });
    </script>
{/block}