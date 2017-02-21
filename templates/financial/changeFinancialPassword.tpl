{extends file="template/front.tpl"}

{block name="title"}充值{/block}

{block name="css"}
    <link rel="stylesheet" type="text/css" href="{#static_path#}/css/plugins/jquery-ui.css">
{/block}

{block name="container"}
    <div class="wrapper wrapper-content">
        <div class="container">
            <div class="row">
                <div class="col-xs-2">
                    <div class="top-border white-bg">
                        <ul class="nav metismenu" id="side-menu">
                            <li id="index-group">
                                <a href="http://www.insgeek.com/group/index">
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
                                        <a href="http://www.insgeek.com/group/insuranceList">
                                            <i class="fa fa-list-alt"></i>保障方案
                                        </a>
                                    </li>
                                    <li id="userlist">
                                        <a href="http://www.insgeek.com/group/userList">
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
                                        <a href="http://www.insgeek.com/DataStatistics/lipei_statistical">
                                            <i class="fa fa-line-chart"></i>报销统计
                                        </a>
                                    </li>
                                    <li id="user_s">
                                        <a href="http://www.insgeek.com/DataStatistics/user_statistical">
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
                                        <a href="http://www.insgeek.com/financial/index"><i class="fa fa-list"></i> 总览</a>
                                    </li>
                                    <li id="charge">
                                        <a href="http://www.insgeek.com/financial/charge"><i class="fa fa-money"></i> 充值</a>
                                    </li>
                                    <li id="payment">
                                        <a href="http://www.insgeek.com/financial/payment"><i class="fa fa-external-link"></i> 缴费</a>
                                    </li>
                                    <li id="withdraw">
                                        <a href="http://www.insgeek.com/financial/withdraw"><i class="fa fa-credit-card"></i> 提现</a>
                                    </li>
                                    <li id="manageInfo">
                                        <a href="http://www.insgeek.com/financial/manageInfo"><i class="fa fa-cogs"></i> 管理设置</a>
                                    </li>
                                    <li id="changeFinancialPassword" style="margin-bottom:0">
                                        <a href="http://www.insgeek.com/financial/changeFinancialPassword"><i class="fa fa-tasks"></i> 财务密码</a>
                                    </li>
                                </ul>
                            </li>
                            <li id="updateGroupUserInfo">
                                <a href="http://www.insgeek.com/group/updateGroupUserInfo">
                                    <i class="fa fa-cog"></i><span class="nav-label">账户维护</span>
                                </a>
                            </li>
                            <li id="admin_log">
                                <a href="http://www.insgeek.com/DataStatistics/admin_log">
                                    <i class="fa fa-pencil-square"></i><span class="nav-label">操作记录</span>
                                </a>
                            </li>
                        </ul>
                    </div>
                </div>
                <div id="page" data-page="changeFinancialPassword"></div>
                <div class="col-xs-10">
                    <div class="finance-recharge ibox float-e-margins box-shadow">
                        <div class="ibox-title">
                            <span>财务密码</span>
                        </div>
                        <div class="ibox-content">
                            <ul id="ins_tabs" class="nav-tabs">
                                <li class="active"><a data-toggle="tab" href="#tab-1" aria-expanded="true">财务密码</a></li>
                                <li><a data-toggle="tab" href="#tab-2" aria-expanded="false" class="count-info">修改记录</a></li>
                            </ul>
                            <div class="tab-content global-tab-content">
                                <div class="tab-pane active" id="tab-1" style="padding-top: 20px">
                                    <form action="http://www.insgeek.com/financial/updateFinancialPassword/" id="financialPasswordFormID" method="post">
                                        <div class="alert alert-danger text-center" id="errorMsg" style="display: none;"><i class="fa fa-minus-square"></i> 两次输入密码不同,请重新输入</div>
                                        <!--group为组，组中分为charge-head为头部，body为内容-->
                                        <div class="password-table deposit-password charge-group clearfix">
                                            <div class="charge-head">原密码：</div>
                                            <div class="charge-body form-group" style="width: 25%">
                                                <input id="old_pwd" maxlength="6" type="password" class="form-control pull-left financial-password-input" name="old_password" autocomplete="off"/>
                                            </div>
                                            <div class="pull-left" style="line-height: 34px">请您输入原财务密码</div>
                                        </div>
                                        <div class="hr-line-dashed"></div>
                                        <div class="password-table deposit-password charge-group clearfix">
                                            <div class="charge-head">新密码：</div>
                                            <div class="charge-body form-group" style="width: 25%">
                                                <input id="new_pwd" maxlength="6" type="password" class="form-control pull-left financial-password-input" name="new_password" autocomplete="off"/>
                                            </div>
                                            <div class="pull-left" style="line-height: 34px">请设置6位数字作为财务密码</div>
                                        </div>
                                        <div class="hr-line-dashed"></div>
                                        <div class="password-table deposit-password charge-group clearfix">
                                            <div class="charge-head">再次输入：</div>
                                            <div class="charge-body form-group">
                                                <input id="second_new_pwd" maxlength="6" type="password" class="form-control pull-left financial-password-input" name="new_repeat" autocomplete="off"/>
                                            </div>
                                        </div>
                                        <div class="hr-line-dashed" style="display:none"></div>
                                        <div class="password-table deposit-password charge-group clearfix" style="display:none">
                                            <div class="charge-head">验证码：</div>
                                            <div class="charge-body form-group">
                                                <input type="text" class="form-control pull-left" style="width: 530px;"  name="verify" />
                                                <span class="pull-right login-box">
                                                    <img class="verity-pec" src="http://www.insgeek.com/verify/verify_show/" onclick="this.src='http://www.insgeek.com/verify/verify_show/'+Math.random()"/>
                                                </span>
                                            </div>
                                        </div>                                    <div class="hr-line-dashed"></div>
                                        <div class="charge-group payment-check clearfix">
                                            <button type="button" class="btn btn-primary btn-sm btn-de pull-left btn_submit">提交</button>
                                            <span class="btn-de pull-right" style="line-height: 40px;text-align: center"><a href="http://www.insgeek.com/financial/findFinancialPassword.html" target="_blank">忘记密码？</a></span>                                    </div>
                                    </form>
                                </div>
                                <div class="tab-pane" id="tab-2">
                                    <div class="ibox-title" style="padding: 5px 0;border: 0;font-size: 14px;">
                                        <div class="form-group pull-left" id="data_5" style="padding: 0;">
                                            <form action="">
                                                <select id="financialPasswordSelect" class="form-control select-show-time select-time pull-left" style="width: 200px;height: 30px;">
                                                    <option value="0">近一周</option>
                                                    <option value="1">近一个月</option>
                                                    <option value="2">近三个月</option>
                                                    <option value="3">全部</option>
                                                    <option value="4">自定义</option>
                                                </select>
                                                <div class="user-defined-show pull-left" style="margin-left: 20px">
                                                    <div class="input-daterange input-group pull-left" id="datepicker">
                                                        <input type="text" class="input-sm form-control" name="start" id="startTime" value="2017-02-20" readonly />
                                                        <span class="input-group-addon" style="background-color: white;">至</span>
                                                        <input type="text" class="input-sm form-control" name="end" id="endTime" value="2017-02-20" readonly />
                                                    </div>
                                                    <button class="btn btn-primary pull-left" type="button" style="margin: 0;margin-left: 20px;padding: 4px 12px;" id="financialPasswordBtn">显示</button>
                                                </div>
                                            </form>
                                        </div>
                                        <!--<div class="download pull-right" style="line-height: 35px;"><a href="#">下载修改记录</a></div>-->
                                    </div>
                                    <div class="ibox-content no-border" style="padding: 0;">
                                        <table class="table my-table-hover table-hover">
                                            <thead>
                                            <tr>
                                                <th data-toggle="true">修改时间</th>
                                                <th>修改类型</th>
                                                <th>修改状态</th>
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
    <script>
    $(function () {
        var init=0;
        if(init==1){
            swal({
                title: '提示',
                text: '您还没有财务密码，请先进行设置。',
                type: 'warning',
                confirmButtonColor: "#DD6B55",
                confirmButtonText: "确认",
                closeOnConfirm: true
            });
        }
        var systemLog = [];
        var dt = $('.table-hover').dataTable({
            data:systemLog,
            bLengthChange: false,
            ordering: false,
            searching: false,
            bStateSave: true //状态保存
        });

        var startTimeObj = $('#startTime');
        var endTimeObj = $('#endTime');
        $('#financialPasswordSelect').change(function(){
            var val = $(this).val();
            if(val != 4){
                requestLogByTime(val);
            }
        });

        $('#financialPasswordBtn').click(function(){
            requestLogByTime(4);
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
            }, 'http://www.insgeek.com/financial/getFinancialPasswordLog/');


        }

        /*when select value is user-defined,the time controller show*/
        var selectShowTime=$(".select-show-time");
        var errorMsgObj = $("#errorMsg");
        var passwordIsEmpty = '0';
        var uid = '61249';
        var tab_1Obj = $("#tab-1");

        selectShowTime.on("change", function () {
            if($(this).val()=="4"){
                $(this).next(".user-defined-show").css({
                    display:"table"
                });
            }else {
                $(this).next(".user-defined-show").css({
                    display:"none"
                });
            }
        });
        /*time select initialize*/
        $('#data_5 .input-daterange').datepicker({
            format: 'yyyy-mm-dd',
            keyboardNavigation: false,
            forceParse: false,
            autoclose: true,
            endDate: '+0d'
        });
        $("#tab-1 .btn_submit").click(function(){
            if(check_all_input()){
                submitForm();
            }
        });

        function submitForm(){
            callAjax($("#financialPasswordFormID").serialize(),0,function(response){
                if(response.code == 1){
                    showConfirmWindow('',response.msg,'success',function(isConfrim){
                        location.href = "http://www.insgeek.com/financial/changeFinancialPassword/";
                    });
                }else {
                    showConfirmWindow('',response.msg,'error',function(isConfrim){

                    });
                }

            },"http://www.insgeek.com/financial/updateFinancialPassword/");
        }

        var passwordObj = $("#tab-1 input[name='password']");
        var repeatObj = $("#tab-1 input[name='repeat']");
        var old_passwordObj = $("#tab-1 input[name='old_password']");
        var new_passwordObj = $("#tab-1 input[name='new_password']");
        var new_repeatObj = $("#tab-1 input[name='new_repeat']");
        var verifyObj = $("#tab-1 input[name='verify']");
        var verifyImg = $(".verity-pec");
        var verifyObjParent = verifyObj.parent().parent();
        function check_all_input(){
            var password = passwordObj.val();
            var repeat = repeatObj.val();
            var old_password = old_passwordObj.val();
            var new_password = new_passwordObj.val();
            var new_repeat = new_repeatObj.val();
            var verify = $.trim(verifyObj.val());
            var flag = true;
            if(passwordIsEmpty == '1'){
                //设置密码
                if(password == ''){
                    flag = showError("密码不能为空");
                }else if(!/^[\d]{6}$/.test(password)){
                    flag = showError("请输入六位纯数字");
                }else if(repeat != password){
                    flag = showError("两次输入的密码不一致");
                } else {
                    errorMsgObj.html("").hide();
                }
            }else if(passwordIsEmpty == '0'){
                //更新密码
                if(!verifyObjParent.is(':hidden')){
                    if(!checkVerify(verify)){
                        showError("验证码输入有误");
                        return false;
                    }
                }
                if(old_password == ''){
                    flag = showError("旧密码不能为空");
                }else if(!check_old_password(old_password,uid)){
                    flag = showError("原密码错误");
                }else if(new_password == ''){
                    flag = showError("新密码不能为空");
                }else if(!/^[\d]{6}$/.test(new_password)){
                    flag = showError("新密码格式错误，请输入六位纯数字");
                }else if(old_password == new_password){
                    flag = showError("输入的新密码不能与原密码相同");
                }else if(new_repeat != new_password){
                    flag = showError("两次输入的密码不一致");
                } else {
                    errorMsgObj.html("").hide();
                }
            } else{
                flag = false;
            }

            return flag;
        }

        function checkVerify(verify){
            var flag = true;
            callAjax({verify:verify},0,function(response){
                if(response != 1){
                    flag = false;
                }
            },'http://www.insgeek.com/verify/verify_check_ajax/');
            return flag;
        }

        function check_old_password(old_password,uid){
            var flag = true;
            //1     正确
            //-1    错误（但错误次数未超过三次）
            //-2    错误（错误次数超过三次）
            callAjax({financial_password:old_password,uid:uid},0,function(response){
                if(response == -1){
                    flag = false;
                }else if(response == -2){
                    //显示验证码
                    verifyObjParent.prev().show();
                    verifyObjParent.show();
                    flag = false;
                }
            },'http://www.insgeek.com/check/check_financial_password_ajax/');
            return flag;
        }
        function showConfirmWindow(title, msg, type, callback) {
            swal({
                title: title,
                text: msg,
                type: type,
                confirmButtonColor: "#DD6B55",
                confirmButtonText: "确认",
                closeOnConfirm: true
            }, callback);
        }

        function showError(msg){
            errorMsgObj.html("<i class='fa fa-minus-square'></i>"+msg).show();
            verifyImg.click();
            return false;
        }
        /*02.03密码输入框js*/
        var old_inputHide=$("#old_pwd"),
                new_inputHide=$("#new_pwd"),
                second_new_inputHide=$("#second_new_pwd"),
                password=$("#password"),
                repeat=$("#repeat");
        function passwordInput(input){
            var getIput = function(){
                return $("<input></input>").attr({
                    maxlength:1,
                    type:"password"
                }).addClass("pwdInput");
            };
            var first, last, pwdInput;
            function initPwdInput(target){
                var length = target.attr("maxlength")>8? 8:$(target).attr("maxlength"),
                        width=target.outerWidth(true),
                        height=target.outerHeight(true);
                pwdInput=[];
                first = 0;
                last = length-1;
                var size = width / length,
                        container=target.parent();
                target.hide();
                for(var idx = 0;idx < length;idx++){
                    var input = getIput();
                    $(input).css("width",size).css("height",height).attr("data-index",idx).addClass("pwdInput");
                    $(container).append($(input));
                    pwdInput[idx] = $(input);
                }
                $(container).append(target);
                $(pwdInput[first]).addClass("first");
                $(pwdInput[last]).addClass("last");
            }
            initPwdInput(input);
            var active= 0,
                    lastTime=0;
            function bindKeyup(obj){
                $(obj).on("keyup", function (event) {
                    var e=event||window.event;
                    var unicode= e.keyCode;
                    if(unicode!=8){
                        if(lastTime == e.timeStamp||$(obj).val() ==""){
                            return;
                        } else {
                            lastTime = e.timeStamp;
                        }
                        if(active == last && $(obj).val() != "" ) {
                            $(obj).blur();
                            active++;
                            callback();
                            return;
                        }
                        $(obj).blur();
                        active++;
                        callback();
                    }else {
                        if(lastTime == e.timeStamp){
                            return;
                        } else {
                            lastTime = e.timeStamp;
                        }
                        if($(obj).val() != "") {
                            $(obj).val("");
                            $(obj).blur();
                            active--;
                            callback();
                        } else {
                            $(obj).blur();
                            active--;
                            callback();
                        }
                    }
                })
            }
            function callback(){

                if(active>last){
                    active = last;
                }
                if(active < 0){
                    active = 0;
                }
                var salt = "";
                for(var idx = 0;idx < pwdInput.length;idx++) {
                    salt += $(pwdInput[idx]).val();
                }
                input.val(salt);
                $(pwdInput[active]).click();
            }
            $(pwdInput).each(function () {
                $(this).click(function () {
                    $(pwdInput[active]).focus();
                });
                $(this).focus(function () {
                    bindKeyup(this);
                });
                $(this).blur(function () {
                    $(this).off("keyup");
                });
            });
        }
        passwordInput(old_inputHide);
        passwordInput(new_inputHide);
        passwordInput(second_new_inputHide);
        passwordInput(password);
        passwordInput(repeat);
    });
    </script>
{/block}