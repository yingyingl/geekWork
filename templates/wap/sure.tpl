{extends file="template/front-wap.tpl"}

{block name="title"}申请入保{/block}

{block name="css"}
    <link rel="stylesheet" href="{static_path}/css/plugins/LArea.css">
{/block}

{block name="container"}
    <div id="section_container">
        <div class="hd">
            <h3 class="page_title">申请入保</h3>
        </div>
        <div class="mark-font" style="margin-top: 0">
            请正确填写您的详细信息！    </div>
        <div class="bd" id="groupReg2">
            <form action="http://www.insgeek.com/groupreg/regdo/group_id/61249/eid/2955/code/1G0IGD" class="form-group" id="formID" method="post">
                <div class="weui_cells_title relativeCert">被保险人</div>
                <div class="weui_cells">
                    <div class="weui_cell weui_cell_select weui_select_before">
                        <div class="weui_cell_hd">
                            <select class="weui_select" name="relType" style="width: 120px;padding-left: 10px" id="relTypeSel" disabled>
                                <option value="1" selected>本人</option>                            </select>
                        </div>
                        <div class="weui_cell_bd weui_cell_primary" id="realname">
                            <input class="noborder weui_input" name="mainName" placeholder="真实姓名" type="text" value=""  style="color: #808080">
                        </div>
                        <div class="weui_cell_ft">
                            <i class=""></i>
                        </div>
                    </div>
                    <div class="weui_cell weui_cell_select weui_select_before">
                        <div class="weui_cell_hd">
                            <select name="" class="weui_select" style="width: 120px;padding-left: 10px" disabled>
                                <option value="0">身份证</option>
                            </select>
                        </div>
                        <div class="weui_cell_bd weui_cell_primary">
                            <input name="mainAccount" type="text" class="weui_input" placeholder="证件号码" value="232303198807013424" readonly style="color: #808080">
                        </div>
                        <div class="weui_cell_ft">
                            <i class=""></i>
                        </div>
                    </div>
                </div>
                <div class="weui_cells">
                    <div class="weui_cell">
                        <div class="weui_cell_hd" style="width: 110px">联系电话</div>
                        <div class="weui_cell_bd weui_cell_primary">
                            <input class="noborder weui_input" name="mobile" id="mobileID" placeholder="输入您的电话" type="tel" value="" >
                            <input id="mainMobile" type="hidden" value=""/>
                            <input id="relMobile" type="hidden" value=""/>
                        </div>
                        <div class="weui_cell_ft">
                            <i class=""></i>
                        </div>
                    </div>
                    <div class="weui_cell" id="mobile_verify_line" >
                        <div class="weui_cell_hd" style="width: 110px">
                            验证码&nbsp;&nbsp;&nbsp;
                        </div>
                        <div class="weui_cell_bd weui_cell_primary">
                            <input class="noborder weui_input" name="verify_mob" id="verify_mobID" placeholder="输入验证码" type="text">
                        </div>
                        <div class="weui_cell_ft">
                            <i class=""></i>
                        </div>
                        <a class="weui_btn weui_btn_mini weui_btn_primary" id="set_user_mob_verify" style="float: right; height: 32px; line-height: 32px;">获取验证码</a>
                        <p class="ig-msg" id="verify_mob_msgID" style="font-size: 12px; font-style: normal;"></p>
                    </div>
                </div>
                <div class="weui_btn_area">
                    <a class="weui_btn weui_btn_primary" type="button" id="submitId">提交确认</a>
                    <a class="weui_btn weui_btn_default" href="http://www.insgeek.com/groupreg/reg/group_id/61249/eid/2955/code/1G0IGD">上一步</a>
                    <input name="is_check_verify" type="hidden" value="1"/>
                </div>
            </form>    </div>
    </div>
    <div class="weui_toptips weui_warn js_tooltips"></div>
    <!--BEGIN dialog1-->
    <div class="weui_dialog_confirm" id="twoBtDia" style="display: none;">
        <div class="weui_mask"></div>
        <div class="weui_dialog">
            <div class="weui_dialog_hd"><strong class="weui_dialog_title">弹窗标题</strong></div>
            <div class="weui_dialog_bd">自定义弹窗内容，居左对齐显示，告知需要确认的信息等</div>
            <div class="weui_dialog_ft">
                <a href="javascript:;" class="weui_btn_dialog default">取消</a>
                <a href="javascript:;" class="weui_btn_dialog primary submitBtn">确定</a>
            </div>
        </div>
    </div>
    <!--END dialog1-->
    <!--BEGIN dialog2-->
    <div class="weui_dialog_alert" id="oneBtDia" style="display: none;">
        <div class="weui_mask"></div>
        <div class="weui_dialog">
            <div class="weui_dialog_hd"><strong class="weui_dialog_title"></strong></div>
            <div class="weui_dialog_bd"></div>
            <div class="weui_dialog_ft">
                <a href="javascript:;" class="weui_btn_dialog primary submitBtn">确定</a>
            </div>
        </div>
    </div>
    <!--END dialog2-->
{/block}

{block name="js"}
    <script src="{#static_path#}/js/igCustom.js"></script>
    <script src="{#static_path#}/js/plugins/jquery-weui.min.js"></script>
    <script src="{#static_path#}/js/address/wechat_addr_data.js"></script>
    <script src="{#static_path#}/js/address/LArea.js"></script>
    <script src="{#static_path#}/js/address/address_mapping.js"></script>
    <script src="{#static_path#}/js/wap/sure.js"></script>
{/block}