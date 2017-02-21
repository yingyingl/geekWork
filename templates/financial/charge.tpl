{extends file="template/front.tpl"}

{block name="title"}充值{/block}

{block name="container"}
    <div class="wrapper wrapper-content">
        <div class="container">
            <div class="row">

                {include file="template/sidebar.tpl"}

                <div id="page" data-page="charge"></div>

                <div class="col-xs-10">
                    <div class="finance-recharge ibox float-e-margins">
                        <div class="ibox-title">
                            <span>充值</span>
                        </div>
                        <div class="ibox-content">
                            <ul id="ins_tabs" class="nav-tabs">
                                <li class="active"><a data-toggle="tab" href="#tab-1" aria-expanded="true">账户充值</a></li>
                                <li><a data-toggle="tab" href="#tab-2" aria-expanded="false" class="count-info">充值记录</a></li>
                            </ul>
                            <div class="tab-content">
                                <div class="tab-pane active" id="tab-1" >
                                    <div class="alert alert-warning" style="margin-top: 15px">
                                        <h3>温馨提示：</h3>
                                        <p>1、充值成功后，余额的更新可能存在延迟现象，一般 5 分钟内到账，如有问题，请咨询客服：400-886-2309 。</p>
                                        <p>2、自定义充值金额输入值必须是不小于 100 且不大于 50,000 的正整数。 </p>
                                        <p>3、充值完成后，您可以进入充值记录页面查看余额充值状态。</p>
                                    </div>
                                    <div class="alert alert-danger" id="alertMsg" style="display: none"><i class="fa fa-minus-square"></i>输入的金额必须是100的倍数</div>
                                    <!--group为组，组中分为charge-head为头部，body为内容-->
                                    <div class="charge-group clear">
                                        <div class="charge-head">账户余额：</div>
                                        <div class="charge-body">
                                                    <span class="pull-left">
                                                        <em class="text-danger">0.00</em><em>元</em>
                                                    </span>
                                        </div>
                                    </div>
                                    <div class="hr-line-dashed"></div>
                                    <div class="favorable charge-group clearfix" style="height: auto;margin: 0;">
                                        <div class="charge-head">充值金额：</div>
                                        <div class="charge-body" style="width: 710px;">
                                            <ul class="list-inline clear" style="margin: 0;">
                                                <li class="myselect" value="100">
                                                    <em>100元</em>
                                                </li><li class="myselect" value="200">
                                                    <em>200元</em>
                                                </li><li class="myselect" value="300">
                                                    <em>300元</em>
                                                </li><li class="myselect" value="500">
                                                    <em>500元</em>
                                                </li><li class="myselect" value="1000">
                                                    <em>1,000元</em>
                                                </li><li class="myselect" value="2000">
                                                    <em>2,000元</em>
                                                </li>                            </ul>
                                        </div>
                                    </div>
                                    <div class="charge-group favorable clearfix">
                                        <div class="charge-head">自定义金额：</div>
                                        <div class="charge-body custom">
                                            <div class="pull-left">
                                                <input name="customAmout" id="customAmout" maxlength="6" type="text" class="form-control" placeholder="100的整数倍"/>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="hr-line-dashed"></div>
                                    <div class="charge-group favorable clearfix">
                                        <div class="charge-head">支付方式：</div>
                                        <div class="charge-body">
                                            <ul class="list-inline clear" style="margin: 0;" id="onlinePayTypeSel">
                                                <li class="alipay finance-active olType" value="0">
                                                    <img src="http://www.insgeek.com/public/insgeek2.0/img/finance/Alipay.png" alt="支付宝logo">
                                                </li>
                                                <li class="wxpay olType" value="1">
                                                    <img src="http://www.insgeek.com/public/insgeek2.0/img/finance/Wxpay.png" alt="微信logo">
                                                </li>
                                            </ul>
                                        </div>
                                    </div>
                                    <div class="hr-line-dashed"></div>
                                    <div class="charge-group clearfix">
                                        <div class="charge-head">实付金额：</div>
                                        <div class="charge-body" style="color: red;" id="actualAmout"></div>
                                    </div>
                                    <div class="hr-line-dashed"></div>
                                    <div class="charge-group clearfix">
                                        <button class="btn btn-primary btn-sm btn-de" id="submitChargeBtn" disabled>立即充值</button>
                                    </div>
                                </div>
                                <div class="tab-pane" id="tab-2">
                                    <div class="ibox-title" style="padding: 5px 0;border: 0;font-size: 14px;">
                                        <div class="form-group pull-left" id="data_5" style="padding: 0;">
                                            <select id="chargeTradeLogSelect" class="form-control select-show-time select-time pull-left" style="width: 200px;height: 30px;">
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
                                                <button id="showChargeTradeBtn" type="button" class="btn btn-primary pull-left" style="margin: 0;margin-left: 20px;padding: 4px 12px;">查询</button>
                                            </div>
                                        </div>
                                        <!--<div class="download pull-right" style="line-height: 35px;"><a href="#">下载充值记录</a></div>-->
                                    </div>
                                    <table id="chargeTradeLog" class="table pay-table table-hover" style="margin-top: 0">
                                        <thead>
                                        <tr>
                                            <th data-toggle="true" style="width: 200px">发生时间</th>
                                            <th class="pay-table-font-r" style="width: 200px">充值金额（元）</th>
                                            <!--<th>实付金额（元）</th>-->
                                            <th style="width: 200px">充值方式</th>
                                            <th style="width: 250px">充值流水号</th>
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
{/block}

{block name="js"}
    <script id='spay-script' type='text/javascript' src='https://jspay.beecloud.cn/1/pay/jsbutton/returnscripts?appId=5f57603a-e2c5-45fd-bb67-f299ef9d1e83'></script>
    <script type="text/javascript">
    $(function () {
        var tp_debug='';
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

        $('#chargeTradeLogSelect').change(function(){
            var val = $(this).val();
            if(val != 4){
                requestLogByTime($(this).val());
            }
        });

        $('#showChargeTradeBtn').click(function(){
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
                }else {
                    dt.fnClearTable();
                }
            },'http://www.insgeek.com/financial/getChargeTradeLogAjax/');
        }







        //财务中心点击相应的li被选择上
        var mySelect=$(".myselect");
        var selectAmount=0;
        var alertMsgObj=$('#alertMsg');
        var customAmoutObj = $("#customAmout");
        var actualAmoutObj = $("#actualAmout");
        var submitChargeBtn = $('#submitChargeBtn');
        var onlinePaySelObj=$("#onlinePayTypeSel .olType");
        var onlinePayType=0;
        onlinePaySelObj.click(function(){
            onlinePaySelObj.removeClass("finance-active");
            $(this).addClass("finance-active");
            onlinePayType=$(this).attr('value');
        });
        mySelect.click(function () {
            mySelect.removeClass("finance-active");
            $(this).addClass("finance-active");
            selectAmount=parseInt($(this).val());
            customAmoutObj.val('');
            actualAmoutObj.html(fmoney(selectAmount) + ' <i style="color: black">元</i>');
            submitChargeBtn.attr('disabled',false);
            customAmoutObj.removeClass('finance-active');
        });
        /*when select value is user-defined,the time controller show*/
        var selectShowTime=$(".select-show-time");
        selectShowTime.on("change", function () {
            if($(this).val()==4){
                $(this).next(".user-defined-show").css({
                    display:"table"
                })
            }else {
                $(this).next(".user-defined-show").css({
                    display:"none"
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

        /*************************支付功能*************************/
            //BC.click需要的数据
//        var title;
//        var amount;
//        var out_trade_no;
//        var sign;
//        var return_url;
//        var debug;
            // 这里不直接调用BC.click的原因是防止用户点击过快，BC的JS还没加载完成就点击了支付按钮。
            // 实际使用过程中，如果用户不可能在页面加载过程中立刻点击支付按钮，就没有必要利用asyncPay的方式，而是可以直接调用BC.click。
//        function asyncPay()
//        {
//            if (typeof BC=="undefined")
//            {
//                // 大部分浏览器
//                if (document.addEventListener)
//                {
//                    document.addEventListener('beecloud:onready', bcPay, false);
//                    // 兼容IE 11之前的版本
//                } else if (document.attachEvent)
//                {
//                    document.attachEvent('beecloud:onready', bcPay);
//                }
//            }
//            else
//            {
//                bcPay();
//            }
//        }
//        function bcPay()
//        {
//            BC.click({
//                "title": title,
//                "amount": amount,
//                "out_trade_no": out_trade_no, //唯一订单号
//                "sign": sign,
//                "return_url": return_url,
//                "debug": debug,
//                /**
//                 * optional 为自定义参数对象，目前只支持基本类型的key ＝》 value, 不支持嵌套对象；
//                 * 回调时如果有optional则会传递给webhook地址，webhook的使用请查阅文档
//                 */
//                "optional": {"test": "willreturn"}
//            });
//        }
        submitChargeBtn.on('click',function()
        {
            submitCharge();
        });

        var actualAmoutObj = $("#actualAmout");
        customAmoutObj.bind('input',function(){

            $(this).val($(this).val().replace(/^[0]|\D/g,''));


            if($(this).val() == '') {
                if(!mySelect.hasClass('finance-active')){
                    actualAmoutObj.html('');
                    submitChargeBtn.attr('disabled',true);
                }
            } else {
                selectAmount = 0;
                mySelect.removeClass('finance-active');
                submitChargeBtn.attr('disabled',false);
                actualAmoutObj.html(fmoney($(this).val()) + ' <i style="color: black">元</i>');
            }
        });

        customAmoutObj.blur(function(){
            var t = $(this);

            if(t.val() == ''){
                t.removeClass('finance-active');
            } else {
                t.addClass('finance-active');
            }
        });
        function submitCharge()
        {
            var inputAmount=parseInt($.trim(customAmoutObj.val()));
            var chargeAmount=inputAmount>0? inputAmount:selectAmount;
            if(null==chargeAmount||isNaN(chargeAmount)||chargeAmount<=0 || (chargeAmount % 100)!=0 || chargeAmount > 50000)
            {
                swal('错误！','请核对充值金额(必须为100的倍数)，且单笔充值不能超过5万','error');
                return;
            }
            var text='您将前往'+(onlinePayType==0?'支付宝':'微信')+'扫码进行充值，充值金额：￥'+fmoney(chargeAmount,2);
            swal(setPayConfirmInfo('您确定要发起支付吗？',text,'warning'),
                    function(isConfirm){
                        if(isConfirm)
                        {
                            var actualAmount=tp_debug? 1: chargeAmount * 100;
                            callAjax({'amount':actualAmount,'pay_type':onlinePayType },0,function(response){
                                if(0==response)
                                {
                                    swal('错误！','请核对充值金额(必须为100的倍数)','error');
                                }
                                else if(-1==response)
                                {
                                    swal('错误！','充值金额+当前余额超过系统限制！','error');
                                }
                                else
                                {
                                    if((response.out_trade_no!=null&&response.out_trade_no!=''&&response.respcd == '0000')) {
                                        location.href="http://www.insgeek.com/Financial/scanQRCode/?query="+response.query;
                                    }else{
                                        swal("错误！", '支付请求失败！' + response.resperr + '稍后请重新支付。', "error");
                                    }
                                }
                            },'http://www.insgeek.com/Financial/submitCharge/');
                        }
                        else
                        {
                            //swal("提醒！", '您取消了充值申请！', "warning");
                        }
                    });

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

        /********************************************************/

        /***********************充值记录查询***********************/

        /********************************************************/
    })
    </script>
{/block}

