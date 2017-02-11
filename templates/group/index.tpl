{extends file="template/front.tpl"}

{block name="title"}用户首页{/block}

{block name="css"}
    <link href="{#static_path#}/css/group/proshow.css" rel="stylesheet">
{/block}

{block name="container"}
    <div class="wrapper wrapper-content">
        <div class="container">
            <div class="row">

                {include file="template/sidebar.tpl"}

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
                                    <img alt="image" class="img-circle" src="{#static_path#}/images/group/group.png">
                                </div>
                                <small>{$data.enterprise_name}</small>
                            </div>
                        </div>

                        <div class="col-xs-3">
                            <div style="margin-left: 20px;border-right: 1px solid #e7eaec">
                                <p><a href="group/insuranceList"><small><i class="fa fa-file-text"></i> 共 {$data.insurance_num} 种保障方案</small></a></p>
                                <p><a href="group/userList/wait/1"><small><i class="fa fa-plus-square"></i> 共 {$data.wait_people_num} 人等待审核</small></a></p>
                                <p><a href="group/userList"><small><i class="fa fa-umbrella"></i> 共 {$data.insurance_people_num} 人在保</small></a></p>
                            </div>
                        </div>

                        <div class="col-xs-5">
                            <div style="margin-left: 0px">
                                <p class="tooltip-demo">
                                    <small>
                                        <i class="fa fa-external-link-square"></i>当前应缴：<span class="text-danger">{$data.should_pay}</span>元
                                    </small>
                                </p>
                                <p class="tooltip-demo">
                                    <small>
                                        <i class="fa fa-history"></i>未出账单：<span class="text-danger">{$data.wait_pay}</span>
                                        元 <button type="button" class="btn btn-xs btn-primary" data-toggle="tooltip" data-placement="bottom" title="" data-original-title="计费周期：2017-01-24 至 2017-02-23。计费中的金额可能会随着您的增、减人操作而相应变化，最终账单金额以账单日的结算金额为准。">计费中</button>
                                    </small>
                                </p>
                                <p><small><i class="fa fa-info-circle"></i><a href="help/group_help.html" target="_self">企业用户操作帮助</a></small></p>
                            </div>
                        </div>
                    </div>

                    <!-- list -->
                    {foreach from=$data.insurance_list item=insuranceList key=key}
                        <div class="ibox float-e-margins">
                            <div class="ibox-title">
                                 <span>
                                    {$insuranceList.product_name}
                                     <small>此方案目前共 {$insuranceList.people_num} 人，保障日期 <notemtpy>{$insuranceList.begin_date}</notemtpy> 至 <notemtpy>{$insuranceList.end_date}</notemtpy></small>
                                </span>

                                <div class="ibox-tools"><a class="collapse-link"><i class="fa updown fa-chevron-up"></i></a></div>
                            </div>

                            <div class="ibox-content" style="display: block;">
                                <div class="btn-group tooltip-demo">
                                    <button class="btn btn-white del_user_all" type="button">批量删减</button>
                                    <button class="btn btn-white add_user" type="button" data-toggle="modal" data-target="#add_user" data-is-medicare="0">增加成员</button>
                                    <button class="btn btn-white two_code" type="button" data-toggle="modal" data-target="#two_code">加人推送</button>
                                    <!--<button class="btn btn-white" type="button" onclick="location.href='flow_batch.html'">批量增加</button>-->
                                </div>
                                <input type="hidden" name="eid" value="2955">
                                <div class="m-t-35">
                                    <div id="DataTables_Table_0_wrapper" class="dataTables_wrapper form-inline" role="grid">

                                        <div class="row"><div class="col-sm-6"><div class="dataTables_length" id="DataTables_Table_0_length"><label><select name="DataTables_Table_0_length" aria-controls="DataTables_Table_0" class="form-control input-sm"><option value="10">10</option><option value="20">20</option><option value="50">50</option><option value="100">100</option><option value="200">200</option><option value="500">500</option></select> 条记录显示</label></div></div><div class="col-sm-6"><div id="DataTables_Table_0_filter" class="dataTables_filter"><label>查找：<input type="search" class="form-control input-sm" aria-controls="DataTables_Table_0"></label></div></div></div>

                                        <table class="table table-hover dataTable no-footer" id="DataTables_Table_0" aria-describedby="DataTables_Table_0_info">
                                            <thead>
                                            <tr role="row"><th rowspan="1" colspan="1" style="width: 24px;">
                                                    <input type="checkbox" class="checkboxAll"></th>
                                                <th rowspan="1" colspan="1" style="width: 110px;">姓名</th><th rowspan="1" colspan="1" style="width: 195px;">证件号码</th><th rowspan="1" colspan="1" style="width: 121px;">手机号码</th><th class="text-center" rowspan="1" colspan="1" style="width: 102px;">保障开始</th><th class="text-center" rowspan="1" colspan="1" style="width: 102px;">保障结束</th><th class="text-center" style="width: 50px;" rowspan="1" colspan="1">状态</th><th rowspan="1" colspan="1" style="width: 121px;">操作</th></tr>
                                            </thead>
                                            <tbody id="tbody_2955" starttime="1485187200">


                                            <tr id="77104" class="odd">
                                                <td class=" ">
                                                    <input type="checkbox" name="idArr[]" value="77104" class="form-control">
                                                </td>
                                                <td class=" ">
                                                    <div class="table-h table-name" style="width: 70px" title="啦啦"> 啦啦</div>
                                                </td>
                                                <td class=" "><div class="table-h"> 522634197506235758</div></td>
                                                <td class=" ">
                                                    <div class="table-h text-left"><i class="fa fa-exclamation-triangle text-navy editor_user" style="cursor: pointer" data-toggle="modal" data-medicare-type="0" data-target="#edit_user" data-medicare-address="" data-is-medicare="0" title="手机号为重要信息，为空可能影响成员的保障方案，请点击填写"></i></div>
                                                </td>
                                                <td class=" "><div class="table-h text-center">2017-03-24</div></td>
                                                <td class=" "><div class="table-h text-center">2018-01-23</div></td>
                                                <td class=" ">
                                                    <div class="table-h text-center">
                                                        <i class="fa fa-check text-navy" title="保障中"></i>                            </div>
                                                </td>
                                                <td class=" ">
                                                    <div class="btn-group">
                                                        <button class="btn-white btn btn-bitbucket editor_user" data-toggle="modal" data-medicare-type="0" data-target="#edit_user" title="编辑" data-medicare-address="" data-is-medicare="0"><i class="fa fa-edit text-navy"></i></button>                                <button class="btn-white btn btn-bitbucket del_user" title="删减"><i class="fa fa-trash-o text-navy"></i></button>
                                                    </div>
                                                </td>
                                            </tr><tr id="75832" class="even">
                                                <td class=" ">
                                                    <input type="checkbox" name="idArr[]" value="75832" class="form-control">
                                                </td>
                                                <td class=" ">
                                                    <div class="table-h table-name" style="width: 70px" title="飞飞飞"> 飞飞飞</div>
                                                </td>
                                                <td class=" "><div class="table-h"> 350206197710229143</div></td>
                                                <td class=" ">
                                                    <div class="table-h text-left"><i class="fa fa-exclamation-triangle text-navy editor_user" style="cursor: pointer" data-toggle="modal" data-medicare-type="0" data-target="#edit_user" data-medicare-address="" data-is-medicare="0" title="手机号为重要信息，为空可能影响成员的保障方案，请点击填写"></i></div>
                                                </td>
                                                <td class=" "><div class="table-h text-center">2017-02-24</div></td>
                                                <td class=" "><div class="table-h text-center">2018-01-23</div></td>
                                                <td class=" ">
                                                    <div class="table-h text-center">
                                                        <i class="fa fa-check text-navy" title="保障中"></i>                            </div>
                                                </td>
                                                <td class=" ">
                                                    <div class="btn-group">
                                                        <button class="btn-white btn btn-bitbucket editor_user" data-toggle="modal" data-medicare-type="0" data-target="#edit_user" title="编辑" data-medicare-address="" data-is-medicare="0"><i class="fa fa-edit text-navy"></i></button>                                <button class="btn-white btn btn-bitbucket del_user" title="删减"><i class="fa fa-trash-o text-navy"></i></button>
                                                    </div>
                                                </td>
                                            </tr><tr id="75523" class="odd">
                                                <td class=" ">
                                                    <input type="checkbox" name="idArr[]" value="75523" class="form-control">
                                                </td>
                                                <td class=" ">
                                                    <div class="table-h table-name" style="width: 70px" title="王女"> 王女</div>
                                                </td>
                                                <td class=" "><div class="table-h"> 130106198711150603</div></td>
                                                <td class=" ">
                                                    <div class="table-h text-left">18600182395</div>
                                                </td>
                                                <td class=" "><div class="table-h text-center">2017-01-25</div></td>
                                                <td class=" "><div class="table-h text-center">2018-01-23</div></td>
                                                <td class=" ">
                                                    <div class="table-h text-center">
                                                        <i class="fa fa-check text-navy" title="保障中"></i>                            </div>
                                                </td>
                                                <td class=" ">
                                                    <div class="btn-group">
                                                        <button class="btn-white btn btn-bitbucket editor_user" data-toggle="modal" data-medicare-type="0" data-target="#edit_user" title="编辑" data-medicare-address="" data-is-medicare="0"><i class="fa fa-edit text-navy"></i></button>                                <button class="btn-white btn btn-bitbucket del_user" title="删减"><i class="fa fa-trash-o text-navy"></i></button>
                                                    </div>
                                                </td>
                                            </tr></tbody>
                                        </table>

                                        <table class="table table-hover dataTable no-footer" id="DataTables_Table_1" aria-describedby="DataTables_Table_1_info">
                                            <thead>
                                            <tr role="row"><th rowspan="1" colspan="1" style="width: 49px;"><input type="checkbox" class="checkboxAll"></th><th rowspan="1" colspan="1" style="width: 79px;">姓名</th><th rowspan="1" colspan="1" style="width: 141px;">证件号码</th><th rowspan="1" colspan="1" style="width: 141px;">手机号码</th><th class="text-center" rowspan="1" colspan="1" style="width: 142px;">保障开始</th><th class="text-center" rowspan="1" colspan="1" style="width: 142px;">保障结束</th><th class="text-center" style="width: 50px;" rowspan="1" colspan="1">状态</th><th rowspan="1" colspan="1" style="width: 81px;">操作</th></tr>
                                            </thead>
                                            <tbody id="tbody_2958" starttime="1485187200">


                                            <tr class="odd"><td valign="top" colspan="8" class="dataTables_empty">没有数据</td></tr></tbody>
                                        </table>

                                        <div class="row"><div class="col-sm-6"><div class="dataTables_info" id="DataTables_Table_0_info" role="alert" aria-live="polite" aria-relevant="all">显示 1 到 3 项，共 3 项</div></div><div class="col-sm-6"><div class="dataTables_paginate paging_simple_numbers" id="DataTables_Table_0_paginate"><ul class="pagination"><li class="paginate_button previous disabled" aria-controls="DataTables_Table_0" tabindex="0" id="DataTables_Table_0_previous"><a href="#">上一页</a></li><li class="paginate_button active" aria-controls="DataTables_Table_0" tabindex="0"><a href="#">1</a></li><li class="paginate_button next disabled" aria-controls="DataTables_Table_0" tabindex="0" id="DataTables_Table_0_next"><a href="#">下一页</a></li></ul></div></div></div></div>
                                </div>
                                <div class="text-center">
                                    <div class="btn-group">
                                    </div>
                                </div>
                            </div>
                        </div>
                    {/foreach}
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

                <div class="modal inmodal" id="add_user" tabindex="-1" role="dialog" aria-hidden="true" style="font-size: 14px;">
                    <div class="modal-dialog" style="width: 700px">
                        <div class="modal-content animated fadeIn">
                            <div class="modal-header">
                                <button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">&times;</span><span
                                            class="sr-only">Close</span>
                                </button>
                                <h3>增加成员</h3>
                                <p><span id="insurance_name">为了方便您以后的操作，请填写该成员的真实信息</span></p>
                            </div>
                            <div class="modal-body">
                                <form class="form-horizontal" id="add_user_form" action="group/regdo" method="post">
                                    <div class="form-group">
                                        <label class="col-xs-4 control-label font-noraml">选择方案：</label>

                                        <div class="col-xs-7">
                                            <select name="eid" class="form-control">
                                                <option value="2955">【极客保 - 意外型】测试</option><option value="2958">【极客保 - 重疾型】测试</option><option value="2960">【极客保 - 医疗型】测试</option><option value="2964">【极客保 - 基础版】测试</option>                            </select>
                                        </div>
                                    </div>
                                    <!--新增连带被保险人功能开始-->
                                    <div class="form-group">
                                        <label class="col-xs-4 control-label font-noraml"><span
                                                    style="color: red">*</span>被保险人姓名：</label>

                                        <div class="col-xs-7">
                                            <div class="input-group" style="width: 100%">
                                                <select class="form-control input-group-addon" name="relType" id="relTypeId"
                                                        style="width: 30%">
                                                    <option value="1">本人</option>
                                                    <option value="2">子女</option>
                                                </select>
                                                <input type="text" name="realname" placeholder="被保险人的真实姓名"
                                                       class="form-control pull-left" style="width: 70%">
                                            </div>
                                        </div>
                                    </div>
                                    <div class="form-group discern_0">
                                        <label class="col-xs-4 control-label font-noraml"><span
                                                    style="color: red">*</span>被保险人证件：</label>

                                        <div class="col-xs-7">
                                            <div class="input-group" style="width: 100%">
                                                <select class="form-control input-group-addon pull-left" name="certType" id="certTypeId"
                                                        style="width: 30%">
                                                    <option value="0">身份证</option>
                                                </select>
                                                <input type="text" name="id_number" placeholder="被保险人证件号码"
                                                       class="form-control pull-left" style="width: 70%">
                                            </div>
                                        </div>
                                    </div>
                                    <div class="form-group" style="display: none" id="relBirthDiv">
                                        <label class="col-xs-4 control-label font-noraml"><span
                                                    style="color: red">*</span>被保险人信息：</label>
                                        <div class="col-xs-3" style="padding-right: 0px;">
                                            <div class="base_attr pull-left">
                                                <span href="javascript:;" class="add_base_attr base_attr_on"  data-value="1">男<i></i></span>
                                                <span href="javascript:;" class="add_base_attr"  data-value="2">女<i></i></span>
                                                <input type="hidden" name="relSex" id="relSexId" />
                                            </div>
                                        </div>
                                        <!--<label class="col-xs-1 control-label font-noraml"></label>-->
                                        <div class="col-xs-4" id="relBirthParentId" style="padding-left: 46px">
                                            <div class="input-group date plan_date" data-date="2017-02-08"
                                                 data-date-format="yyyy-mm-dd">
                                                <span class="input-group-addon"><i class="fa fa-calendar"></i></span>
                                                <input type="text" id="relBirthDayId" name="relBirthDay" class="form-control" value=""
                                                       readonly="readonly" />
                                            </div>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label class="col-xs-4 control-label font-noraml">被保险人手机：</label>

                                        <div class="col-xs-7">
                                            <input aria-required="true" class="form-control" name="mobile"
                                                   placeholder="手机号为重要信息，空号码可能影响成员的保障" required="" type="text"
                                                   onkeyup="value=value.replace(/[\D]/g,'')"/>
                                        </div>
                                    </div>
                                    <div class="form-group" style="display: none" id="mainCertCodeDiv">
                                        <label class="col-xs-4 control-label font-noraml"><span
                                                    style="color: red">*</span>主被保险人身份证：</label>

                                        <div class="col-xs-7">
                                            <input type="text" placeholder="18位身份证号码 （必须是在保成员）" class="form-control" name='mainCertCode'
                                                   id="mainCertCode">
                                        </div>
                                    </div>

                                    <!--新增连带被保险人功能结束-->
                                    <div class="form-group health_insurance" style="display: none">
                                        <label class="col-xs-4 control-label font-noraml"><span
                                                    style="color: red">*</span>被保险人医保信息：</label>
                                        <div class="col-xs-7">
                                            <div class="input-group" style="width: 100%">
                                                <select class="form-control input-group-addon" name="medicare_type" style="width: 44.8%;">
                                                    <option value="1">城镇职工</option>
                                                    <option value="2">城镇居民</option>
                                                    <option value="3">新型农村合作医疗</option>
                                                    <option value="4">均未参加</option>
                                                </select>

                                                <input type="text" placeholder="点击选择医保所在地" data-prefix="add" class="form-control pull-left health_insurance_address" style="width: 55.2%;" readonly/>
                                                {literal}
                                                <script type="text/javascript">
                                                    $('#add_user .health_insurance_address').click(function (e) {
                                                        SelCity(this, e);
                                                    });
                                                </script>
                                                {/literal}
                                            </div>
                                        </div>
                                    </div>
                                    <!--新增连带被保险人功能结束-->
                                    <div class="form-group">
                                        <label class="col-xs-4 control-label font-noraml"><span style="color: red">*</span>保障期间：</label>

                                        <div class="col-xs-7">
                                                        <span class="input-group date plan_date startTimeBox pull-left" data-date="2017-02-08"
                                                              data-date-format="yyyy-mm-dd" style="width: 45%">
                                                            <span class="input-group-addon"><i class="fa fa-calendar"></i></span><input type="text"
                                                                                                                                        name="starttime"
                                                                                                                                        class="form-control"
                                                                                                                                        value="2017-02-08"
                                                                                                                                        readonly="readonly"/>
                                                        </span>
                                                        <span class="input-group-addon pull-left"
                                                              style="width: 10%;height: 34px;border-left: 0;border-right: 0;padding:0;line-height: 34px">至</span>
                                                        <span class="input-group date plan_date endTimeBox pull-left" data-date="2017-02-08"
                                                              data-date-format="yyyy-mm-dd" style="width: 45%">
                                                            <span class="input-group-addon"><i class="fa fa-calendar"></i></span><input type="text"
                                                                                                                                        name="endtime"
                                                                                                                                        class="form-control"
                                                                                                                                        value="2017-02-08"
                                                                                                                                        readonly="readonly"/>
                                                        </span>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <div class="col-xs-7 col-xs-offset-4">
                                            <button class="btn btn-primary btn_submit" type="button">确认提交</button>
                                            <input type="hidden" name="add_type" value="2"/>
                                            <input type="hidden" name="status" value="1"/>
                                            <input type="hidden" name="new" value="1"/>
                                        </div>
                                    </div>
                                    <div class="msg" style="text-align:center;color:#ff3300;"></div>
                                </form>
                            </div>
                            <div class="modal-footer">
                                <button type="button" class="btn btn-white" data-dismiss="modal">关闭</button>
                            </div>
                        </div>
                    </div>
                </div>

                <script src="{#static_path#}/js/address/cityJson.js"></script>
                <script src="{#static_path#}/js/address/citySet.js"></script>
                <script src="{#static_path#}/js/address/Popt.js"></script>
                <script src="{#static_path#}/js/address/address_mapping.js"></script>
                {literal}
                <script language="javascript">
                $(document).ready(function () {
                    const MALE = 1;
                    const FEMALE = 2;

                    var sexSwitchToggle = true;

                    var relType_AddObj = $('#add_user_form #relTypeId');
                    var certType_AddObj = $('#add_user_form #certTypeId');
                    var mainCertCodeDivObj = $('#add_user_form #mainCertCodeDiv');
                    var relBirthDivObj = $('#add_user_form #relBirthDiv');
                    var relBirthDayParentObj = $('#add_user_form #relBirthParentId');
                    var relSexObj = $('#add_user_form #relSexId');
                    //        var relSexHiddenObj = $('#add_user_form #relSexHiddenId');
                    var relBirthDayObj = $('#add_user_form #relBirthDayId');
                    var mainCertCodeObj = $('#add_user_form #mainCertCode');
                    var id_AddObj = $('#add_user_form input[name="id_number"]');
                    var $sexTypeObj = $('#add_user_form .add_base_attr');

                    $sexTypeObj.click(function () {
                        if (sexSwitchToggle && !$(this).hasClass('base_attr_on')) {
                            var v = $(this).data('value');
                            if (v == MALE) {   // 男
                                relSexObj.val(v);
                            } else {
                                relSexObj.val(v)
                            }
                            $sexTypeObj.toggleClass('active base_attr_on');
                        }
                    });


                    /*--health_insurance_address--*/
                    var healthInsuranceObj = $('.health_insurance');

                    var isMedicareByEid = JSON.parse('{"2955":"0","2958":"0","2960":"1","2964":"1"}' || []);
                    $("#add_user select[name='eid']").on('change', function () {
                        var v = isMedicareByEid[$(this).val()];
                        toggle.is_medicare = v;
                        isShowHealthIns();
                        setTimeRange($("#add_user"));
                    });


                    //设置不同方案的时间范围
                    function setTimeRange(obj) {
                        var eid = obj.find("select[name='eid']").val();
                        var startTimeBox = obj.find(".startTimeBox");
                        var endTimeBox = obj.find(".endTimeBox");
                        if (eid) {
                            callAjax({"eid": eid}, 0, function (response) {
                                if (response) {
                                    setDateRange(startTimeBox, response.start_range_startDate, response.start_range_endDate, response.start_default);
                                    setDateRange(endTimeBox, response.end_range_startDate, response.end_range_endDate, response.end_default);
                                    setRelSelect(relType_AddObj, response.relativeArr);
                                }
                            }, "group/get_insurance_ajax/");
                        }
                    }

                    //设定日期的选择范围
                    function setDateRange(obj, startDate, endDate, defaultDate) {
                        obj.datepicker({
                            format: 'yyyy-mm-dd',
                            keyboardNavigation: false,
                            forceParse: false,
                            autoclose: true,
                            // todayBtn: 'linked',
                            startDate: startDate,
                            endDate: endDate
                        });
                        obj.datepicker("setStartDate", startDate);
                        obj.datepicker("setEndDate", endDate);
                        if (defaultDate) {
                            obj.datepicker("setDate", defaultDate);
                        }
                    }

                    function setRelSelect(relObj, relArr) {
                        relType_AddObj.html('');
                        for (var x in relArr) {
                            relType_AddObj.append("<option value=" + x + ">" + relArr[x] + "</option>");
                        }
                        var type = relType_AddObj.val();
                        if (type == 1) {
                            //本人
                            mainCertCodeDivObj.hide();
                            certType_AddObj.html('<option value="0">身份证</option>');
                        } else if (type == 2) {
                            //连带
                            mainCertCodeDivObj.show();
                            certType_AddObj.html('<option value="0">身份证</option><option value="1">出生证</option>');
                        }
                        toggle.rel_type = type;
                        isShowHealthIns();
                        showBirthDiv(0);
                    }

                    var $medicareTypeObj = $('#add_user select[name=medicare_type]');
                    id_AddObj.on('blur', function () {
                        var relType = relType_AddObj.val();
                        var certType = certType_AddObj.val();

                        if (toggle.is_medicare == 1 && toggle.rel_type == 1) {
                            var a = getHealthInsInfo($.trim(this.value));
                            if (a.code > 0 && a.msg) {
                                setDefault($addInsAddrObj, mapping[a.msg.medicare_address].prov.name + Iput.confg.separator + mapping[a.msg.medicare_address].city.name);
                                $medicareTypeObj.val(a.msg.medicare_type).change();
                            }
                            //                else {
                            //                    // 重置医保信息
                            //                    $medicareTypeObj.val(0).change();
                            //                    $addInsAddrObj.val('');
                            //                    destroy('add');
                            //                }
                        }

                        if (relType != 1 && certType == 1) {
                            setBirthDiv($(this).val(), relBirthDayObj);
                        }
                    });


                    function setBirthDiv(val, obj) {
                        var birResult = checkBirthCertExist(val, root);
                        if (birResult != null) {
                            var birStr = birResult.birth_year + '-' + birResult.birth_month + '-' + birResult.birth_day;
                            var sex = birResult.sex;
                            relSexObj.val(sex);
                            sexSwitchToggle = false;
                            relBirthDayObj.val(birStr);
                            if (sex == MALE) {
                                $sexTypeObj.eq(MALE - 1).removeAttr('style').addClass('active base_attr_on');
                                $sexTypeObj.eq(FEMALE - 1).removeAttr('style').removeClass('active base_attr_on').css('color', '#ccc');
                            } else {
                                $sexTypeObj.eq(MALE - 1).removeAttr('style').removeClass('active base_attr_on').css('color', '#ccc');
                                $sexTypeObj.eq(FEMALE - 1).removeAttr('style').addClass('active base_attr_on');
                            }
                            setDatePicker(relBirthDayParentObj, birStr, false);
                        } else {
                            setDatePicker(relBirthDayParentObj, relBirthDayObj.val(), true);
                            sexSwitchToggle = true;
                            $sexTypeObj.eq(MALE - 1).removeAttr('style');
                            $sexTypeObj.eq(FEMALE - 1).removeAttr('style');
                        }
                    }


                    function setDatePicker(obj, birthStr, enable) {
                        if (enable) {
                            obj.html('<div class="input-group date plan_date" data-date="" data-date-format="yyyy-mm-dd"><span class="input-group-addon"><i class="fa fa-calendar"></i></span> <input type="text" id="relBirthDayId" name="relBirthDay" class="form-control" value="' + birthStr + '" readonly="readonly"/></div>');
                            $('.date').datepicker({
                                format: 'yyyy-mm-dd',
                                keyboardNavigation: false,
                                forceParse: false,
                                autoclose: true
                            });
                            relBirthDayObj = $('#add_user_form #relBirthDayId');
                        } else {
                            obj.html('<div class="input-group" data-date="" data-date-format="yyyy-mm-dd"><span class="input-group-addon"><i class="fa fa-calendar"></i></span> <input type="text" id="relBirthDayId" name="relBirthDay" class="form-control" value="' + birthStr + '" readonly="readonly"/></div>');
                            relBirthDayObj = $('#add_user_form #relBirthDayId');
                        }
                    }

                    certType_AddObj.change(function () {
                        var relType = relType_AddObj.val();
                        var certType = $(this).val();
                        if (relType != 1 && certType == 1) {
                            setBirthDiv($.trim(id_AddObj.val()), relBirthDayObj);
                            relBirthDayObj.prop('placeholder', '出生日期');
                        }
                    });

                    function isShowHealthIns() {
                        if (toggle.rel_type == 1 && toggle.is_medicare == 1) {
                            healthInsuranceObj.show();
                        } else {
                            healthInsuranceObj.hide();
                        }
                    }


                    relType_AddObj.change(function () {
                        var type = $(this).val();
                        if (type == 1) {
                            //本人
                            mainCertCodeDivObj.hide();
                            certType_AddObj.html('<option value="0">身份证</option>');
                        } else if (type == 2) {
                            //连带
                            mainCertCodeDivObj.show();
                            certType_AddObj.html('<option value="0">身份证</option><option value="1">出生证</option>');
                        }
                        showBirthDiv(0);


                        toggle.rel_type = type;
                        isShowHealthIns();
                    });
                    certType_AddObj.change(function () {
                        //只有在relType==2时才变动
                        if (relType_AddObj.val() == 2) {
                            var certType = $(this).val();
                            showBirthDiv(certType);
                        }
                    });
                    //        relSexObj.change(function () {
                    //            relSexHiddenObj.val($(this).val());
                    //        });
                    function showBirthDiv(certType) {
                        if (certType == 0) {
                            //身份证
                            relBirthDivObj.hide();
                        } else if (certType == 1) {
                            //出生证
                            relBirthDivObj.show();
                        }
                    }

                    function getHealthInsInfo(id_number) {
                        var d = null;
                        callAjax({id_number: id_number}, PRD, function (response) {
                            d = response;
                        }, '/Home/Group/getMedicareInfo/');

                        return d;
                    }


                    var $addInsAddrObj = $('#add_user .health_insurance_address');

                    $(document).on("click", "#add_user .btn_submit", function () {
                        var eid = $("#add_user").find("select[name='eid']").val();
                        var group_id = $.trim("61249");
                        var msgObj = $("#add_user .msg");
                        msgObj.html('');

                        /*检测真实姓名*/
                        var realnameObj = $("#add_user input[name='realname']");
                        var realname = $.trim(realnameObj.val());

                        var id_numberObj = $("#add_user input[name='id_number']");
                        var id_number = $.trim(id_numberObj.val());
                        var starttimeObj = $("#add_user input[name='starttime']");
                        var starttime = $.trim(starttimeObj.val());
                        var starttimeReg = /^201[0-9]\-[0-9]{2}\-[0-9]{2}$/;

                        if (check_realname_format(realname) != 1) {
                            showError(realnameObj, msgObj, '真实姓名只能是汉字', true);
                            return false;
                        }
                        else {
                            if (check_realname_match_db_ajax(realname, id_number, root)) {
                                showError(realnameObj, msgObj, '', false);
                            }
                            else {
                                showError(realnameObj, msgObj, '真实姓名与预留真实姓名不符！', true);
                                return false;
                            }
                        }
                        /*检测身份证*/
                        var relType = relType_AddObj.val();
                        var certType = certType_AddObj.val();
                        if ((relType == 1 && !check_id_number_format(id_number)) || (relType != 1 && certType == 0 && !check_id_number_format(id_number)) || (relType != 1 && certType == 1 && !checkBirthCertFormat(id_number))) {
                            showError(id_numberObj, msgObj, '证件号码有误', true);
                            return false;
                        }
                        else {
                            showError(id_numberObj, msgObj, '', false);
                        }


                        /*检测手机号码*/
                        var mobileObj = $("#add_user input[name='mobile']");
                        var mobile = $.trim(mobileObj.val());
                        if (check_mobile_format(mobile, true) != 1) {
                            showError(mobileObj, msgObj, '手机号码错误', true);
                            return false;
                        }
                        else {
                            showError(id_numberObj, msgObj, '', false);
                        }
                        /*连带新增*/
                        var relBirthDay = '';
                        var mainCertCode = null;
                        //如果有连带被保险人的相关信息，进行检测
                        if (relType != 1) {
                            mainCertCode = $.trim(mainCertCodeObj.val());
                            /*检测主被保险人的证件格式*/
                            if (!check_id_number_format(mainCertCode)) {
                                showError(mainCertCodeObj, msgObj, '主被保险人的身份证格式错误！', true);
                                return false;
                            } else {
                                relBirthDay = relBirthDayObj.val();
                                showError(mainCertCodeObj, msgObj, '', false);
                            }
                        }
                        var $addInsAddrVObj = $('#add_city');

                        if (toggle.is_medicare == 1 && toggle.rel_type == 1 && !checkInsuranceAddress($.trim($addInsAddrObj.val()), $.trim($addInsAddrVObj.val()))) {
                            return showError($addInsAddrObj, msgObj, '医保地址选择有误！', true);
                        } else {
                            showError($addInsAddrObj, msgObj, '', false);
                        }

                        var insuranceTimeArr = get_insurance_time(eid);

                        /*检测开始时间*/
                        var starttimeObj = $("#add_user input[name='starttime']");
                        var starttime = $.trim(starttimeObj.val());
                        var starttimeReg = /^201[0-9]\-[0-9]{2}\-[0-9]{2}$/;
                        if (!starttimeReg.test(starttime)) {
                            showError(starttimeObj, msgObj, '开始日期格式错误', true);
                            return false;
                        }
                        else if (datetime_to_unix(starttime) < insuranceTimeArr['starttime']) {
                            showError(starttimeObj, msgObj, '开始日期不能早于方案开始日期', true);
                            return false;
                        }
                        else {
                            showError(starttimeObj, msgObj, '', false);
                        }
                        //alert(starttime);exit;

                        /*检测结束时间*/
                        var endtimeObj = $("#add_user input[name='endtime']");
                        var endtime = $.trim(endtimeObj.val());
                        var endtimeReg = /^201[0-9]\-[0-9]{2}\-[0-9]{2}$/;
                        if (!endtimeReg.test(endtime)) {
                            endtimeObj.css({"border-color": "red"});
                            return false;
                        }
                        else if (datetime_to_unix(endtime) > insuranceTimeArr['endtime']) {
                            showError(endtimeObj, msgObj, '结束日期不能晚于方案结束日期', true);
                            return false;
                        }
                        else {
                            showError(endtimeObj, msgObj, '', false);
                        }


                        var data = $("#add_user_form").serialize();//alert(data);
                        $(this).prop('disabled', true);
                        callAjax(data, 0, function (response) {
                            if (response.code != 0) {
                                swal("错误！", response.msg, "error");
                                $(this).prop('disabled', false);
                            } else {
                                //alert(response);exit;
                                loading('show');
                                $("#add_user .modal-footer button").click();
                                clear_add_user_form(true);
                                location.href = '/Home/Group/index';
                            }

                        }.bind(this), "group/usersaveajax/");
                    });
                    /**
                     *
                     * @param status 'show' or 'hide'
                     */
                    function loading (status) {
                        eval("$('._loading')." + status + '()'); // 采用eval动态执行显示和隐藏，目的是省去if else的判断问题
                    }

                    function checkInsuranceAddress(n, c) {
                        var na = n.split(Iput.confg.separator);
                        var $f = true;
                        if (na.length < 2 || !/\d{6}/.test(c)) {
                            $f = false;
                        }

                        return $f;
                    }


                    function clear_add_user_form(flag) {
                        var add_realNameObj = $("#add_user input[name='realname']");
                        var add_id_numberObj = $("#add_user input[name='id_number']");
                        var add_mobileObj = $("#add_user input[name='mobile']");
                        var add_startTimeObj = $("#add_user input[name='starttime']");
                        if (flag) {
                            add_realNameObj.val('');
                            add_id_numberObj.val('');
                            add_mobileObj.val('');
                            add_startTimeObj.val(new Date());
                        }
                    }

                    function showError(inputObj, msgObj, msg, show) {
                        if (show) {
                            inputObj.css({"border-color": "red"});
                            msgObj.html(msg);
                        }
                        else {
                            inputObj.css({"border-color": "#eeeeee"});
                            msgObj.html('');
                        }
                    }


                    //获得产品方案时间
                    function get_insurance_time(eid) {
                        var Arr = Array();
                        callAjax({"eid": eid}, 0, function (response) {
                            Arr['starttime'] = response.starttime;
                            Arr['endtime'] = response.endtime;

                        }, "group/get_insurance_time_ajax/");
                        return Arr;
                    }

                    //日期转为为时间戳
                    function datetime_to_unix(datetime) {
                        var tmp_datetime = datetime.replace(/:/g, '-');
                        tmp_datetime = tmp_datetime.replace(/ /g, '-');
                        var arr = tmp_datetime.split("-");
                        var now = new Date(Date.UTC(arr[0], arr[1] - 1, arr[2], arr[3] - 8, arr[4], arr[5]));
                        return parseInt(now.getTime() / 1000);
                    }

                    var toggle = {rel_type: 0, is_medicare: 0};
                    //添加人员
                    $(document).on("click", ".btn-group .add_user", function () {

                        $('#add_user').modal('hide');
                        var eid = parseInt($(this).parent().siblings("input[name='eid']").val());

                        var add_user = $("#add_user");
                        var startTimeBox = add_user.find(".startTimeBox");
                        var endTimeBox = add_user.find(".endTimeBox");

                        //$("#add_user").find("select[name='eid']").val(eid);

                        if (eid) {
                            callAjax({"eid": eid}, 0, function (response) {
                                if (response) {
                                    add_user.find("select[name='eid']").val(response.eid);
                                    var group_id = response.group_id;
                                    if (checkMaxPersonNumber(eid, group_id)) {
                                        swal({
                                            title: '错误',
                                            text: '很抱歉，当前方案的在保人数已达到上限，不能添加更多成员。如您需要向此方案内增加更多成员，请联系我们的客服人员 400 886 2309。',
                                            type: 'error',
                                            confirmButtonText: '关闭'
                                        });
                                    }
                                    else {
                                        $('#add_user').modal('show');
                                    }
                                    toggle.is_medicare = isMedicareByEid[eid];
                                    setDateRange(startTimeBox, response.start_range_startDate, response.start_range_endDate, response.start_default);
                                    setDateRange(endTimeBox, response.end_range_startDate, response.end_range_endDate, response.end_default);
                                    setRelSelect(relType_AddObj, response.relativeArr);
                                }

                            }, "group/get_insurance_ajax/");
                        }

                    });


                    //是否超出该方案人员上限
                    function checkMaxPersonNumber(eid, group_id) {
                        var flag = false;
                        callAjax({'eid': eid, 'group_id': group_id}, 0, function (response) {
                            if (response == 1) {
                                flag = true;
                            }
                        }, 'groupreg/checkMaxPersonNumber/');
                        return flag;
                    }

                    function clear_add_user_form(flag) {
                        var add_realNameObj = $("#add_user input[name='realname']");
                        var add_id_numberObj = $("#add_user input[name='id_number']");
                        var add_mobileObj = $("#add_user input[name='mobile']");
                        var add_startTimeObj = $("#add_user input[name='starttime']");
                        if (flag) {
                            add_realNameObj.val('');
                            add_id_numberObj.val('');
                            add_mobileObj.val('');
                            add_startTimeObj.val(new Date());
                        }
                    }

                    //日期转为为时间戳
                    function datetime_to_unix(datetime) {
                        var tmp_datetime = datetime.replace(/:/g, '-');
                        tmp_datetime = tmp_datetime.replace(/ /g, '-');
                        var arr = tmp_datetime.split("-");
                        var now = new Date(Date.UTC(arr[0], arr[1] - 1, arr[2], arr[3] - 8, arr[4], arr[5]));
                        return parseInt(now.getTime() / 1000);
                    }

                });
                </script>
                {/literal}

                <div class="modal inmodal" id="edit_user" tabindex="-1" role="dialog" aria-hidden="true" style="font-size: 14px">
                    <div class="modal-dialog" style="width: 700px">
                        <div class="modal-content animated fadeIn">
                            <div class="modal-header">
                                <button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">&times;</span><span
                                            class="sr-only">Close</span></button>
                                <h3>成员修改</h3>
                                <small>请确认变更成员信息</small>
                            </div>
                            <div class="modal-body">
                                <form class="form-horizontal m-t" id="edit_user_form">
                                    <div class="form-group">
                                        <label class="col-xs-4 control-label font-noraml">被保险人姓名：</label>

                                        <div class="col-xs-7">
                                            <div class="input-group" style="width: 100%">
                                                <select class="form-control input-group-addon" name="relTypeDis" id="relTypeEditId"
                                                        style="width: 30%" disabled>
                                                    <option value="1">本人</option>
                                                    <option value="2">子女</option>
                                                </select>
                                                <input name="realname" minlength="2" type="text" class="form-control" required=""
                                                       aria-required="true" value="" style="width: 70%" readonly="readonly"/>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label class="col-xs-4 control-label font-noraml">被保险人证件：</label>

                                        <div class="col-xs-7">
                                            <div class="input-group" style="width: 100%">
                                                <select class="form-control input-group-addon pull-left" name="certTypeDis"
                                                        id="certTypeEditId" style="width: 30%" disabled>
                                                    <option value="0">身份证</option>
                                                </select>
                                                <input name="id_number" type="text" class="form-control" required=""
                                                       aria-required="true" value="" style="width: 70%" readonly="readonly"/>
                                            </div>
                                            <input name="id_number_self" type="hidden" value=""/>
                                        </div>
                                    </div>
                                    <div class="form-group" style="display: none" id="relBirthEditDiv">
                                        <label class="col-xs-4 control-label font-noraml">被保险人信息：</label>

                                        <div class="col-xs-4" style="padding-right: 0px;">
                                            <div class="base_attr pull-left">
                                                <a href="javascript:;" class="base_attr_item base_attr_on"  data-value="1">男<i></i></a>
                                                <a href="javascript:;" class="base_attr_item"  data-value="2">女<i></i></a>
                                            </div>
                                        </div>

                                        <div class="col-xs-3">
                                            <div class="input-group plan_date" data-date="2017-02-08"
                                                 data-date-format="yyyy-mm-dd">
                                                <span class="input-group-addon"><i class="fa fa-calendar"></i></span>
                                                <input type="text" id="relBirthDayEditId" name="relBirthDay" class="form-control"
                                                       value="2017-02-08" readonly="readonly"/>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label class="col-xs-4 control-label font-noraml">被保险人手机：</label>

                                        <div class="col-xs-7">
                                            <input type="text" class="form-control" name="mobile" required="" aria-required="true"
                                                   placeholder="手机号为重要信息，为空可能会影响成员的保障" value=""
                                                   onkeyup="value=value.replace(/[\D]/g,'')"/>
                                            <input type="hidden" name="oldmobile" value=""/>
                                        </div>
                                    </div>
                                    <div class="form-group" style="display: none" id="mainCertCodeEditDiv">
                                        <label class="col-xs-4 control-label font-noraml">主被保险人身份证：</label>

                                        <div class="col-xs-7">
                                            <input type="text" placeholder="18位身份证号码 （必须是在保成员）" class="form-control" name='mainCertCode'
                                                   id="mainEditId" readonly="readonly">
                                        </div>
                                    </div>
                                    <div class="form-group medicare" style="display: none">
                                        <label class="col-xs-4 control-label font-noraml">被保险人医保信息：</label>

                                        <div class="col-xs-7">
                                            <div class="input-group" style="width: 100%">
                                                <select class="form-control" name="medicare_type" style="width: 44.8%;">
                                                    <option value="1">城镇职工</option>
                                                    <option value="2">城镇居民</option>
                                                    <option value="3">新型农村合作医疗</option>
                                                    <option value="4">均未参加</option>
                                                </select>
                                                <input type="text" placeholder="点击选择医保所在地" data-prefix="edit"
                                                       class="form-control pull-left health_insurance_address" style="width: 55.2%;" readonly/>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label class="col-xs-4 control-label font-noraml">保障期间：</label>

                                        <div class="col-xs-7">
                                                        <span class="input-group date plan_date startTimeBox pull-left" data-date="2017-02-08"
                                                              data-date-format="yyyy-mm-dd" style="width: 45%">
                                                            <span class="input-group-addon"><i class="fa fa-calendar"></i></span><input type="text"
                                                                                                                                        name="starttime"
                                                                                                                                        class="form-control"
                                                                                                                                        value="2017-02-08"
                                                                                                                                        readonly="readonly"/>
                                                        </span>
                                            <input type="hidden" name="oldstarttime" value=""/>
                                                        <span class="input-group-addon pull-left"
                                                              style="width: 10%;height: 34px;border-left: 0;border-right: 0;padding:0;line-height: 34px">至</span>
                                                        <span class="input-group date plan_date endTimeBox pull-left" data-date="2017-02-08"
                                                              data-date-format="yyyy-mm-dd" style="width: 45%">
                                                            <span class="input-group-addon"><i class="fa fa-calendar"></i></span><input type="text"
                                                                                                                                        name="endtime"
                                                                                                                                        class="form-control"
                                                                                                                                        value="2017-02-08"
                                                                                                                                        readonly="readonly"/>
                                                        </span>
                                        </div>
                                        <input type="hidden" name="oldendtime" value=""/>
                                    </div>
                                    <div class="form-group">
                                        <div class="col-xs-7 col-xs-offset-4">
                                            <button class="btn btn-primary btn_submit" type="button">确认修改</button>
                                            <input type="hidden" name="request_time" value=""/>
                                            <input type="hidden" name="add_type" value=""/>
                                            <input type="hidden" name="eid" value=""/>
                                            <input type="hidden" name="sell" value=""/>
                                            <input type="hidden" name="id" value=""/>
                                            <input type="hidden" name="status" value=""/>
                                            <input type="hidden" name="new" value="0"/>
                                            <input type="hidden" name="bill_type" value="0"/>
                                            <input type="hidden" name="relType" value="1"/>
                                            <input type="hidden" name="relSex" value="1"/>
                                            <input type="hidden" name="certType" value="0"/>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <div class="msg col-xs-7 col-xs-offset-3" style="line-height:30px;color:#ee3300;"></div>
                                    </div>
                                </form>
                            </div>
                            <div class="modal-footer">
                                <button type="button" class="btn btn-white" data-dismiss="modal">关闭</button>
                            </div>
                        </div>
                    </div>
                </div>
                {literal}
                <script language="JavaScript">
                $(document).ready(function () {

                    $('#edit_user .health_insurance_address').click(function (e) {
                        SelCity(this, e);
                    });

                    const MALE = 1;
                    const FEMALE = 2;
                    const MEDICARE_TYPE_MAPPING = ['', '城镇职工', '城镇居民', '新型农村合作医疗', '均未参加'];

                    var group_id="61249";

                    /*修改人员信息-连带新增*/
                    var mainCertCodeDiv_EditObj = $('#edit_user_form #mainCertCodeEditDiv');
                    var relBirthDiv_EditObj = $('#edit_user_form #relBirthEditDiv');
                    var relType_EditObj = $('#edit_user_form #relTypeEditId');
                    var certType_EditObj = $('#edit_user_form #certTypeEditId');
                    var relSex_EditObj = $('#edit_user_form #relSexEditId');
                    var relBirthDay_EditObj = $('#edit_user_form #relBirthDayEditId');
                    var mainCertCode_EditObj = $('#edit_user_form #mainEditId');
                    var id_Add_EditObj = $('#edit_user_form input[name="id_number"]');
                    //编辑用户信息
                    var preEditUserStr = '';
                    var submitEditUserStr = '';
                    var $medicareObj = $('.medicare');
                    var $medicareTypeObj = $('#edit_user_form select[name=medicare_type]');
                    var $sexTypeObj = $('#edit_user_form .base_attr_item');

                    var toggle = {rel_type: 0, is_medicare: 0};
                    var oldMedicareInfo = {medicare_address: '', medicare_type: ''};
                    $(document).on("click", ".editor_user", function () {
                        var obj = $(this);
                        if (obj.data('is-medicare') == 1) {
                            var i = obj.data('medicare-address');
                            if (i != '') {
                                setDefault($editInsAddrObj, mapping[i].prov.name + Iput.confg.separator + mapping[i].city.name);
                            }
                            toggle.is_medicare = 1;
                            $medicareTypeObj.val(obj.data('medicare-type')).change();
                            oldMedicareInfo = {medicare_address:i, medicare_type: obj.data('medicare-type')};
                        } else {
                            toggle.is_medicare = 0;
                            oldMedicareInfo = {medicare_address: '', medicare_type: ''};
                        }
                        var id = obj.parents('td').siblings().find("input[name='idArr[]']").val();
                        var edit_user = $("#edit_user");
                        var $msgObj = edit_user.find(".msg");

                        var startTimeBox = edit_user.find(".startTimeBox");
                        var endTimeBox = edit_user.find(".endTimeBox");
                        if (id) {
                            callAjax({"id": id}, 0, function (response) {
                                if (response) {
                                    if (response.hasClaim) {
                                        showError(null, $msgObj, '该成员在当前方案下有理赔案件，部分信息不可修改！', true);
                                    } else {
                                        showError(null, $msgObj, '', false);
                                    }
                                    //line.remove();
                                    edit_user.find("input[name='realname']").val(response.realname);
                                    edit_user.find("input[name='id_number']").val(response.id_number);
                                    edit_user.find("input[name='id_number_self']").val(response.id_number);
                                    edit_user.find("input[name='mobile']").val(response.mobile);
                                    edit_user.find("input[name='oldmobile']").val(response.mobile);
                                    /*连带相关信息新增*/
                                    setRelativeInfo(edit_user, response);
                                    /*连带新增结束*/
                                    edit_user.find("input[name='starttime']").val(response.starttime);
                                    edit_user.find("input[name='endtime']").val(response.endtime);

                                    edit_user.find("input[name='oldstarttime']").val(response.old_starttime);
                                    edit_user.find("input[name='oldendtime']").val(response.old_endtime);

                                    //只有售险才能修改时间
                                    if (response.sell == 1) {
                                        setDateRange(startTimeBox, response.start_range_startDate, response.start_range_endDate, response.start_default);
                                        setDateRange(endTimeBox, response.end_range_startDate, response.end_range_endDate, response.end_default);
                                    }
                                    edit_user.find("input[name='request_time']").val(response.request_time);
                                    edit_user.find("input[name='id']").val(response.id);
                                    edit_user.find("input[name='eid']").val(response.eid);
                                    edit_user.find("input[name='sell']").val(response.sell);
                                    edit_user.find("input[name='add_type']").val(response.add_type);
                                    edit_user.find("input[name='status']").val(response.status);
                                    preEditUserStr = $('#edit_user_form').serialize();
                                    toggle.rel_type = response.relType;
                                    isShowHealthIns();
                                }
                            }, "group/get_user_info_ajax/");
                        }

                    });

                    function isShowHealthIns() {
                        if (toggle.rel_type == 1 && toggle.is_medicare == 1) {
                            $medicareObj.show();
                        } else {
                            $medicareObj.hide();
                        }
                    }

                    function setRelativeInfo(obj, response) {
                        /*连带相关信息新增*/
                        obj.find("input[name='relType']").val(response.relType);
                        if (response.relType != 1) {
                            mainCertCodeDiv_EditObj.show();
                            obj.find("input[name='mainCertCode']").val(response.mainCertCode);
                            if (response.relBirthDay != '') {
                                obj.find("input[name='certType']").val(1);
                                obj.find("select[name='certTypeDis']").html('<option value="1" selected>出生证</option>');
                                relBirthDiv_EditObj.show();
                                obj.find("input[name='relSex']").val(response.relSex);
                                obj.find("input[name='relBirthDay']").val(response.relBirthDay);
                                if (response.relSex == 1) {
                                    //                        obj.find("select[name='relSexDis']").html('<option value="1" selected>男</option>');
                                    $sexTypeObj.eq(MALE - 1).removeAttr('style').focus().addClass('active base_attr_on');
                                    $sexTypeObj.eq(FEMALE - 1).removeAttr('style').blur().removeClass('active base_attr_on').css('color', '#ccc');
                                } else {
                                    //                        obj.find("select[name='relSexDis']").html('<option value="2" selected>女</option>');
                                    $sexTypeObj.eq(MALE - 1).removeAttr('style').blur().removeClass('active base_attr_on').css('color', '#ccc');
                                    $sexTypeObj.eq(FEMALE - 1).removeAttr('style').focus().addClass('active base_attr_on');
                                }
                            } else {
                                obj.find("input[name='certType']").val(0);
                                obj.find("select[name='certTypeDis']").html('<option value="0" selected>身份证</option>');
                                relBirthDiv_EditObj.hide();
                            }
                            obj.find("select[name='relTypeDis']").html('<option value="2" selected>子女</option>');
                        } else {
                            relBirthDiv_EditObj.hide();
                            mainCertCodeDiv_EditObj.hide();
                            obj.find("select[name='relTypeDis']").html('<option value="1" selected>本人</option>');
                        }
                        /*连带新增结束*/
                    }

                    var $editInsAddrObj = $('#edit_user .health_insurance_address');

                    $(document).on("click", "#edit_user .btn_submit", function () {
                        var $editInsAddrVObj = $('#edit_city');
                        var edit_user = $("#edit_user");
                        submitEditUserStr = $("#edit_user_form").serialize();
                        if (submitEditUserStr == preEditUserStr) {
                            edit_user.modal('hide');
                            return;
                        }

                        var id = edit_user.find("input[name='id']").val();
                        var eid = edit_user.find("input[name='eid']").val();
                        var sell = edit_user.find("input[name='sell']").val();
                        var add_type = edit_user.find("input[name='add_type']").val();
                        var starttime = edit_user.find("input[name='starttime']").val();
                        var oldstarttime = edit_user.find("input[name='oldstarttime']").val();
                        var msgObj = edit_user.find(".msg");
                        msgObj.html('');


                        /*检测真实姓名*/
                        var realnameObj = edit_user.find("input[name='realname']");
                        var realname = $.trim(realnameObj.val());

                        var id_numberObj = edit_user.find("input[name='id_number']");
                        var id_number = $.trim(id_numberObj.val());
                        var id_number_self = $.trim(edit_user.find("input[name='id_number_self']").val());

                        if (check_realname_format(realname) != 1) {
                            showError(realnameObj, msgObj, '请填写真实姓名！', true);
                            return false;
                        }
                        else {
                            showError(realnameObj, msgObj, '', false);
                        }

                        /*检测身份证*/
                        var relType = relType_EditObj.val();
                        var certType = certType_EditObj.val();
                        if ((relType == 1 && !check_id_number_format(id_number)) || (relType != 1 && certType == 0 && !check_id_number_format(id_number)) || (relType != 1 && certType == 1 && !checkBirthCertFormat(id_number))) {
                            showError(id_numberObj, msgObj, '证件号码有误', true);
                            return false;
                        }
                        else {
                            showError(id_numberObj, msgObj, '', false);
                        }

                        if (toggle.is_medicare == 1 && toggle.rel_type == 1 && !checkInsuranceAddress($.trim($editInsAddrObj.val()), $.trim($editInsAddrVObj.val()))) {
                            return showError($editInsAddrObj, msgObj, '医保地址选择有误！', true);
                        } else {
                            showError($editInsAddrObj, msgObj, '', false);
                        }

                        /*检测手机号码*/
                        var mobileObj = edit_user.find("input[name='mobile']");
                        var oldMobileObj = edit_user.find("input[name='oldmobile']");
                        var mobile = $.trim(mobileObj.val());
                        var oldmobile = $.trim(oldMobileObj.val());
                        if (check_mobile_format(mobile, true) != 1) {
                            showError(mobileObj, msgObj, '手机输入有误！', true);
                            return false;
                        }
                        else {
                            showError(mobileObj, msgObj, '', false);
                        }


                        /*连带新增*/
                        var relBirthDay = '';
                        var mainCertCode = null;
                        //如果有连带被保险人的相关信息，进行检测
                        if (relType != 1) {
                            mainCertCode = $.trim(mainCertCode_EditObj.val());
                            /*检测主被保险人的证件格式*/
                            if (!check_id_number_format(mainCertCode)) {
                                showError(mainCertCode_EditObj, msgObj, '主被保险人的身份证格式错误！', true);
                                return false;
                            } else {
                                showError(mainCertCode_EditObj, msgObj, '', false);
                            }
                            relBirthDay = relBirthDay_EditObj.val();
                        }
                        if (oldstarttime != starttime) {
                            var id_number_info = {};
                            var id_number_arr = [];
                            id_number_info.birth = relType != 1 && certType == 1 ? relBirthDay : id_number.substring(6, 14);
                            id_number_info.starttime = starttime;
                            id_number_arr.push(id_number_info);
                            var call_ajax_flag = true;
                            callAjax({
                                "eid": eid,
                                "group_id": group_id,
                                "id_number": JSON.stringify(id_number_info),
                                "id_number_arr": JSON.stringify(id_number_arr)
                            }, PRD, function (response) {
                                if (response.result != 0) {
                                    //错误
                                    loading('hide');
                                    showError(id_numberObj, msgObj, response.msg, true);
                                    call_ajax_flag = false;
                                }
                            }, 'check/check_age_match_ajax/');
                            if (!call_ajax_flag) {
                                return false;
                            }
                        }

                        var insuranceTimeArr = get_insurance_time(eid);

                        /*检测开始时间*/
                        var starttimeObj = edit_user.find("input[name='starttime']");
                        //        var starttime= $.trim(starttimeObj.val());
                        var starttimeReg = /^201[0-9]\-[0-9]{2}\-[0-9]{2}$/;
                        if (!starttimeReg.test(starttime)) {
                            showError(starttimeObj, msgObj, '开始日期格式错误', true);
                            return false;
                        }
                        else if (datetime_to_unix(starttime) < insuranceTimeArr['starttime']) {
                            showError(starttimeObj, msgObj, '开始日期不能早于方案开始日期', true);
                            return false;
                        }
                        else {
                            showError(starttimeObj, msgObj, '', false);
                        }
                        //alert(sell);exit;

                        /*检测结束时间*/
                        var endtimeObj = edit_user.find("input[name='endtime']");
                        if (sell == 1) {
                            var endtime = $.trim(endtimeObj.val());
                            var endtimeReg = /^201[0-9]\-[0-9]{2}\-[0-9]{2}$/;
                            if (!endtimeReg.test(endtime)) {
                                showError(endtimeObj, msgObj, '结束日期格式错误', true);
                                return false;
                            }
                            else if (datetime_to_unix(endtime) > insuranceTimeArr['endtime']) {
                                showError(endtimeObj, msgObj, '结束日期不能晚于方案结束日期', true);
                                return false;
                            }
                            else {
                                showError(endtimeObj, msgObj, '', false);
                            }
                        }
                        else if (sell == 2) {
                            var endtime = get_endtime(eid, starttime);
                            endtimeObj.val(endtime);
                            msgObj.html('');
                        }


                        if (endtime < starttime) {
                            showError(endtimeObj, msgObj, '结束日期不能早于方案开始日期', true);
                            return false;
                        }
                        else {
                            showError(endtimeObj, msgObj, '', false);
                        }
                        //alert(endtime);
                        if (id_number_self != id_number) {
                            //检查是否可以申请保障
                            var result = checkUserCanApplyIns(relType, group_id, eid, id_number, relBirthDay, starttime, mainCertCode, root);
                            if (result === false) {
                                showError(id_numberObj, msgObj, '网络异常，请重新提交。', true);
                                return false;
                            } else if (result.code != 0) {
                                showError(id_numberObj, msgObj, result.msg, true);
                                return false;
                            } else {
                                showError(id_numberObj, msgObj, '', false);
                            }
                        }

                        var oldendtime = edit_user.find("input[name='oldendtime']").val();

                        var bill_type_obj = edit_user.find("input[name='bill_type']");

                        /*bill_type 0(默认)加人 1减人 2生效时间改变，结束时间不变 3 生效时间不变，结束时间改变 4生效时间和结束时间都改变*/


                        if (starttime != oldstarttime && endtime == oldendtime) {
                            bill_type_obj.val('2');
                        }
                        else if (starttime == oldstarttime && endtime != oldendtime) {
                            bill_type_obj.val('3');
                        }
                        else if (starttime != oldstarttime && endtime != oldendtime) {
                            bill_type_obj.val('4');
                        }
                        else {
                            bill_type_obj.val('0');
                        }


                        //alert($("#edit_user input[name='bill_type']").val());

                        var data = $("#edit_user_form").serialize();
                        $(this).prop('disabled', true);
                        callAjax(data, 0, function (response) {
                            if (response.code != 0) {
                                swal("错误！", response.msg, "error");
                                $(this).prop('disabled', false);
                            } else {
                                //alert(response);exit;
                                edit_user.find(".modal-footer button").click();
                                //显示修改成功的信息
                                var tip = [] ;
                                if (oldmobile != mobile) {

                                    if (oldmobile == '') {
                                        tip.push("手机号码由无变更为：" + mobile);
                                    } else {
                                        if (mobile == '') {
                                            tip.push("手机号码由" + oldmobile + "，变更为无");
                                        } else {
                                            tip.push("手机号码由" + oldmobile + "，变更为：" + mobile);
                                        }
                                    }
                                }
                                if (toggle.rel_type == 1 && toggle.is_medicare == 1) {
                                    if ($editInsAddrVObj.val() != oldMedicareInfo.medicare_address) {
                                        tip.push('医保地址变更为：' + mapping[$editInsAddrVObj.val()].prov.name + Iput.confg.separator + mapping[$editInsAddrVObj.val()].city.name);
                                    }

                                    if ($medicareTypeObj.val() != oldMedicareInfo.medicare_type) {
                                        tip.push('医保类型变更为：' + MEDICARE_TYPE_MAPPING[$medicareTypeObj.val()]);
                                    }
                                }

                                if (endtime != oldendtime) {
                                    tip.push("结束日期变更为：" + endtime);
                                }
                                if (starttime != oldstarttime) {
                                    tip.push("开始日期变更为：" + starttime);
                                }

                                var target = $('#ins_tabs li.active').data('target');

                                showSucceedWindow('修改成功', '<p style="text-align: left;padding-left: 100px">' + tip.join('<br />') + '</p>', function (isConfrim) {
                                    loading('show');
                                    if (target !== '' && target !== undefined && target !== null) {
                                        location.href = '/Home/Group/index?tab=' + target;
                                    } else {
                                        location.href = '/Home/Group/index';
                                    }
                                });
                            }

                        }.bind(this), "group/usersaveajax/");
                    });

                    function loading (status) {
                        eval("$('._loading')." + status + '()');
                    }

                    //获得产品方案时间,返回的是时间戳
                    function get_insurance_time(eid)
                    {
                        var Arr=Array();
                        callAjax( {"eid":eid}, 0,function(response)
                        {
                            Arr['starttime']=response.starttime;
                            Arr['endtime']=response.endtime;

                        }, "group/get_insurance_time_ajax/" );
                        return Arr;
                    }

                    //根据保险方案计算保险的结束时间,Y-m-d
                    function get_endtime(eid,starttime)
                    {
                        var endtime='';
                        callAjax( {"eid":eid,"starttime":starttime}, 0, function(response)
                        {
                            endtime=response;

                        }, "group/get_endtime_ajax/" );
                        return endtime;

                    }

                    //日期转为为时间戳
                    function datetime_to_unix(datetime){
                        var tmp_datetime = datetime.replace(/:/g,'-');
                        tmp_datetime = tmp_datetime.replace(/ /g,'-');
                        var arr = tmp_datetime.split("-");
                        var now = new Date(Date.UTC(arr[0],arr[1]-1,arr[2],arr[3]-8,arr[4],arr[5]));
                        return parseInt(now.getTime()/1000);
                    }


                    //设定日期范围
                    function setDateRange(obj,startDate,endDate,defaultDate){
                        obj.datepicker({
                            format: 'yyyy-mm-dd',
                            keyboardNavigation: false,
                            forceParse: false,
                            autoclose: true,
                            // todayBtn: 'linked',
                            startDate:startDate,
                            endDate:endDate
                        });
                        obj.datepicker("setStartDate",startDate);
                        obj.datepicker("setEndDate",endDate);
                        if(defaultDate)
                        {
                            obj.datepicker("setDate",defaultDate);
                        }
                    }

                    //修改成功显示的提示窗
                    function showSucceedWindow(title,msg,callback){
                        swal({
                            title: title,
                            text: msg,
                            type: "success",
                            confirmButtonColor: "#DD6B55",
                            confirmButtonText: "确认",
                            html:true,
                            closeOnConfirm: true
                        },callback);
                    }


                    function showError(inputObj,msgObj,msg,show)
                    {
                        if (show)
                        {
                            if(inputObj != null){
                                inputObj.css({"border-color": "red"});
                            }
                            msgObj.html(msg);
                        }
                        else
                        {
                            if(inputObj != null) {
                                inputObj.css({"border-color": "#eeeeee"});
                            }
                            msgObj.html('');
                        }

                        return false;
                    }

                    function checkInsuranceAddress(n, c) {
                        var na = n.split(Iput.confg.separator);
                        var $f = true;
                        if (na.length < 2 || !/\d{6}/.test(c)) {
                            $f = false;
                        }

                        return $f;
                    }


                });
                </script>
                {/literal}

                <div class="layer2 _loading" style=""></div>
                <div class="load _loading">
                    <img src="{#static_path#}/images/loading.gif">
                    <p>提交中，请稍后！</p>
                </div>

            </div>
        </div>
    </div>
{/block}


{block name="js"}
    <script src="{#static_path#}/js/plugins/bootstrap.min.js"></script>
    <script src="{#static_path#}/js/group/index.js"></script>

{literal}
    <script>

    var root="http://www.insgeek.com";
    var qrcodePicObj = $( '#qrcodePic' ) ;
    var regURlObj = $( '#regURl' ) ;


    $(document).ready(function()
    {
        $('.table-hover').dataTable({
            ordering:false,
            "searching": true,
            "bStateSave": true,
            "lengthMenu": [10, 20, 50, 100, 200, 500]
        });

        //批量删除
        $(document).on("click",".del_user_all",function()
        {
            var obj=$(this).parent('.btn-group').siblings('.m-t-35').find("input[name='idArr[]']:checked");
            var idArrStr=obj.serialize();
            if(idArrStr=="")
            {
                swal({
                    title: "提示！",
                    type: "warning",
                    text: "您是不是忘了勾选需要解除保障的成员？",
                    confirmButtonText: "确认"
                });
                return;
            }
            var lines=obj.parents('tr');
            var wantToDelCount=obj.length;


            swal({
                title : '您确定要删减吗？',
                text  : '所选人员的保单将从 2017-02-09 失效。',
                type  : 'warning',
                showCancelButton   : true,
                confirmButtonColor : '#DD6B55',
                confirmButtonText  : '确认删减',
                cancelButtonText   : '取消删减',
                closeOnConfirm: false
            }, function (isConfirm)
            {
                if (isConfirm)
                {
                    var msg='';
                    var title='删减失败';
                    var del=false;
                    if(idArrStr)
                    {
                        callAjax( idArrStr, 0, function(response)
                        {
                            if(response!=-1)
                            {
                                var notDelCount=response.length;
                                /*如果不删除的数量小于勾选的人数，说明有人被删除了*/
                                if (notDelCount<wantToDelCount)
                                {
                                    del=true;
                                    if (notDelCount!=0)
                                    {
                                        title='部分人员删减成功';
                                        msg='以下人员有尚未完结的报销申请，暂时不能删减：\n';
                                    }
                                    else
                                    {
                                        title='删减成功';
                                    }
                                    for (var i=0; i<lines.length; i++)
                                    {
                                        if (findAll(response, lines.eq(i).attr('id')).length==0)
                                        {
                                            lines.eq(i).remove();
                                        }
                                        else
                                        {
                                            var dates=lines.eq(i).children('td');
                                            msg+=dates[1].innerText.replace('\n', ' ');
                                            msg+=dates[2].innerText;
                                        }
                                    }
                                }
                                else
                                {
                                    title='无法删减';
                                    msg='您选择的人员有尚未完成的报销申请，在报销完结之前不能删减';
                                }
                                del_user_warning(del,title,msg);
                            }
                            else
                            {
                                swal({
                                    title: '错误',
                                    text: '操作失败，请重新提交',
                                    type: 'error',
                                    confirmButtonText: '关闭'
                                });
                            }
                        }, "group/delUser/" );
                    }
                }
                else
                {
                    swal( '取消删减', '您已经取消了这次删减操作', 'warning' ) ;
                }
            });
        });

        function del_user_warning(del,title,msg)
        {
            if(del)
            {
                swal({
                    title: title,
                    text: msg,
                    type: "success",
                    confirmButtonColor: "#DD6B55",
                    confirmButtonText: "确认",
                    closeOnConfirm: true
                }, function (isConfirm)
                {
                    $('._loading').show();
                    location.reload();
                });

            }
            else
            {
                swal({
                    title: title,
                    text: msg,
                    type: "warning",
                    confirmButtonColor: "#DD6B55",
                    confirmButtonText: "确认",
                    closeOnConfirm: true
                }, function (isConfirm)
                {
                });
            }
        }

        $(document).on("click",'.del_user',function ()
        {
            var obj=$(this);
            var eid_starttime = $.trim(obj.parents('tbody').attr("starttime"));
            var line=obj.parents('tr');
            var id=obj.parents('td').siblings().find("input[name='idArr[]']").val();
            var text = "";
            if(eid_starttime < "1486523164"){
                text = '所选人员的保单将从 2017-02-09 失效。';
            }
            var htmlMsg = '';
            callAjax( { "idArr": new Array(id.toString())}, 0, function(response){
                if(response == 1)
                {
                    htmlMsg = ' 400-886-2309';
                    showConfirmWindow('您确定要删减此人吗？','该成员在当前方案下有未结案理赔，暂时不能对该成员做减人操作，如有疑问，请致电保险极客',false,true,'确认',function(){checkStyle(false);});
                }else if(response ==2)
                {
                    showConfirmWindow(
                            '您确定要删减此人吗？',
                            '该成员在当前方案下有理赔案件，按照投保协议，我们将：\n1、所缴保费不会退\n2、原定保险期内未缴保费需补缴',
                            true,
                            false,
                            '确认删减',
                            delUserByAjax(id,line)
                    );

                }else
                {

                    showConfirmWindow(
                            '您确定要删减此人吗？',
                            text,
                            true,
                            false,
                            '确认删减',
                            delUserByAjax(id,line)
                    );

                }
            },'Group/getCurUserClaimStatus/');
            checkStyle(true, htmlMsg);
        });

        var $showSweetAlert=null;
        var $h2 = null;
        var $p = null;
        function checkStyle(addClass, htmlMsg){
            $showSweetAlert = $showSweetAlert==null?$('.showSweetAlert'):$showSweetAlert;
            $h2 = $h2==null?$showSweetAlert.find('h2'):$h2;
            $p = $p==null?$showSweetAlert.find('p'):$p;

            $h2.toggleClass('swal-h2-style',addClass);
            $p.toggleClass('swal-p-style',addClass);

            if(typeof htmlMsg != 'undefined'){
                $( "<span style='color: red'>" + htmlMsg + "</span>" ).appendTo($p);
            }
        }

        function showConfirmWindow(title,msg,showCancelBtn,closeOnConfirm,confirmBtnMsg,callback){
            swal({
                title : title,
                text  : msg,
                type  : 'warning',
                showCancelButton   : showCancelBtn,
                confirmButtonColor : '#DD6B55',
                confirmButtonText  : confirmBtnMsg,
                cancelButtonText   : '取消删减',
                closeOnConfirm: closeOnConfirm
            }, callback);

        }

        function delUserByAjax(id,line){
            return function (isConfirm)
            {
                if (isConfirm)
                {
                    var msg='';
                    var title='删减失败';
                    var del=false;
                    if (id)
                    {
                        callAjax( {"idArr": new Array(id.toString())}, 0, function (response)
                        {
                            if(response!=-1)
                            {
                                //alert(response);exit;
                                if (response.length==0)
                                {
                                    del=true;
                                    title='删减成功';
                                    line.remove();

                                }
                                del_user_warning(del, title, msg);
                            }
                        }, "group/delUser/" );
                    }
                }
                else
                {
                    swal( '取消删减', '您已经取消了这次删减操作', 'warning' ) ;
                }

                checkStyle(false);
            };
        }

    });
    </script>
{/literal}
{/block}