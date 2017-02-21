{extends file="template/front.tpl"}

{block name="title"}管理设置{/block}

{block name="css"}
    <link rel="stylesheet" type="text/css" href="{#static_path#}/css/plugins/jquery-ui.css">
{/block}

{block name="container"}
    <div class="wrapper wrapper-content">
        <div class="container">
            <div class="row">

                {include file="template/sidebar.tpl"}

                <div id="page" data-page="manageInfo"></div>

                <div class="col-xs-10">
                    <div class="finance-recharge finance-manage ibox float-e-margins">
                        <div class="ibox-title">
                            <span>管理设置</span>
                        </div>
                        <div class="ibox-content">
                            <ul id="ins_tabs" class="nav-tabs">
                                <li class="active"><a data-toggle="tab" href="#tab-1" aria-expanded="true">收款账户</a></li>
                                <li><a data-toggle="tab" href="#tab-2" aria-expanded="false" class="count-info">发票抬头</a></li>
                                <li><a data-toggle="tab" href="#tab-3" aria-expanded="false" class="count-info">收件地址</a></li>
                            </ul>
                            <div class="tab-content global-tab-content">
                                <div class="tab-pane active" id="tab-1">
                                    <div class="ibox-content no-border" style="padding: 0;font-size: 14px">
                                        <div class="manage-card-all" id="bankList">
                                            <div class="contact-box manage-card">
                                                <i class="fa fa-times"></i>
                                                <input type="hidden" value="0" name="key">
                                                <div class="manage-line clearfix">
                                                    <span class="manage-card-head pull-left text-right">开户类型：</span>
                                                    <span class="manage-card-body pull-right">
                                                        银行卡
                                                                                                    </span>
                                                </div>
                                                <div class="manage-line clearfix">
                                                    <span class="manage-card-head pull-left text-right">账户姓名：</span>
                                                    <span class="manage-card-body pull-right oldAccountName">测试</span>
                                                </div>
                                                <div class="manage-line clearfix">
                                                    <span class="manage-card-head pull-left text-right">收款账户：</span>
                                                    <span class="manage-card-body pull-right oldAccountNumber">6228480402564890018</span>
                                                </div>
                                                <div class="manage-line clearfix">
                                                    <span class="manage-card-head pull-left text-right">开户网点：</span>
                                                    <span class="manage-card-body pull-right oldBankName">
                                                                                                        北京                                        </span>
                                                </div>
                                                <div class="manage-line clearfix">
                                                    <span class="manage-card-head pull-left text-right">银行名称：</span>
                                                    <span class="manage-card-body pull-right oldAccountBranch">
                                                                                                        中国农业银行                                        </span>
                                                </div>
                                                <input type="hidden" name="oldBankType" value="0">
                                                <input type="hidden" name="oldAccountName" value="测试">
                                                <input type="hidden" name="oldAccountBranch" value="北京">
                                                <input type="hidden" name="oldBankName" value="中国农业银行">
                                                <button type="button" class="manage-change btn btn-primary btn-xs edit_bank" data-toggle="modal" data-target="#bankModal">编辑</button>
                                            </div>                        </div>
                                    </div>
                                    <button class="btn btn-primary" type="button" data-toggle="modal" data-target="#addbankAcountModal"><i class="fa fa-plus"></i> 新增账户</button>
                                </div>
                                <div class="tab-pane" id="tab-2">
                                    <!--<div class="alert alert-danger text-center" style="display: none" id="receiptTitleErrorMsgID">-->
                                    <!--<i class="fa fa-times-circle"></i>-->
                                    <!--</div>-->
                                    <!--<div class="form-group clear">-->
                                    <!--<input type="text" name="receipt_title" class="form-control pull-left"-->
                                    <!--placeholder="请输入个人姓名或单位名称" style="width: 680px;margin-right: 20px"/>-->
                                    <!--<button type="button" class="btn btn-primary manage-add-button pull-left"-->
                                    <!--id="add_receipt_title">新增抬头-->
                                    <!--</button>-->
                                    <!--</div>-->
                                    <div class="ibox-content no-border" style="padding: 0;font-size: 14px">
                                        <div class="manage-card-all" id="receipTitleList">
                                            <div class="contact-box manage-card">
                                                <i class="fa fa-times"></i>
                                                <input type="hidden" value="0" name="key" />
                                                <div class="clearfix">
                                                    <span class="manage-card-head pull-left text-right">公司名称：</span>
                                                    <span class="manage-card-body pull-right username margin-reset company-name">测试</span>
                                                </div>
                                                <button type="button" class="manage-change btn btn-primary btn-xs edit_receipt" data-toggle="modal" data-target="#receiptTitleModel">编辑</button>
                                            </div>                        </div>
                                    </div>
                                    <button class="btn btn-primary" type="button" data-toggle="modal" data-target="#receiptNewTitleModel"><i class="fa fa-plus"></i> 新增抬头</button>
                                </div>
                                <div class="tab-pane" id="tab-3">
                                    <div class="ibox-content  no-border" style="padding: 0;font-size: 14px">
                                        <div class="manage-card-all" id="addressList">
                                            <div class="contact-box manage-card">
                                                <i class="fa fa-times"></i>
                                                <div class="manage-line clearfix">
                                                    <span class="manage-card-head pull-left text-right">联系人：</span>
                                                    <span class="manage-card-body pull-right username margin-reset">测试</span>
                                                </div>
                                                <div class="manage-line clearfix">
                                                    <span class="manage-card-head pull-left text-right">联系方式：</span>
                                                    <span class="manage-card-body pull-right mobile margin-reset">18600182394</span>
                                                </div>
                                                <div class="manage-line clearfix">
                                                    <span class="manage-card-head pull-left text-right">地址：</span>
                                                    <span class="manage-card-body pull-right address">北京东城区xxxxx</span>
                                                </div>
                                                <input type="hidden" name="oldAddress" value="北京 东城区 xxxxx">
                                                <input type="hidden" value="0" name="key">
                                                <div class="manage-change">
                                                    <button type="button" class="btn btn-primary btn-xs edit_address" data-toggle="modal" data-target="#addressModel">编辑</button>
                                                    <span class="btn-outline btn btn-primary btn-xs active"
                                                          style="opacity: 1">默认地址</span>
                                                </div>
                                            </div>                        </div>
                                    </div>
                                    <button class="btn btn-primary" type="button" data-toggle="modal" data-target="#addAddressModel"><i class="fa fa-plus"></i> 新增地址</button>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

                <!--新增收款账户模态框-->
                <div class="modal inmodal" id="addbankAcountModal" tabindex="-1" role="dialog"  aria-hidden="true">
                    <div class="modal-dialog">
                        <div class="modal-content animated fadeIn">
                            <div class="finance-recharge float-e-margins">
                                <div class="form-horizontal">
                                    <div class="modal-header">
                                        <button type="button" class="close" data-dismiss="modal">
                                            <span aria-hidden="true">&times;</span><span class="sr-only">Close</span></button>
                                        <h3>新增收款账户</h3>
                                        <small>请输入新的收款账户信息</small>
                                    </div>
                                    <div class="modal-body">
                                        <div class="alert alert-danger text-center" style="display: none" id="bankErrorMsgID">
                                            <i class="fa fa-times-circle"></i>
                                        </div>
                                        <form class="form-group clear" id="accountFormID">
                                            <div class="form-group select-container">
                                                <label class="col-sm-3 control-label font-noraml">开户类型：</label>
                                                <div class="col-sm-8">
                                                    <select class="form-control proceed-select" name="bank_type">
                                                        <option value="银联借记卡">银联借记卡</option>
                                                        <option value="支付宝">支付宝</option>
                                                    </select>
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <label class="col-sm-3 control-label font-noraml">账户姓名：</label>
                                                <div class="col-sm-8">
                                                    <input type="text" class="form-control" placeholder="账户姓名" name="account_name"/>
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <label class="col-sm-3 control-label font-noraml">收款账户：</label>
                                                <div class="col-sm-8">
                                                    <input type="text" class="form-control account-proceed" placeholder="收款账户" name="account_number"/>
                                                </div>
                                            </div>
                                            <div class="form-group add-account-hidden">
                                                <label class="col-sm-3 control-label font-noraml">开户网点：</label>
                                                <div class="col-sm-8">
                                                    <input type="text" class="form-control" placeholder="开户网点" name="account_branch"/>
                                                </div>
                                            </div>
                                            <div class="form-group add-account-hidden">
                                                <label class="col-sm-3 control-label font-noraml">银行名称：</label>
                                                <div class="col-sm-8">
                                                    <input type="text" class="form-control bankNameList" placeholder="请输入所属银行" name="bank_name"/>
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <div class="col-sm-8 col-sm-offset-3">
                                                    <button type="button" class="btn btn-primary manage-add-button" id="addBank">保存收款账户</button>
                                                </div>
                                            </div>
                                        </form>
                                    </div>
                                    <div class="modal-footer">
                                        <button type="button" class="btn btn-white" data-dismiss="modal">关闭</button>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

                <!--修改收款账户模态框-->
                <div class="modal inmodal" id="bankModal" tabindex="-1" role="dialog"  aria-hidden="true">
                    <div class="modal-dialog">
                        <div class="modal-content animated fadeIn">
                            <div class="finance-recharge float-e-margins">
                                <div class="form-horizontal">
                                    <div class="modal-header">
                                        <button type="button" class="close" data-dismiss="modal">
                                            <span aria-hidden="true">&times;</span><span class="sr-only">Close</span></button>
                                        <h3>修改收款账户</h3>
                                        <small>请输入新的收款账户信息</small>
                                    </div>
                                    <div class="modal-body">
                                        <div class="alert alert-danger text-center" style="display: none" id="updateBankErrorMsg">
                                            <i class="fa fa-times-circle"></i>
                                        </div>
                                        <div class="form-group select-container">
                                            <label class="col-sm-3 control-label font-noraml">开户类型：</label>
                                            <div class="col-sm-8">
                                                <select name="bank_type" id="select-way" class="form-control proceed-select">
                                                    <option value="银联借记卡">银联借记卡</option>
                                                    <option value="支付宝">支付宝</option>
                                                </select>
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label class="col-sm-3 control-label font-noraml">账户姓名：</label>
                                            <div class="col-sm-8">
                                                <input type="text" class="form-control" placeholder="账户姓名" name="account_name"/>
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label class="col-sm-3 control-label font-noraml">收款账户：</label>
                                            <div class="col-sm-8">
                                                <input type="text" class="form-control account-proceed" placeholder="收款账户" name="account_number"/>
                                            </div>
                                        </div>
                                        <div class="form-group add-account-hidden">
                                            <label class="col-sm-3 control-label font-noraml">开户网点：</label>
                                            <div class="col-sm-8">
                                                <input type="text" class="form-control" placeholder="开户网点" name="account_branch"/>
                                            </div>
                                        </div>
                                        <div class="form-group add-account-hidden">
                                            <label class="col-sm-3 control-label font-noraml">银行名称：</label>
                                            <div class="col-sm-8">
                                                <input type="text" class="form-control bankNameList" placeholder="请输入所属银行" name="bank_name"/>
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <div class="col-sm-8 col-sm-offset-3">
                                                <button type="button" class="btn btn-primary manage-add-button" id="updateBankBtn">保存收款账户</button>
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

                <!--新增地址模态框-->
                <div class="modal inmodal" id="addAddressModel" tabindex="-1" role="dialog"  aria-hidden="true">
                    <div class="modal-dialog">
                        <div class="modal-content animated fadeIn">
                            <div class="finance-recharge float-e-margins">
                                <div class="form-horizontal">
                                    <div class="modal-header">
                                        <button type="button" class="close" data-dismiss="modal">
                                            <span aria-hidden="true">&times;</span><span class="sr-only">Close</span></button>
                                        <h3>新增收件地址</h3>
                                        <small>请输入新的收件地址</small>
                                    </div>
                                    <div class="modal-body">
                                        <div class="alert alert-danger text-center" style="display: none" id="addressErrorMsgID">
                                            <i class="fa fa-times-circle"></i>
                                        </div>
                                        <form action="" method="post" id="newAddressForm">
                                            <div class="form-group">
                                                <label class="col-sm-3 control-label font-noraml">联系人：</label>
                                                <div class="col-sm-8">
                                                    <input type="text" class="form-control pull-left" name="username"
                                                           placeholder="请输入联系人"/>
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <label class="col-sm-3 control-label font-noraml">联系方式：</label>
                                                <div class="col-sm-8">
                                                    <input type="text" class="form-control pull-left" name="mobile" placeholder="请输入手机号"/>
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <label class="col-sm-3 control-label font-noraml">所在地区：</label>
                                                <div class="col-sm-8 city_list_mode_class" id="city_list">
                                                    <select class="prov citySelect_change"></select>
                                                    <select class="city citySelect_change" disabled="disabled"></select>
                                                    <select class="dist citySelect_change" disabled="disabled"></select>
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <label class="col-sm-3 control-label font-noraml">详细地址：</label>
                                                <div class="col-sm-8">
                                                    <input type="text" class="form-control pull-left" placeholder="请输入详细地址" id="addressDetail"/>
                                                </div>
                                            </div>
                                            <input type="hidden" name="address"/>
                                            <div class="form-group">
                                                <div class="col-sm-8 col-sm-offset-3">
                                                    <input type="hidden" name="option_type" value="add"/>
                                                    <button type="button" class="btn btn-primary manage-add-button" id="newAddress">保存收件地址</button>
                                                </div>
                                            </div>
                                        </form>
                                    </div>
                                    <div class="modal-footer">
                                        <button type="button" class="btn btn-white" data-dismiss="modal">关闭</button>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

                <!--修改地址模态框-->
                <div class="modal inmodal" id="addressModel" tabindex="-1" role="dialog"  aria-hidden="true">
                    <div class="modal-dialog">
                        <div class="modal-content animated fadeIn">
                            <div class="finance-recharge float-e-margins">
                                <div class="form-horizontal">
                                    <div class="modal-header">
                                        <button type="button" class="close" data-dismiss="modal">
                                            <span aria-hidden="true">&times;</span><span class="sr-only">Close</span></button>
                                        <h3>修改收件地址</h3>
                                        <small>请输入新的收件地址</small>
                                    </div>
                                    <div class="modal-body">
                                        <div class="alert alert-danger text-center" style="display: none" id="updateAddressErrorMsg">
                                            <i class="fa fa-times-circle"></i>
                                        </div>
                                        <form action="" method="post" id="updateAddressFormID">
                                            <div class="form-group">
                                                <label class="col-sm-3 control-label font-noraml">联系人：</label>
                                                <div class="col-sm-8">
                                                    <input type="text" class="form-control pull-left" name="username"
                                                           placeholder="请输入联系人"/>
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <label class="col-sm-3 control-label font-noraml">联系方式：</label>
                                                <div class="col-sm-8">
                                                    <input type="text" class="form-control pull-left" name="mobile" placeholder="请输入手机号"/>
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <label class="col-sm-3 control-label font-noraml">所在地区：</label>
                                                <div class="col-sm-8 city_list_mode_class" id="city_list_mode">
                                                    <select class="prov citySelect_change"></select>
                                                    <select class="city citySelect_change" disabled="disabled"></select>
                                                    <select class="dist citySelect_change" disabled="disabled"></select>
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <label class="col-sm-3 control-label font-noraml">详细地址：</label>
                                                <div class="col-sm-8">
                                                    <input type="text" class="form-control pull-left" placeholder="请输入详细地址" id="updateDetail"/>
                                                </div>
                                                <input type="hidden" name="address" id="address"/>
                                                <input type="hidden" value="0" name="key">
                                            </div>
                                            <div class="form-group">
                                                <div class="col-sm-8 col-sm-offset-3">
                                                    <button type="button" class="btn btn-primary manage-add-button" id="updateAddressBtn">保存收件地址</button>
                                                </div>
                                            </div>
                                        </form>
                                    </div>
                                    <div class="modal-footer">
                                        <button type="button" class="btn btn-white" data-dismiss="modal">关闭</button>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

                <!--新增发票抬头-->
                <div class="modal inmodal" id="receiptNewTitleModel" tabindex="-1" role="dialog"  aria-hidden="true">
                    <div class="modal-dialog">
                        <div class="modal-content animated fadeIn">
                            <div class="finance-recharge float-e-margins">
                                <div class="form-horizontal">
                                    <div class="modal-header">
                                        <button type="button" class="close" data-dismiss="modal">
                                            <span aria-hidden="true">&times;</span><span class="sr-only">Close</span></button>
                                        <h3>新增发票抬头</h3>
                                        <small>请输入新的发票抬头</small>
                                    </div>
                                    <div class="modal-body">
                                        <div class="alert alert-danger text-center" style="display: none" id="receiptTitleErrorMsgID">
                                            <i class="fa fa-times-circle"></i>
                                        </div>
                                        <div class="form-group">
                                            <label class="col-sm-3 control-label font-noraml">公司名称：</label>
                                            <div class="col-sm-8">
                                                <input type="text" name="receipt_title" class="form-control pull-left"
                                                       placeholder="请输入个人姓名或单位名称"/>
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <div class="col-sm-8 col-sm-offset-3">
                                                <button type="button" class="btn btn-primary manage-add-button" id="add_receipt_title">保存发票抬头</button>
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

                <!--修改发票抬头模态框-->
                <div class="modal inmodal" id="receiptTitleModel" tabindex="-1" role="dialog"  aria-hidden="true">
                    <div class="modal-dialog">
                        <div class="modal-content animated fadeIn">
                            <div class="finance-recharge float-e-margins">
                                <div class="form-horizontal">
                                    <div class="modal-header">
                                        <button type="button" class="close" data-dismiss="modal">
                                            <span aria-hidden="true">&times;</span><span class="sr-only">Close</span>
                                        </button>
                                        <h3>修改发票抬头</h3>
                                        <small>请输入新的发票抬头</small>
                                    </div>
                                    <div class="modal-body">
                                        <form action="" method="post" id="updateReceiptTitleFormID">
                                            <div class="alert alert-danger text-center" style="display: none" id="updateReceiptTitleErrorMsg">
                                                <i class="fa fa-times-circle"></i>
                                            </div>
                                            <div class="form-group">
                                                <label class="col-sm-3 control-label font-noraml">公司名称：</label>
                                                <div class="col-sm-8">
                                                    <input type="text" class="form-control pull-left" name="receipt_title" placeholder="请输入个人姓名或单位名称"/>
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <div class="col-sm-8 col-sm-offset-3">
                                                    <button type="button" class="btn btn-primary manage-add-button" id="updateReceiptTitleBtn">保存发票抬头</button>
                                                </div>
                                            </div>
                                        </form>
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
        </div>
    </div>
{/block}

{block name="js"}
    <script src="{#static_path#}/js/address/jquery.cityselect.js"></script>
    <script src="{#static_path#}/js/plugins/jquery-ui.js"></script>
    <script>
    var url = location.href;
    var insTabs = $("#ins_tabs a");

    if (url.indexOf('tab-2') > 0) {
        insTabs.eq(1).click();
    } else if (url.indexOf('tab-3') > 0) {
        insTabs.eq(2).click();
    }
    $(function () {
        $('.table-hover').dataTable({
            "bLengthChange":false,
            ordering:false,
            "searching": false,
            "bStateSave": true//状态保存
        });
        /*给收货地址添加修改地址功能*/
        /*点击X弹出删除警告*/
        var cityList = $("#city_list");
        selectCity(cityList, '北京', '东城区');
        selectCity($(".city_list_mode_class"), '北京', '东城区');
        /*城市选择三级联动*/
        function selectCity(obj, prov, city, dist) {
            obj.citySelect({
                url: 'http://www.insgeek.com/public/group/js/plugins/cityselect/city.min.js',
                prov: prov,
                city: city,
                dist: dist,
                nodata: "none"
            });
        }

//        /*新增地址三级联动*/
//        cityList.on("change", function () {
//            if (cityList.find(".dist").val() == null) {
//                $("#addressDetail").css({
//                    width: 564
//                })
//            } else {
//                $("#addressDetail").css({
//                    width: 434
//                })
//            }
//        });
        var bankNameList = [];
        bankNameList[0] = 'AEON信贷财务(亚洲)有限公司';bankNameList[1] = 'BC卡公司';bankNameList[2] = 'Discover Financial Services，In';bankNameList[3] = 'Travelex';bankNameList[4] = '鞍山市商业银行';bankNameList[5] = '安徽省农村信用社联合社';bankNameList[6] = '安顺市城市信用社';bankNameList[7] = '澳门国际银行';bankNameList[8] = '澳门永亨银行';bankNameList[9] = '澳门永亨银行股份有限公司';bankNameList[10] = '包头市商业银行';bankNameList[11] = '宝鸡商行';bankNameList[12] = '北京农村商业银行';bankNameList[13] = '北京银行';bankNameList[14] = '渤海银行';bankNameList[15] = '沧州农信社';bankNameList[16] = '常熟农村商业银行';bankNameList[17] = '常熟市农村商业银行';bankNameList[18] = '长春市商业银行';bankNameList[19] = '长沙市商业银行';bankNameList[20] = '长治市商业银行';bankNameList[21] = '成都农信社';bankNameList[22] = '成都商业银行';bankNameList[23] = '成都市农村信用合作社联合社';bankNameList[24] = '成都市商业银行';bankNameList[25] = '承德市商业银行';bankNameList[26] = '创兴银行有限公司';bankNameList[27] = '大丰银行有限公司';bankNameList[28] = '大连商业银行';bankNameList[29] = '大连市商业银行';bankNameList[30] = '大连银行';bankNameList[31] = '大庆市商业银行';bankNameList[32] = '大同市商业银行';bankNameList[33] = '大西洋银行股份有限公司';bankNameList[34] = '大新银行';bankNameList[35] = '大新银行有限公司';bankNameList[36] = '丹东商行';bankNameList[37] = '丹东市商业银行';bankNameList[38] = '德阳市商业银行';bankNameList[39] = '德州市商业银行';bankNameList[40] = '东亚银行(中国)有限公司';bankNameList[41] = '东亚银行有限公司';bankNameList[42] = '东营市商业银行';bankNameList[43] = '东莞农村信用合作社';bankNameList[44] = '东莞商行';bankNameList[45] = '东莞市商业银行';bankNameList[46] = '鄂尔多斯市商业银行股份有限公司';bankNameList[47] = '佛山市南海区农村信用合作联社';bankNameList[48] = '佛山市南海区农村信用合作社联合社';bankNameList[49] = '佛山市三水区农村信用合作社';bankNameList[50] = '佛山市禅城区农村信用联社';bankNameList[51] = '福建省农村信用社联合社';bankNameList[52] = '福州商业银行';bankNameList[53] = '福州市商业银行';bankNameList[54] = '抚顺市商业银行';bankNameList[55] = '阜新市商业银行';bankNameList[56] = '赣州市商业银行';bankNameList[57] = '广东发展银行';bankNameList[58] = '广东省农村信用社联合社';bankNameList[59] = '广西农村信用社联合社';bankNameList[60] = '广州农村信用合作社联合社';bankNameList[61] = '广州市农信社';bankNameList[62] = '广州市商业银行';bankNameList[63] = '桂林市商业银行';bankNameList[64] = '贵阳市商业商行';bankNameList[65] = '贵阳市商业银行';bankNameList[66] = '贵州省农村信用社联合社';bankNameList[67] = '国家邮政局';bankNameList[68] = '哈尔滨商行';bankNameList[69] = '哈尔滨银行';bankNameList[70] = '哈萨克斯坦国民储蓄银行';bankNameList[71] = '海南省农村信用社联合社';bankNameList[72] = '汉口银行';bankNameList[73] = '杭州商业银行';bankNameList[74] = '杭州市商业银行';bankNameList[75] = '河北省农村信用社联合社';bankNameList[76] = '河南省农村信用社联合社';bankNameList[77] = '河南省邮政储汇局';bankNameList[78] = '鹤壁市城市信用社股份有限公司';bankNameList[79] = '恒丰银行';bankNameList[80] = '恒生银行';bankNameList[81] = '恒生银行有限公司';bankNameList[82] = '呼市商业银行';bankNameList[83] = '葫芦岛市商业银行';bankNameList[84] = '湖北农信社';bankNameList[85] = '湖北省农村信用社联合社';bankNameList[86] = '湖南省农村信用社联合社';bankNameList[87] = '湖州市商业银行';bankNameList[88] = '花旗银行(中国)有限公司';bankNameList[89] = '花旗银行有限公司';bankNameList[90] = '华夏银行';bankNameList[91] = '徽商银行';bankNameList[92] = '徽商银行安庆分行';bankNameList[93] = '徽商银行合肥分行';bankNameList[94] = '徽商银行淮北分行';bankNameList[95] = '徽商银行马鞍山分行';bankNameList[96] = '徽商银行芜湖分行';bankNameList[97] = '吉林农信联合社';bankNameList[98] = '吉林市商业银行';bankNameList[99] = '集友银行';bankNameList[100] = '济南商业银行';bankNameList[101] = '济南市商业银行';bankNameList[102] = '嘉兴市商业银行';bankNameList[103] = '江门市新会区农村信用合作联社';bankNameList[104] = '江苏东吴农村商业银行';bankNameList[105] = '江苏农信';bankNameList[106] = '江苏农信社';bankNameList[107] = '江苏省农村信用社联合社';bankNameList[108] = '江苏锡州农村商业银行';bankNameList[109] = '江苏银行';bankNameList[110] = '江西农信联合社';bankNameList[111] = '江西省农村信用社联合社';bankNameList[112] = '江阴农村商业银行';bankNameList[113] = '江阴市农村商业银行';bankNameList[114] = '焦作市商业银行';bankNameList[115] = '交通银行';bankNameList[116] = '交通银行(香港)分行';bankNameList[117] = '交通银行股份有限公司太平洋双币信用卡中心';bankNameList[118] = '金华商业银行';bankNameList[119] = '金华市商业银行';bankNameList[120] = '锦州市商业银行';bankNameList[121] = '晋城商业银行';bankNameList[122] = '靖江市长江城市信用社';bankNameList[123] = '九江市商业银行';bankNameList[124] = '可汗银行';bankNameList[125] = '昆明农联社';bankNameList[126] = '昆明商业银行';bankNameList[127] = '昆明市农村信用联社';bankNameList[128] = '昆山农村信用合作社联合社';bankNameList[129] = '昆山农信社';bankNameList[130] = '莱芜银行';bankNameList[131] = '兰州市商业银行';bankNameList[132] = '廊坊市商业银行';bankNameList[133] = '连云港市商业银行';bankNameList[134] = '辽阳市商业银行';bankNameList[135] = '廖创兴银行有限公司';bankNameList[136] = '临沂商业银行';bankNameList[137] = '临沂市商业银行';bankNameList[138] = '柳州市商业银行';bankNameList[139] = '六盘水商行';bankNameList[140] = '洛阳市商业银行';bankNameList[141] = '绵阳市商业银行';bankNameList[142] = '莫斯科人民储蓄银行';bankNameList[143] = '南昌商业银行';bankNameList[144] = '南昌市商业银行';bankNameList[145] = '南京银行';bankNameList[146] = '南宁市商业银行';bankNameList[147] = '南通商业银行';bankNameList[148] = '南通市商业银行';bankNameList[149] = '南洋商业银行';bankNameList[150] = '内蒙古自治区农村信用社联合式';bankNameList[151] = '宁波商业银行';bankNameList[152] = '宁波市商业银行';bankNameList[153] = '宁波银行';bankNameList[154] = '宁波鄞州农村合作银行';bankNameList[155] = '宁夏农村信用社';bankNameList[156] = '宁夏银行';bankNameList[157] = '攀枝花市商业银行';bankNameList[158] = '平凉市城市信用社';bankNameList[159] = '浦东发展银行';bankNameList[160] = '浦发银行';bankNameList[161] = '七台河市城市信用社';bankNameList[162] = '齐齐哈尔商行';bankNameList[163] = '齐齐哈尔商业银行';bankNameList[164] = '齐齐哈尔市商业银行';bankNameList[165] = '青岛商行';bankNameList[166] = '青岛市商业银行';bankNameList[167] = '曲靖市商业银行';bankNameList[168] = '泉州市商业银行';bankNameList[169] = '日本三井住友卡公司';bankNameList[170] = '日照市商业银行';bankNameList[171] = '三门峡市城市信用社';bankNameList[172] = '山东农村信用联合社';bankNameList[173] = '山东省农联社';bankNameList[174] = '陕西省农村信用社联合社';bankNameList[175] = '上海农村商业银行';bankNameList[176] = '上海农信社';bankNameList[177] = '上海浦东发展银行';bankNameList[178] = '上海商业银行';bankNameList[179] = '上海市农村信用合作社联合社';bankNameList[180] = '上海银行';bankNameList[181] = '上饶市商业银行';bankNameList[182] = '绍兴商业银行';bankNameList[183] = '绍兴市商业银行';bankNameList[184] = '深圳发展银行';bankNameList[185] = '深圳农信社';bankNameList[186] = '深圳平安银行';bankNameList[187] = '深圳商业银行';bankNameList[188] = '深圳市农村信用合作社联合社';bankNameList[189] = '深圳市商业银行';bankNameList[190] = '盛京银行';bankNameList[191] = '石家庄商行';bankNameList[192] = '石家庄商业银行';bankNameList[193] = '石家庄市商业银行';bankNameList[194] = '顺德农信社';bankNameList[195] = '顺德市农信社';bankNameList[196] = '四川省农村信用社联合社';bankNameList[197] = '苏州市商业银行';bankNameList[198] = '台州商业银行';bankNameList[199] = '台州市商业银行';bankNameList[200] = '泰安市商业银行';bankNameList[201] = '泰隆城市信用社';bankNameList[202] = '太仓农村商业银行';bankNameList[203] = '太原市商业银行';bankNameList[204] = '唐山市商业银行';bankNameList[205] = '天津市农村信用社';bankNameList[206] = '天津市商业银行';bankNameList[207] = '威海商业银行';bankNameList[208] = '威海市商业银行';bankNameList[209] = '潍坊商业银行';bankNameList[210] = '潍纺市商业银行';bankNameList[211] = '温州银行';bankNameList[212] = '乌海市商业银行';bankNameList[213] = '乌鲁木齐市商业银行';bankNameList[214] = '无锡市商业银行';bankNameList[215] = '吴江农村商业银行';bankNameList[216] = '武汉农信';bankNameList[217] = '武进农村商业银行';bankNameList[218] = '西安商业银行';bankNameList[219] = '西安市商业银行';bankNameList[220] = '西宁商业银行';bankNameList[221] = '西宁市商业银行';bankNameList[222] = '厦门市商业银行';bankNameList[223] = '香港上海汇丰银行有限公司';bankNameList[224] = '襄樊市商业银行股份有限公司';bankNameList[225] = '新加坡大华银行';bankNameList[226] = '新疆维吾尔自治区农村信用社联合社';bankNameList[227] = '星展银行(香港)有限公司';bankNameList[228] = '兴业银行';bankNameList[229] = '徐州市郊农村信用合作联社';bankNameList[230] = '徐州市商业银行';bankNameList[231] = '徐州市市郊农村信用合作社';bankNameList[232] = '许昌市商业银行';bankNameList[233] = '烟台商业银行';bankNameList[234] = '烟台市商业银行';bankNameList[235] = '盐城商行';bankNameList[236] = '尧都区农村信用合作社联社';bankNameList[237] = '宜昌市商业银行';bankNameList[238] = '营口市商业银行';bankNameList[239] = '永亨银行';bankNameList[240] = '永隆银行';bankNameList[241] = '永隆银行有限公司';bankNameList[242] = '邮政储汇';bankNameList[243] = '邮政储汇局';bankNameList[244] = '玉溪市商业银行';bankNameList[245] = '运城市农村信用合作社联合社';bankNameList[246] = '渣打银行(香港)有限公司';bankNameList[247] = '渣打银行(中国)有限公司';bankNameList[248] = '湛江市商业银行';bankNameList[249] = '张家港农村商业银行';bankNameList[250] = '张家港市农村商业银行';bankNameList[251] = '张家口市商业银行股份有限公司';bankNameList[252] = '招商银行';bankNameList[253] = '招商银行信用卡中心';bankNameList[254] = '肇庆农村信用社';bankNameList[255] = '浙江稠州商业银行';bankNameList[256] = '浙江民泰商业银行';bankNameList[257] = '浙江省农村信用社联合社';bankNameList[258] = '浙江泰隆商业银行';bankNameList[259] = '浙商银行';bankNameList[260] = '浙商银行成都分行';bankNameList[261] = '浙商银行宁波分行';bankNameList[262] = '浙商银行上海分行';bankNameList[263] = '浙商银行绍兴分行';bankNameList[264] = '浙商银行天津分行';bankNameList[265] = '浙商银行温州分行';bankNameList[266] = '浙商银行西安分行';bankNameList[267] = '浙商银行义乌分行';bankNameList[268] = '浙商银行营业部';bankNameList[269] = '镇江市商业银行';bankNameList[270] = '郑州商业银行';bankNameList[271] = '郑州市商业银行';bankNameList[272] = '中国工商银行';bankNameList[273] = '中国工商银行澳门分行';bankNameList[274] = '中国光大银行';bankNameList[275] = '中国光大银行银行';bankNameList[276] = '中国建设银行';bankNameList[277] = '中国建设银行(澳门)股份有限公司';bankNameList[278] = '中国建设银行(亚洲)股份有限公司';bankNameList[279] = '中国民生银行';bankNameList[280] = '中国农业银行';bankNameList[281] = '中国银行';bankNameList[282] = '中国银行(澳门)分行';bankNameList[283] = '中国银行(香港)';bankNameList[284] = '中国银行(香港)有限公司';bankNameList[285] = '中国银行澳门分行';bankNameList[286] = '中国邮政储蓄银行信用卡中心';bankNameList[287] = '中山市农村信用合作社';bankNameList[288] = '中外合资.南充市商业银行';bankNameList[289] = '中信嘉华银行有限公司';bankNameList[290] = '中信银行';bankNameList[291] = '中信银行信用卡中心';bankNameList[292] = '中行新加坡分行';bankNameList[293] = '重庆农村商业银行股份有限公司';bankNameList[294] = '重庆市商业银行';bankNameList[295] = '重庆银行股份有限公司';bankNameList[296] = '珠海农村信用合作社联社';bankNameList[297] = '珠海市商业银行';bankNameList[298] = '淄博商业银行';bankNameList[299] = '淄博市商业银行';bankNameList[300] = '遵义市商业银行';bankNameList[301] = '鄞州农村合作银行';bankNameList[302] = '鄞州农村信用合作银行';bankNameList[303] = '泸州市商业银行';
        $(".bankNameList").autocomplete({ //id为input标签
            minLength: 0,//第几位触发列表
            source: bankNameList,//arr变量为列表数组，"1111","222",...
            create: function (event, ui) {
                $(this).bind('click', function () {
                    $(this).autocomplete("search", "");
                });
            }

        });
        /*收款账户中，新增与修改--选择支付方式，如果支付方式是微信或者支付宝。则更改新增对应的选框*/
        $(".proceed-select").on("change", function () {
            var obj = $(this).parents('.select-container').siblings('.add-account-hidden');
            if ($(this).val() != "银联借记卡") {
                obj.hide();
            } else {
                obj.show();
            }
        });
        /*默认地址的hover样式*/
        var shippingAddr = $("#addressList"),
                shippingAddrTr = shippingAddr.find(".manage-card"),
                shippingAddrBtn = shippingAddr.find(".btn-xs"),
                clickAddr = $(".click-addr");
        shippingAddrTr.on("mouseenter", function () {
            $(this).find(".click-addr").css("opacity", "1");
        });
        shippingAddrTr.on("mouseleave", function () {
            $(this).find(".click-addr").css("opacity", "0");
        });
        shippingAddrBtn.on("click", function () {
            $(".default-addr").removeClass("default-addr").addClass("click-addr btn-outline").css("opacity", "0");
            $(this).removeClass("click-addr btn-outline").addClass("default-addr").css("opacity", "1");
        });
        /**************默认地址按钮****************/
        $(".default_address").click(function () {
            var indexObj = $(this).parent().siblings("input[name='key']");
            var index = $.trim(indexObj.val());

            submitData({index: index, option_type: 'default'}, "http://www.insgeek.com/financial/addressOption/", 'tab-3');
        });

        /****************************收件地址*********************************/
        var addressErrorMsgObj = $("#addressErrorMsgID");
        var newAddressForm = $("#newAddressForm");
        var addressObj = $("input[name='address']");
        var provObj = $("#city_list .prov");
        var cityObj = $("#city_list .city");
        var distObj = $("#city_list .dist");
        var detailObj = $("#addressDetail");
        var usernameObj = $("input[name='username']");
        var mobileObj = $("input[name='mobile']");
        $("#newAddress").click(function () {
            var prov = $.trim(provObj.val());
            var city = $.trim(cityObj.val());
            var dist = $.trim(distObj.val());
            var detail = $.trim(detailObj.val());
            var username = $.trim(usernameObj.val());
            var mobile = $.trim(mobileObj.val());
            var detailAddress = "";
            if (detail == '') {
                showError("详细地址不能为空", addressErrorMsgObj);
                return;
            }
            addressErrorMsgObj.html('').hide();
            detail = detail.replace(/\s/g,'');
            detailAddress = prov + " " + city;
            if (dist != '') {
                detailAddress += " " + dist;
            }
            detailAddress += " " + detail;

            addressObj.val(detailAddress);

            if (detailAddress.replace(/\s/g,'').length > 80) {
                showError("地址长度过长", addressErrorMsgObj);
                return;
            }
            if (check_mobile_format(mobile, false) != 1) {
                showError("手机号码不正确", addressErrorMsgObj);
                return;
            }
            if (check_realname_format(username) != 1) {
                showError("用户姓名格式不正确", addressErrorMsgObj);
                return;
            }

            submitData(newAddressForm.serialize(), "http://www.insgeek.com/financial/addressOption/", 'tab-3');

        });

        function submitAddress() {
            callAjax(newAddressForm.serialize(), 0, function (response) {
                if (response.code == 1) {
                    location.reload();
                } else {
                    showConfrimWindow('', response.msg, 'error', false, true,function (isConfrim) {
//                        if (isConfrim) {
//                            location.reload();
//                        }
                    });
                }
            }, "http://www.insgeek.com/financial/addNewAddress/");
        }

        /*********************新增发票抬头*************************/
        var receiptTitleErrorMsgObj = $("#receiptTitleErrorMsgID");
        var receiptREG = /^[\u4e00-\u9fa5（）A-Za-z0-9]{2,32}$/;
        var receiptTitleObj = $("input[name='receipt_title']");
        $("#add_receipt_title").click(function () {
            var receiptTitle = $.trim(receiptTitleObj.val().replace(/\(/g,'（').replace(/\)/g,'）'));
            if (receiptTitle == '') {
                showError('发票抬头不能为空', receiptTitleErrorMsgObj);
                return;
            }
            if(!receiptREG.test(receiptTitle)){
                showError('请输入正确的发票抬头（2-32位中文、数字或字母）', receiptTitleErrorMsgObj);
                return;
            }
            receiptTitleErrorMsgObj.html('').hide();

            submitData({
                receipt_title: receiptTitle,
                option_type: 'add'
            }, "http://www.insgeek.com/financial/receiptTitleOption/", 'tab-2');

        });

        /*********************新增银行账户信息*************************/
        var bankErrorMsgObj = $("#bankErrorMsgID");
        var accountNameObj = $("input[name='account_name']");
        var accountNumberObj = $("input[name='account_number']");
        var accountBranchObj = $("input[name='account_branch']");
        var bankNameObj = $("input[name='bank_name']");
        var bankTypeObj = $("select[name='bank_type']");
        $("#addBank").click(function () {
            var bankName = $.trim(bankNameObj.val());
            var bankType = $.trim(bankTypeObj.val());
            var accountName = $.trim(accountNameObj.val());
            var accountNumber = $.trim(accountNumberObj.val());
            var accountBranch = $.trim(accountBranchObj.val());
            var data;
            if (bankType == '支付宝') {
                if (check_realname_format(accountName) != 1) {
                    showError('支付宝账户姓名为空或格式不正确', bankErrorMsgObj);
                    return;
                }
                if (!(check_mobile_format(accountNumber, false) == 1 || check_email_format(accountNumber) == 1)) {
                    showError('您输入的支付宝账户为空或格式不正确', bankErrorMsgObj);
                    return;
                }

                bankErrorMsgObj.html('').hide();
                data = {
                    bank_type: bankType,
                    account_name: accountName,
                    account_number: accountNumber,
                    option_type: 'add'
                };
            } else if (bankType == '银联借记卡') {
                if (check_realname_format(accountName) != 1) {
                    showError('银行卡账户姓名为空或格式不正确', bankErrorMsgObj);
                    return;
                }
                if (!/^[\d]{12,19}$/.test(accountNumber)) {
                    showError('收款账户为空或格式不正确', bankErrorMsgObj);
                    return;
                }
                if (bankName.length > 32 || bankName == '') {
                    showError('银行名称为空或格式不正确（32个字符以内）', bankErrorMsgObj);
                    return;
                }

                if (accountBranch.length > 32 || accountBranch == '') {
                    showError('开户网点为空或格式不正确（32个字符以内）', bankErrorMsgObj);
                    return;
                }

                data = {
                    bank_name: bankName,
                    bank_type: bankType,
                    account_name: accountName,
                    account_branch: accountBranch,
                    account_number: accountNumber,
                    option_type: 'add'
                };
            }

            submitData(data, "http://www.insgeek.com/financial/bankOption/", '');

        });
        /****删除地址***/
        $("#addressList .fa-times").click(function () {
            var indexObj = $(this).parent().find("input[name='key']");
            var index = $.trim(indexObj.val());
            showConfrimWindow('', '您确定要删除？', 'warning', true, false,function (isConfrim) {
                if (isConfrim) {
                    submitData({index: index, option_type: "delete"}, "http://www.insgeek.com/financial/addressOption/", 'tab-3');
                }
            });
        });
        /***删除发票抬头***/
        $("#receipTitleList .fa-times").click(function () {
            var indexObj = $(this).next();
            var index = $.trim(indexObj.val());
            showConfrimWindow('', '您确定要删除？', 'warning', true, false,function (isConfrim) {
                if (isConfrim) {
                    submitData({index: index, option_type: "delete"}, "http://www.insgeek.com/financial/receiptTitleOption/", 'tab-2');
                }
            });
        });
        /****************删除银行卡****************/
        $("#bankList .fa-times").click(function () {
            var indexObj = $(this).next();
            var index = $.trim(indexObj.val());
            showConfrimWindow('', '您确定要删除？', 'warning', true, false,function (isConfrim) {
                if (isConfrim) {
                    submitData({index: index, option_type: "delete"}, "http://www.insgeek.com/financial/bankOption/", '');
                }
            });
        });

        /************修改地址*************/
        var updateAddressForm = $("#updateAddressFormID");
        var updateAddressErrorMsgObj = $("#updateAddressErrorMsg");
        var addressModel = $("#addressModel");
        var modelProvObj = $("#city_list_mode .prov");
        var modelCityObj = $("#city_list_mode .city");
        var modelDistObj = $("#city_list_mode .dist");
        var updateDetailObj = $("#updateDetail");
        var updateNameObj = $("#addressModel input[name='username']");
        var updateMobileObj = $("#addressModel input[name='mobile']");
        var updateAddressObj = $("#addressModel input[name='address']");

        var addressIndex;
        var editOldName;
        var editOldMobile;
        var editOldAddress;
        $("#updateAddressBtn").click(function () {
            var detailAddress = '';
            var updateProv = $.trim(modelProvObj.val());
            var updateCity = $.trim(modelCityObj.val());
            var updateDist = $.trim(modelDistObj.val());
            var updateDetail = $.trim(updateDetailObj.val());
            var updateName = $.trim(updateNameObj.val());
            var updateMobile = $.trim(updateMobileObj.val());
            updateDetail = updateDetail.replace(/\s/g,'');
            if (updateDetail != '') {
                detailAddress = updateProv + " " + updateCity;
                if (updateDist != '') {
                    detailAddress += " " + updateDist;
                }
                detailAddress += " " + updateDetail;
                updateAddressObj.val(detailAddress);
            }

            if (detailAddress == editOldAddress && updateName == editOldName && updateMobile == editOldMobile) {
                addressModel.modal('hide');
                return;
            }
            if(updateDetail == ''){
                showError("详细地址不能为空", updateAddressErrorMsgObj);
                return;
            }else if (detailAddress.replace(/\s/g,'').length > 80) {
                //地址长度过长
                showError("地址长度过长", updateAddressErrorMsgObj);
                return;
            } else if (check_realname_format(updateName) != 1) {
                //用户姓名格式不正确
                showError("用户姓名格式不正确", updateAddressErrorMsgObj);
                return;
            } else if (check_mobile_format(updateMobile, false) != 1) {
                //手机号码格式不正确
                showError("手机号码格式不正确", updateAddressErrorMsgObj);
                return;
            }
            updateAddressErrorMsgObj.html('').hide();

            var data = {option_type: "update", index: addressIndex};

            if (detailAddress != editOldAddress) {
                data.address = detailAddress;
            }

            if (updateName != editOldAddress) {
                data.username = updateName;
            }

            if (updateMobile != editOldMobile) {
                data.mobile = updateMobile;
            }

            submitData(data, "http://www.insgeek.com/financial/addressOption/", 'tab-3');

        });

        //点击修改地址
        $(".edit_address").click(function () {
            updateAddressErrorMsgObj.html('').hide();
            var index = $(this).parent().siblings("input[name='key']");
            var manageCard = $(this).parents('.manage-card');
            var addressObj = manageCard.find(".address");
            var address = $.trim(addressObj.html());
            var oldaddressObj = manageCard.find("input[name='oldAddress']");
            var oldaddress = $.trim(oldaddressObj.val());
            var nameObj = manageCard.find(".username");
            var name = $.trim(nameObj.html());
            var mobileObj = manageCard.find(".mobile");
            var mobile = $.trim(mobileObj.html());
            var newStrArea = oldaddress.split(" ");
            if (newStrArea.length == 1) {
                updateDetailObj.val(oldaddress);
                newStrArea = [];
            } else if (newStrArea.length == 3) {
                updateDetailObj.val(newStrArea[2]);
            } else if (newStrArea.length == 4) {
                updateDetailObj.val(newStrArea[3]);
            }
            if (newStrArea[0] == null || newStrArea[0] == '' || typeof(newStrArea[0]) == "undefined") {
                newStrArea[0] = '北京';
            }
            if (newStrArea[1] == null || newStrArea[1] == '' || typeof(newStrArea[1]) == "undefined") {
                newStrArea[1] = '东城区';
            }
            selectCity($("#city_list_mode"), newStrArea[0], newStrArea[1], newStrArea[2]);
            updateNameObj.val(name);
            updateMobileObj.val(mobile);
            editOldName = name;
            editOldMobile = mobile;
            editOldAddress = oldaddress;
            addressIndex = $.trim(index.val());
        });

        /**********************修改发票抬头**************************/
        var updateReceiptTitleErrorMsg = $("#updateReceiptTitleErrorMsg");
        var updateReceiptTitleObj = $("#receiptTitleModel input[name='receipt_title']");
        var updateReceiptTitleFormObj = $("#updateReceiptTitleFormID");
        var receiptTitleModel = $("#receiptTitleModel");
        var receiptTitleIndex;
        var editOldReceiptTitle;
        $("#updateReceiptTitleBtn").click(function () {
            var updateReceiptTitle = $.trim(updateReceiptTitleObj.val().replace(/\(/g,'（').replace(/\)/g,'）'));
            if (updateReceiptTitle == editOldReceiptTitle) {
                receiptTitleModel.modal('hide');
                return;
            }
            if(updateReceiptTitle == ''){
                showError("发票抬头不能为空", updateReceiptTitleErrorMsg);
                return;
            }
            if(!receiptREG.test(updateReceiptTitle)){
                showError('请输入正确的发票抬头（2-32位中文、数字或字母）', updateReceiptTitleErrorMsg);
                return;
            }
            updateReceiptTitleErrorMsg.html('').hide();
            submitData({index:receiptTitleIndex,option_type:"update",receipt_title:updateReceiptTitle}, "http://www.insgeek.com/financial/receiptTitleOption/", 'tab-2');
        });
        //点击修改发票抬头
        $(".edit_receipt").click(function () {
            updateReceiptTitleErrorMsg.html('').hide();
            var index = $(this).siblings("input[name='key']");
            var oldReceiptTitle = $(this).prev().find('.company-name').html();
            updateReceiptTitleObj.val(oldReceiptTitle);
            editOldReceiptTitle = oldReceiptTitle;
            receiptTitleIndex = $.trim(index.val());
        });

        /**************修改银行账户信息**************/
        var bankModal = $("#bankModal");
        var updateBankErrorMsg = $("#updateBankErrorMsg");
        var updateAccountNameObj = $("#bankModal input[name='account_name']");
        var updateAccountNumberObj = $("#bankModal input[name='account_number']");
        var updateAccountBranchObj = $("#bankModal input[name='account_branch']");
        var updateBankNameObj = $("#bankModal input[name='bank_name']");
        var updateBankTypeObj = $("#bankModal select[name='bank_type']");

        var editBankIndex;
        var editOldBankType;
        var editOldAccountName;
        var editOldAccountNumber;
        var editOldAccountBranch;
        var editOldBankName;
        $("#updateBankBtn").click(function () {
            var bankName = $.trim(updateBankNameObj.val());
            var bankType = $.trim(updateBankTypeObj.val());
            var accountName = $.trim(updateAccountNameObj.val());
            var accountNumber = $.trim(updateAccountNumberObj.val());
            var accountBranch = $.trim(updateAccountBranchObj.val());


            var data = {option_type: "update", index: editBankIndex};

            if (bankType == '支付宝') {

                if(bankType == editOldBankType && accountName == editOldAccountName && accountNumber == editOldAccountNumber){
                    bankModal.modal('hide');
                    return;
                }


                if (check_realname_format(accountName) != 1) {
                    showError('支付宝账户姓名为空或格式不正确', updateBankErrorMsg);
                    return;
                }
                if (!(check_mobile_format(accountNumber, false) == 1 || check_email_format(accountNumber) == 1)) {
                    showError('您输入的支付宝账户为空或格式不正确', updateBankErrorMsg);
                    return;
                }

                data.bank_type = "支付宝";

                if (accountName != editOldAccountName) {
                    data.account_name = accountName;
                }

                if (accountNumber != editOldAccountNumber) {
                    data.account_number = accountNumber;
                }

            } else if (bankType == '银联借记卡') {
                if (bankType == editOldBankType && accountName == editOldAccountName && accountNumber == editOldAccountNumber && accountBranch == editOldAccountBranch && bankName == editOldBankName) {
                    bankModal.modal('hide');
                    return;
                }

                if (check_realname_format(accountName) != 1) {
                    showError('银行卡账户姓名为空或格式不正确', updateBankErrorMsg);
                    return;
                }
                if (!/^[\d]{12,19}$/.test(accountNumber)) {
                    showError('收款账户为空或格式不正确', updateBankErrorMsg);
                    return;
                }

                if (bankName.length > 32 || bankName == '') {
                    showError('银行名称为空或格式不正确（32个字符以内）', updateBankErrorMsg);
                    return;
                }

                if (accountBranch.length > 32 || accountBranch == '') {
                    showError('开户网点为空或格式不正确（32个字符以内）', updateBankErrorMsg);
                    return;
                }

                data.bank_type = "银联借记卡";

                if (accountName != editOldAccountName) {
                    data.account_name = accountName;
                }

                if (accountNumber != editOldAccountNumber) {
                    data.account_number = accountNumber;
                }

                if (bankName != editOldBankName) {
                    data.bank_name = bankName;
                }

                if (accountBranch != editOldAccountBranch) {
                    data.account_branch = accountBranch;
                }
            }

            updateBankErrorMsg.html("").hide();

            submitData(data, "http://www.insgeek.com/financial/bankOption/", '');
        });

        //点击修改银行账户信息
        $(".edit_bank").click(function () {
            updateBankErrorMsg.html("").hide();
            var index = $(this).siblings("input[name='key']");
//            editBankIndex.val($.trim(index.val()));
            var manageCard = $(this).parents(".manage-card");
            var oldBankTypeObj = manageCard.find("input[name='oldBankType']");
            var oldBankType = $.trim(oldBankTypeObj.val());
            var oldAccountNameObj = manageCard.find("input[name='oldAccountName']");
            var oldAccountName = $.trim(oldAccountNameObj.val());
            var oldAccounNumberObj = manageCard.find(".oldAccountNumber");
            var oldAccounNumber = $.trim(oldAccounNumberObj.html());
            var oldBankNameObj = manageCard.find("input[name='oldBankName']");
            var oldBankName = $.trim(oldBankNameObj.val());
            var oldAccountBranchObj = manageCard.find("input[name='oldAccountBranch']");
            var oldAccountBranch = $.trim(oldAccountBranchObj.val());

            updateAccountNameObj.val(oldAccountName);
            updateAccountNumberObj.val(oldAccounNumber);

            editBankIndex = $.trim(index.val());
            editOldAccountName = oldAccountName;
            editOldAccountNumber = oldAccounNumber;

            if (oldBankType == 1) {
                updateBankTypeObj.val('支付宝');
                editOldBankType = '支付宝';
                updateBankNameObj.val('');
                updateAccountBranchObj.val('');
                editOldBankName = '';
                editOldAccountBranch = '';
            } else {
                updateBankTypeObj.val('银联借记卡');
                updateBankNameObj.val(oldBankName);
                updateAccountBranchObj.val(oldAccountBranch);
                editOldBankType = '银联借记卡';
                editOldBankName = oldBankName;
                editOldAccountBranch = oldAccountBranch;
            }
            updateBankTypeObj.change();
        });


        function submitData(data, url, showTab) {
            callAjax(data, 0, function (response) {
                if (response.code == 1) {
                    showConfrimWindow('', response.msg, 'success', false, true,function (isConfrim) {
                        location.href = "http://www.insgeek.com/financial/manageInfo/" + showTab;
                    });
                } else {
                    showConfrimWindow('', response.msg, 'error', false, true,function (isConfrim) {
//                        if (isConfrim) {
//                            location.reload();
//                        }
                    });
                }
            }, url);
        }

        function showError(msg, obj) {
            obj.html('<i class="fa fa-times-circle"></i>' + msg).show();
        }

        /**
         *
         * @param title 对话框标题
         * @param msg   对话框内容
         * @param type  对话框类型
         * @param showCancelButton  是否显示取消按钮
         * @param isCloseConfrim    是否可关闭窗口
         * @param callback  回调函数
         */
        function showConfrimWindow(title, msg, type, showCancelButton, isCloseConfrim, callback) {
            swal({
                title: title,
                text: msg,
                type: type,
                showCancelButton: showCancelButton,
                confirmButtonColor: "#DD6B55",
                confirmButtonText: "确定",
                cancelButtonText: "取消",
                closeOnConfirm: isCloseConfrim
            }, callback);
        }

    });

    </script>
{/block}