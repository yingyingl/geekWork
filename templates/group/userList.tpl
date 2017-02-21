{extends file="template/front.tpl"}

{block name="title"}成员管理{/block}

{block name="css"}
    <link href="{#static_path#}/css/plugins/datepicker3.css" rel="stylesheet">
{/block}

{block name="container"}
    <div class="wrapper wrapper-content">
        <div class="container">
            <div class="row">

                {include file="template/sidebar.tpl"}

                <div id="page" data-page="memberList"></div>

                <div class="col-xs-10">
                    <div class="ibox float-e-margins">
                        <div class="ibox-title"><span>成员管理</span></div>

                        <div class="ibox-content" id="userContent">
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
                                <div id="tab-1" class="tab-pane active iboxlist iboxlist1" data-id="1" data-type="effect" data-load="true">
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

                                    <div class="m-t-35 form-inline dataTables_wrapper">
                                        <p class="ajax-loading" style="display: none;"></p>
                                        <table class="table table-hover">
                                        <thead>
                                        <tr>
                                            <th><input type="checkbox" class="checkboxAll" id="checkboxALLInsurance"></th>
                                            <th>姓名</th>
                                            <th>证件号码</th>
                                            <th>手机号码</th>
                                            <th class="text-center" style="width: 100px">方案名称</th>
                                            <th class="text-center">保障开始时间</th>
                                            <th class="text-center">保障结束时间</th>
                                            <th></th>
                                        </tr>
                                        </thead>
                                        <tbody id="user_all_insurance"></tbody>
                                        </table>

                                        <div class="pagination-list clearfix" id="pagination1"></div>
                                    </div>
                                </div>

                                <div id="tab-2" class="tab-pane iboxlist" data-id="2" data-type="wait" data-load="true">
                                    <div class="btn-group">
                                        <button class="btn btn-default" type="button" id="yes_user_all_waiter"{* disabled="true"*}>批量通过</button>
                                        <button class="btn btn-default" type="button" id="no_user_all_waiter"{* disabled="true"*}>批量拒绝</button>
                                    </div>

                                    <div class="m-t-35 form-inline dataTables_wrapper">
                                        <p class="ajax-loading" style="display: none;"></p>
                                        <table class="table table-hover">
                                            <thead>
                                            <tr>
                                                <th><input type="checkbox" class="checkboxAll" id="checkboxALLWaiter"></th>
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
                                            <tbody id="user_all_waiter"></tbody>
                                        </table>

                                        <div class="pagination-list clearfix" id="pagination2"></div>
                                    </div>
                                </div>

                                <div id="tab-3" class="tab-pane iboxlist" data-id="3" data-type="reject" data-load="true">
                                    <div class="btn-group">
                                        <button class="btn btn-outline btn-primary" type="button" id="yes_user_all_no">批量审核通过</button>
                                    </div>

                                    <div class="m-t-35 form-inline dataTables_wrapper">
                                        <p class="ajax-loading" style="display: none;"></p>
                                        <table class="table table-hover">
                                            <thead>
                                            <tr>
                                                <th><input type="checkbox" class="checkboxAll" id="checkboxALLNo"></th>
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
                                            <tbody id="user_all_no"></tbody>
                                        </table>

                                        <div class="pagination-list clearfix" id="pagination3"></div>
                                    </div>
                                </div>

                                <div id="tab-4" class="tab-pane iboxlist" data-id="4" data-type="uneffect" data-load="true">
                                    <div class="m-t-35 form-inline dataTables_wrapper">
                                        <p class="ajax-loading" style="display: none;"></p>
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
                                            <tbody></tbody>
                                        </table>

                                        <div class="pagination-list clearfix" id="pagination4"></div>
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
                                                {foreach from=$data.insurance_list item=insuranceList key=key}
                                                    <option value="{$insuranceList.id}">{$insuranceList.product_name}</option>
                                                {/foreach}
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
                    <img src="{#static_path#}/images/loading.gif">
                    <p>提交中，请稍后！</p>
                </div>
            </div>
        </div>
    </div>
{/block}

{block name="js"}
    <script src="{#static_path#}/js/plugins/jquery.metisMenu.js"></script>
    <script src="{#static_path#}/js/plugins/pagination.js"></script>   <!-- 分页 -->
    <script src="{#static_path#}/js/plugins/bootstrap-datepicker.js"></script>

    <script src="{#static_path#}/js/address/cityJson.js"></script>
    <script src="{#static_path#}/js/address/citySet.js"></script>
    <script src="{#static_path#}/js/address/Popt.js"></script>
    <script src="{#static_path#}/js/address/address_mapping.js"></script>

    <script src="{#static_path#}/js/igCustom.js"></script>
    <script src="{#static_path#}/js/group/index.js"></script>
{/block}