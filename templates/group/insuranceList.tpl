{extends file="template/front.tpl"}

{block name="title"}保障方案{/block}

{block name="css"}
    <link href="{#static_path#}/css/plugins/datepicker3.css" rel="stylesheet">
{/block}

{block name="container"}
    <div class="wrapper wrapper-content">
        <div class="container">
            <div class="row">

            {include file="template/sidebar.tpl"}

            <div id="page" data-page="insurance"></div>
            <div class="col-xs-10">
                {foreach from=$data.insurance_list item=insuranceList key=key}
                    <div class="col-md-6 iboxIndex iboxlist add-null" data-id="{$insuranceList.id}">
                        <div class="ibox">
                            <div class="ibox-content product-box">
                                <div class="product-imitation">
                                    <div class="product-title">{$insuranceList.product_name}</div>
                                    <div class="product-subhead">{$data.enterprise_name}</div>
                                </div>

                                <div class="product-desc">
                                    <span class="product-price">保障中</span>
                                    <a data-toggle="modal" data-target="#content_A" class="product-name" style="display:inline" name="insuranceState">保障说明<small style="font-weight: normal;"> (点此查看保障详情)</small></a>
                                    <div class="small m-t-xs" style="margin-top: 15px;line-height: 23px;color: #6f6f6f">
                                        <i class="fa fa-users"></i> 当前有 <strong class="text-warning">{$insuranceList.people_num}</strong> 人受益于此保障方案<br/>
                                        <i class="fa fa-table"></i>方案开始日期 {$insuranceList.begin_date} <br/>
                                        <i class="fa fa-table"></i> 方案结束日期 {$insuranceList.end_date} <br/>
                                        <span style="color: #cccccc"><i class="fa fa-download"></i> 下载合同</span>
                                        <span class="tooltip-demo"><i data-toggle="tooltip" data-placement="top" data-original-title="贵企业尚未通过实名认证，暂不能获取合同，如有疑问，请致电保险极客：400-886-2309" class="fa fa-question-circle text-warning"></i></span>
                                    </div>

                                    <div class="m-t text-righ">
                                        <div class="btn-group">
                                            <button class="btn btn-outline btn-primary" type="button" onclick="location.href='/group/userList/{$insuranceList.id}'" >成员列表</button>
                                            <button class="btn btn-outline btn-primary add_user add-null"  data-toggle="modal" type="button">增加成员</button>
                                            <button class="btn btn-outline btn-primary two_code" title="点此可通过二维码添加成员" type="button" data-toggle="modal" data-target="#two_code" >二维码加人</button>                                <button class="btn btn-outline btn-primary" title="您可以通过导入excel表格批量加人" type="button" onclick="location.href='/UploadUserInfo/flow_batch'">批量加人</button>
                                        </div>
                                    </div>
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


            <div class="modal inmodal" id="content_A" tabindex="-1" role="dialog" aria-hidden="true">
                <div class="modal-dialog">
                    <div class="modal-content animated fadeIn">
                        <div class="modal-header">
                            <button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">&times;</span><span class="sr-only">Close</span>
                            </button>
                            <h3>保障方案说明</h3>
                            <small id="InsuranceNameID">副标题</small>
                        </div>
                        <div class="modal-body text-center" id="InsuranceContentID">
                            详细内容10000字省略
                        </div>
                        <div class="modal-footer">
                            <button type="button" class="btn btn-white" data-dismiss="modal">关闭</button>
                        </div>
                    </div>
                </div>
            </div>

            <div id="layer" style="width: 100%;height: 100%;z-index: 10000;position: fixed;display: none;"></div>

            <div class="layer2 _loading" style=""></div>

            <div class="load _loading">
                <img src="http://www.insgeek.com/public/insgeek2.0/img/user/loading.gif">
                <p>提交中，请稍后！</p>
            </div>
            </div>
        </div>
    </div>
{/block}

{block name="js"}
    <script src="{#static_path#}/js/plugins/metisMenu/jquery.metisMenu.js"></script>
    <script src="{#static_path#}/js/plugins/bootstrap-datepicker.js"></script>

    <script src="{#static_path#}/js/address/cityJson.js"></script>
    <script src="{#static_path#}/js/address/citySet.js"></script>
    <script src="{#static_path#}/js/address/Popt.js"></script>
    <script src="{#static_path#}/js/address/address_mapping.js"></script>

    <script src="{#static_path#}/js/igCustom.js"></script>
    <script src="{#static_path#}/js/group/index.js"></script>
{/block}
