{extends file="template/front.tpl"}

{block name="title"}充值{/block}

{block name="css"}
    <link rel="stylesheet" type="text/css" href="{#static_path#}/css/plugins/jquery-ui.css">
{/block}

{block name="container"}
    <div class="wrapper wrapper-content">
        <div class="container">
            <div class="row">

                {include file="template/sidebar.tpl"}

                <div id="page" data-page="withdraw"></div>

                <div class="col-xs-10">
                    <div class="finance-recharge ibox float-e-margins">
                        <div class="ibox-title">
                            <span>提现</span>
                        </div>
                        <div class="ibox-content">
                            <ul id="ins_tabs" class="nav-tabs">
                                <li class="active">
                                    <a data-toggle="tab" href="#tab-1" aria-expanded="true">现金提取</a>
                                </li>
                                <li>
                                    <a data-toggle="tab" href="#tab-2" aria-expanded="false" class="count-info">提现记录</a>
                                </li>
                            </ul>
                            <div class="tab-content global-tab-content">
                                <div class="tab-pane active" id="tab-1">
                                    <div class="alert alert-warning " style="margin-top: 15px"> <i class="fa fa-exclamation"></i>
                                        您所能提现的金额只能小于或等于可提现金额
                                    </div>
                                    <!--group为组，组中分为charge-head为头部，body为内容-->
                                    <div class="charge-group clear">
                                        <div class="charge-head">账户余额：</div>
                                        <div class="charge-body">
                                        <span class="pull-left"> <em class="text-danger">0.00</em> <em class="text-danger"></em>
                                            <em>元</em>
                                        </span>
                                            <span class="pull-left zyOnmouseDep text-info" style="font-size: 14px;margin:3px 0 0 10px">冻结金额：0.00 元 <i class="fa fa-question-circle text-info"></i></span>
                                        <span class="zyShowDep publicBubble">
                                            此金额正在提现中，请稍后查询
                                            <i class="triangle-zyShowDep triangle-zyShow-public"></i>
                                        </span>
                                        </div>
                                    </div>
                                    <div class="hr-line-dashed"></div>
                                    <div class="charge-group clear">
                                        <div class="charge-head">可提余额：</div>
                                        <div class="charge-body" style="width: 710px;">
                                        <span class="zyOnmouseDep">
                                            <em class="text-danger">0.00</em>
                                            <em>元</em> <i class="fa fa-question-circle text-info"></i>
                                        </span>
                                        <span class="zyShowDep publicBubble">
                                            余额中的红包收入、积分兑换收入、未缴清保障的理赔金将影响可提现的额度
                                            <i class="triangle-zyShowDep triangle-zyShow-public"></i>
                                        </span>
                                        </div>
                                    </div>
                                    <form action="/Financial/extractPost.html" id="myform" method="post">
                                        <div class="hr-line-dashed"></div>
                                        <div class="deposit-table deposit-password charge-group myclear">
                                            <div class="charge-head">提现金额：</div>
                                            <div class="charge-body form-group">
                                                <input type="hidden" name="serviceToken" value="ed04d166a1ffbd1d01fad252370f9db3">
                                                <input type="text" id="money" name="money" maxlength="8" class="form-control" placeholder="请输入本次的提现金额" style="width:467px" />
                                            </div>
                                        </div>
                                        <div class="hr-line-dashed"></div>
                                        <div class="deposit-table deposit-password charge-group myclear">
                                            <div class="charge-head">收款账户名：</div>
                                            <div class="charge-body form-group">
                                                <input type="text" id="name" name="name" maxlength="32" class="form-control" form="myform" style="width:467px" />
                                            </div>
                                        </div>
                                        <div class="hr-line-dashed"></div>
                                        <div class="deposit-table deposit-password charge-group myclear credited-account">
                                            <div class="charge-head">收款账户：</div>
                                            <div class="charge-body form-group pattern-payment">
                                                <select id="select1" name="bank_type" class="form-control pull-left" form="myform">
                                                    <option value="0">银联借记卡</option>
                                                    <option value="1">支付宝</option>
                                                </select>
                                                <input type="text" id="bank_number" name="bank_number" class="form-control pull-left bank-detail" placeholder="请输入收款账户"></div>
                                        </div>
                                        <div class="hr-line-dashed line-dashed-hidden"></div>
                                        <div class="deposit-table deposit-password charge-group myclear open-bank-hidden">
                                            <div class="charge-head">开户行：</div>
                                            <div class="charge-body form-group pattern-payment">
                                                <input type="text" id="bank_name" maxlength="25" name="bank_name" class="form-control pull-left bank-name" autocomplete="off" />
                                                <input type="text" id="mesh_point" maxlength="128" name="mesh_point" class="form-control pull-left bank-detail" placeholder="请输入开户网点名称" autocomplete="off" /></div>
                                        </div>
                                        <div class="hr-line-dashed"></div>
                                        <div class="deposit-table deposit-password charge-group myclear">
                                            <div class="charge-head">财务密码：</div>
                                            <div class="charge-body form-group ">
                                                <div class="alieditContainer pull-left" id="payPassword_container">
                                                    <input type="password" id="payPassword_rsainput" name="payPassword_rsainput" class="ui-input i-text sixDigitPasswordInput" autocomplete="off" value="" maxlength="6" style="outline: none; margin-left: -999px;"></div>
                                            <span class="pull-left" style="border: 0;">
                                                <a href="http://www.insgeek.com/financial/findFinancialPassword.html" target="_blank" tabindex="-1">忘记密码?</a>
                                            </span>
                                            </div>

                                        </div>
                                        <div class="hr-line-dashed verify_code" style="display: none;"></div>
                                        <div class="deposit-table deposit-password charge-group myclear verify_code" style="display: none;">
                                            <div class="charge-head">验证码：</div>
                                            <div class="charge-body form-group financial-box-width">
                                                <input type="text" id="code" maxlength='4' class="form-control pull-left financial-password-input" form="myform"/>
                                            <span class="pull-left login-box" style="margin-left: 20px">
                                                <img class="verity-pec" id="verity-pec" onclick="this.src='http://www.insgeek.com/verify/verify_show/'+Math.random()"/>
                                            </span>
                                            </div>
                                        </div>
                                        <div class="hr-line-dashed"></div>
                                        <div class="charge-group myclear">
                                            <button id="company_submit" class="btn btn-primary btn-sm btn-de">申请提现</button>
                                        </div>
                                    </form>
                                </div>
                                <div class="tab-pane" id="tab-2">
                                    <div class="ibox-title" style="padding: 10px 0 0 0;border: 0;font-size: 14px;">
                                        <div class="form-group pull-left" id="data_5" style="padding: 0;">
                                            <select class="form-control select-show-time select-time pull-left" id="withdrawTradeSelect" style="width: 200px;height: 30px;">
                                                <option value="0">近一周</option>
                                                <option value="1">近一个月</option>
                                                <option value="2">近三个月</option>
                                                <option value="3">全部</option>
                                                <option value="4">自定义</option>
                                            </select>
                                            <div class="user-defined-show pull-left" style="margin-left: 20px">
                                                <div class="input-daterange input-group pull-left" id="datepicker">
                                                    <input type="text" class="input-sm form-control" name="start" readonly id="startTime" value="2017-02-20" />
                                                    <span class="input-group-addon" style="background-color: white">至</span>
                                                    <input type="text" class="input-sm form-control" name="end" readonly id="endTime" value="2017-02-20" />
                                                </div>
                                                <button class="btn btn-primary pull-left" style="margin: 0;margin-left: 20px;padding: 4px 12px;" id="withdrawTradeDataBtn">查询</button>
                                            </div>
                                        </div>
                                        <!-- <div class="download pull-right" style="line-height: 35px;">
                                            <a href="#">下载提现记录</a>
                                        </div> -->
                                    </div>
                                    <div class="ibox-content no-border" style="padding: 0">
                                        <table class="table pay-table table-hover" id="withdrawTradeLog" style="margin-top: 0">
                                            <thead>
                                            <tr>
                                                <th style="width: 170px">申请时间</th>
                                                <th style="width: 120px">银行流水单号</th>
                                                <th class="pay-table-font-r" style="width: 150px">提现金额（元）</th>
                                                <th style="width: 160px">收款账号</th>
                                                <th style="width: 170px">保险极客交易单号</th>
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
                </div>
            </div>
        </div>
    </div>
{/block}

{block name="js"}
    <script src="{#static_path#}/js/plugins/jquery-ui.js"></script>
    <script src="{#static_path#}/js/plugins/jquery.pwd.min.js"></script>
    <script src="{#static_path#}/js/ig.validation-0.0.1.js"></script>
    <script>
    $(function() {
        $(window).on('keydown',function(e){
            var event=e||window.event;
            var keyCode=event.keyCode;
            if(keyCode==32){
                event.preventDefault();
                return;
            }
        })
        var withdrawTradeRecords = [];
        var dt = $('.table-hover').dataTable({
            data:withdrawTradeRecords,
            bLengthChange: false,
            ordering: false,
            searching: false,
            bStateSave: true //状态保存
        });

        var DATE_TYPE = 4;

        var startTimeObj = $('#startTime');
        var endTimeObj = $('#endTime');
        $('#withdrawTradeSelect').change(function(){
            var val = $(this).val();
            if(val != DATE_TYPE){
                requestLogByTime(val);
            }
        });

        $('#withdrawTradeDataBtn').click(function(){
            requestLogByTime(DATE_TYPE);
        });

        function requestLogByTime(option) {
            callAjax({
                option: option,
                start_time: startTimeObj.val(),
                end_time: endTimeObj.val()
            }, 0, function (response) {
                var data = JSON.parse(response);
                if (data.length > 0) {
                    dt.fnClearTable();
                    dt.fnAddData(data);
                } else {
                    dt.fnClearTable();
                }
            }, 'http://www.insgeek.com/financial/getWithdrawTradeLogByTime/');


        }


        /*account remaining show*/
        var zyOnmouse = $('.zyOnmouseDep');
        zyOnmouse.hover(function () {
            $(this).next('.zyShowDep').css('display', 'inline-block');
        }, function () {
            $(this).next('.zyShowDep').css('display', 'none');
        });
        /*when select value is user-defined,the time controller show*/
        var selectShowTime = $('.select-show-time');
        selectShowTime.on('change', function() {
            if ($(this).val() == '4') {
                $(this).next('.user-defined-show').css({
                    display: 'table'
                })
            } else {
                $(this).next('.user-defined-show').css({
                    display: 'none'
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
        /*if Account to be credited not "银联借记卡" ,"open-bank-hidden" hidden*/
        var creditAccount = $('.credited-account'),
                openBankHidden = $('.open-bank-hidden'),
                lineDashHidden = $('.line-dashed-hidden');
        creditAccount.find('select').on('change', function() {
            if ($(this).val() != '0') {
                openBankHidden.css('display', 'none');
                lineDashHidden.css('display', 'none');
            } else {
                openBankHidden.css('display', 'block');
                lineDashHidden.css('display', 'block');
            }
        });
        /*财务密码输入框*/
        $("#payPassword_container").Alipay(function (e) {
            if(e.length == 6){
                hideStatus();
                password_flag =true;
            }else{
                password_flag =false;
            }
            verificationAll();
        });
        var selectObj = $('#select1');
        choiceInput();
        function choiceInput(){
            array = '';
            array_name ='';
            var select = selectObj.val();
            if (select == '0') {
                array = ["6228480402564890018"];
                array_name = [["\u6d4b\u8bd5","\u4e2d\u56fd\u519c\u4e1a\u94f6\u884c","\u5317\u4eac"]];
            } else if (select == '1') {
                array = null;
                array_name = null;
            }
            if(array ==null && array_name==null){
                array = '';
                array_name ='';
            }
            if (array != '' && array != 'undefined') {
                $('#bank_number').autocomplete({ //id为input标签
                    minLength: 0, //第几位触发列表
                    source: array, //arr变量为列表数组，json
                    create: function(event, ui) {
                        $(this).bind('click', function() {
                            $(this).autocomplete('search', '');
                        })
                    }
                })
            }
            if (array_name != '' && array_name != 'undefined') {
                $('#name').autocomplete({ //id为input标签
                    minLength: 0, //第几位触发列表
                    source: array_name, //arr变量为列表数组，json
                    create: function(event, ui) {
                        $(this).bind('click', function() {
                            $(this).autocomplete('search', '');
                        })
                    }
                })
            }
        }
        var money_flag =false; //金额
        var name_flag = false; //用户名
        var bank_number_flag = false; //帐号
        var bank_name_flag = false; //银行名称
        var mesh_point_flag = false; //开户网点
        var password_flag = false; //验证码
        //金额
        var moneyObj = $('#money');
        var bank_numberObj = $('#bank_number');
        function amountOfMoney() {
            var money = moneyObj.val() == ''?'':parseFloat(moneyObj.val());
            moneyObj.val(money);     //转换输入框的显示方式，例如11.00 -> 11 , 11.20->11.2
            var balance = 0; //可提现余额
            if (money == '' || money == 0 || money > balance || balance <= 0) {
                moneyObj.addClass('error');
                showStatus('金额有误请重新输入');
                error('#money');
                money_flag = false;
            }else{
                hideStatus('#money');
                money_flag = true;
            }
        }
        //账户名
        function userName() {
            var name = $('#name').val();
            if (name != '') {
                hideStatus('#name');
                name_flag = true;
            } else {
                $('#name').addClass('error');
                showStatus('姓名不能为空');
                error('#name');
                return false;
            }
        }
        //账户
        function bankNumber() {
            var select = selectObj.val();
            var bank_reg = /^(\d{12,19})$/; //银行卡正则
            var bank_number = $('#bank_number').val();
            if (select == '0') {
                if (!bank_reg.test(bank_number)) {
                    showStatus('银行卡号输入有误');
                    $('#bank_name').val('');
                    error('#bank_number');
                    bank_number_flag = false;
                } else {
                    callAjax({
                        'account_number': bank_number
                    }, 0, function(response) {
                        if (response!='') {
                            $('#bank_name').val(response);
                            hideStatus('#bank_number');
                            hideStatus('#bank_name');
                            bankName();
                            bank_number_flag = true;
                        }else{
                            error('#bank_number');
                            $('#bank_name').val('');
                            bank_name_flag =false;
                            bank_number_flag = false;
                        }
                    }, "http://www.insgeek.com/Service/getBankInfoByAccountID/");
                    hideStatus('#bank_number');
                    bank_number_flag =  true;
                }
            } else if (select == '1') {
                if (check_mobile_format(bank_number) != 1 && check_email_format(bank_number) != 1) {
                    showStatus('支付宝帐号输入有误');
                    error('#bank_number');
                    bank_number_flag = false;
                } else {
                    $('#bank_name').val('支付宝');
                    hideStatus('#bank_number');
                    bank_number_flag =  true;
                }
            }
        }
        //银行名称
        function bankName() {
            if (selectObj.val() == '0') {
                if ($('#bank_name').val() == '') {
                    showStatus('请输入银行名称');
                    error('#bank_name');
                    bank_name_flag = false;
                } else {
                    hideStatus('#bank_name');
                    bank_name_flag =  true;
                }
            } else {
                bank_name_flag = true;
            }
            verificationAll();
        }
        //开户网点
        function meshPoint() {
            if (selectObj.val() == '0') {
                if ($('#mesh_point').val() == '') {
                    showStatus('开户网点不能为空');
                    error('#mesh_point');
                    mesh_point_flag = false;
                } else {
                    hideStatus('#mesh_point');
                    mesh_point_flag =  true;
                }
            } else {
                mesh_point_flag = true;
                verificationAll();
            }
        }
        verificationAll();
        moneyObj.blur(function() {
            amountOfMoney();
            verificationAll();
        })
        $('#name').blur(function() {
            userName();
            verificationAll();
        })
        $('#bank_number').blur(function() {
            bankNumber();
            verificationAll();
        })
        $('#mesh_point').blur(function() {
            meshPoint();
            verificationAll();
        })
        $("#bank_name").blur(function() {
            bankName();
            verificationAll();
        })
        $('#code').blur(function() {
            var code_val = $('#code').val();
            if (code_val == '') {
                showStatus('验证码不能为空');
                error('#code');
            }else if(code_val.length !=4){
                showStatus('验证码格式错误');
                error('#code');
            }else{
                hideStatus('#code');
            }
            verificationAll();
        })
        selectObj.change(function() {
            if(bank_numberObj.val()!=''){
                bankNumber();
            }
            if(selectObj.val() ==0 && bank_numberObj.val() !=''){
                bankName();
                meshPoint();
            }else if(selectObj.val() == 1){
                bankName();
                meshPoint();
            }
            choiceInput();
            verificationAll();
        })
        //验证全部
        function verificationAll(){
            if( money_flag !=false && name_flag !=false && bank_number_flag !=false && mesh_point_flag !=false && bank_name_flag!=false && password_flag!=false){
                $('#company_submit').attr('disabled',false);
            }else{
                $('#company_submit').attr('disabled',true);
            }
        }
        bindInputEventForFloatText([$('#money')]);
        //验证密码
        var $fpObj = $('#payPassword_rsainput');
        var $codeObj = $('#code');
        var $imgObj = $('#verity-pec');
        var $verifyContainerObj = $('.verify_code');
        var isCheckVerifyCode = false;
        function passwordVerify() {
            var v = $fpObj.val();
            var data = {pass: v};
            var f = false;
            if (isCheckVerifyCode) {
                data.verify_code = $.trim($codeObj.val());
            }
            callAjax(data, PRD, function(res) {
                if (res.code == 1) {
                    hideStatus('#payPassword_rsainput');
                    verificationAll();
                    f = true;
                } else if (res.code == -1) { // 财务密码输入有，需要判断是否需要输入验证码
                    if (res.error_count >= 3) {
                        isCheckVerifyCode = true;
                        $imgObj.click();
                        $verifyContainerObj.show();
                    }
                    error('#payPassword_rsainput');
                    showStatus('财务密码输入错误');
                    f = false;
                } else {
                    $imgObj.click();
                    error('#code');
                    showStatus(res.msg);
                    f = false;
                }
            }, 'http://www.insgeek.com/Financial/verifyFinancialPasswordAjax/');

            return f;
        }
        //验证验证码
        function verificationCode() {
            var code = $('#code').val();
            callAjax({
                'verify': code
            }, 0, function(response) {
                decode = response;
            }, "http://www.insgeek.com/Verify/verify_check_ajax/");
            if (decode == 0) {
                error('#code');
                refreshVerifyImage();
                showStatus('验证码有误');
                return false;
            } else {
                hideStatus('#code');
                return true;
            }
        }
        $('#company_submit').click(function (){
            return passwordVerify();
        })
        //更新验证码
        function refreshVerifyImage(){
            $('#verity-pec').attr('src','http://www.insgeek.com/verify/verify_show/+Math.random()'+Math.random());
        }
        //显示错误提示
        function showStatus(contents) {
            $('.alert-warning').text('').show().addClass('alert-danger').append(contents);
        }
        //隐藏错误提示
        function hideStatus(classname) {
            $(classname).removeClass('error');
            $('.alert-warning').removeClass('alert-danger').text('').text('！您所能提现的金额只能小于或等于可提现金额');
        }
        //错误输入框标红
        function error(classname) {
            $(classname).addClass('error');
        }

    })
    </script>
{/block}