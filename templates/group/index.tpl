{extends file="template/front.tpl"}

{block name="title"}用户首页{/block}

{block name="css"}
    <link href="{#static_path#}/css/plugins/datepicker3.css" rel="stylesheet">
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
                                <p><a href="/group/insuranceList"><small><i class="fa fa-file-text"></i> 共 {$data.insurance_num} 种保障方案</small></a></p>
                                <p><a href="/group/userList/wait/1"><small><i class="fa fa-plus-square"></i> 共 {$data.wait_people_num} 人等待审核</small></a></p>
                                <p><a href="/group/userList"><small><i class="fa fa-umbrella"></i> 共 {$data.insurance_people_num} 人在保</small></a></p>
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
                        <div class="ibox float-e-margins iboxIndex iboxlist iboxlist{$insuranceList.id}" data-id="{$insuranceList.id}" data-load="true">
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
                                    <button class="btn btn-white add_user" type="button" data-toggle="modal" data-is-medicare="0">增加成员</button>
                                    <button class="btn btn-white two_code" type="button" data-toggle="modal" data-target="#two_code">加人推送</button>
                                </div>
                                <input type="hidden" name="eid" value="2955">
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

                                        <div class="pagination-list clearfix" id="pagination{$insuranceList.id}"></div>
                                    </div>

                                    <div class="text-center"><div class="btn-group"></div></div>
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
    <script src="{#static_path#}/js/plugins/metisMenu/jquery.metisMenu.js"></script>
    <script src="{#static_path#}/js/plugins/pagination.js"></script>   <!-- 分页 -->
    <script src="{#static_path#}/js/plugins/bootstrap-datepicker.js"></script>

    <script src="{#static_path#}/js/address/cityJson.js"></script>
    <script src="{#static_path#}/js/address/citySet.js"></script>
    <script src="{#static_path#}/js/address/Popt.js"></script>
    <script src="{#static_path#}/js/address/address_mapping.js"></script>

    <script src="{#static_path#}/js/igCustom.js"></script>
    <script src="{#static_path#}/js/group/index.js"></script>
{/block}