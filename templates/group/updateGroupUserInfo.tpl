{extends file="template/front.tpl"}

{block name="title"}账户维护{/block}

{block name="container"}
    
<div class="wrapper wrapper-content">
    <div class="container">
        <div class="row">

            {include file="template/sidebar.tpl"}

            <div id="page" data-page="settingPage"></div>

            <div class="col-xs-10">
                <div class="ibox finance-recharge">
                    <div class="ibox-title">
                        <span>账户维护</span>
                    </div>
                    <div class="ibox-content">
                        <ul id="ins_tabs" class="nav-tabs" style="margin-bottom: 20px">
                            <li class="active" id="tab-title"><a data-toggle="tab" href="#tab-1" aria-expanded="true">基本资料</a></li>
                            <li class="" id="tab-title1"><a data-toggle="tab" href="#tab-2" aria-expanded="false" class="count-info">企业认证</a></li>
                        </ul>
                        <div class="tab-content">
                            <!--卡片一-->
                            <div class="tab-pane active" id="tab-1" >
                                <div class="alert alert-danger"  id="errorMsg" style="margin-top: 15px;display: none;"><i class="fa fa-exclamation"></i></div>
                                <div class="form-horizontal" id="formGroupInfo">
                                    <div class="charge-group clearfix">
                                        <div class="charge-head">企业名称：</div>
                                        <div class="charge-body">
                                            <span class="pull-left">测试</span>
                                        </div>
                                    </div>
                                    <div class="hr-line-dashed"></div>
                                    <div class="charge-group clearfix">
                                        <div class="charge-head">联系电话：</div>
                                        <div class="charge-body">
                                            <span class="pull-left" id="phone">{$data.userInfo.mobile}</span>
                                            <a  data-toggle="modal" class="btn btn-primary btn-xs pull-right" href="#phoneID">{if !empty($data.userInfo.mobile)}修改{else}绑定{/if}</a>
                                        </div>
                                    </div>
                                    <div class="hr-line-dashed"></div>
                                    <div class="charge-group clearfix">
                                        <div class="charge-head">电子邮箱：</div>
                                        <div class="charge-body">
                                            <span class="pull-left" id="email">{$data.userInfo.email}</span>
                                            <a  data-toggle="modal" class="btn btn-primary btn-xs pull-right" href="#emailSectionID">{if !empty($data.userInfo.email)}修改{else}绑定{/if}</a>
                                        </div>
                                    </div>
                                    <div class="hr-line-dashed"></div>
                                    <div class="charge-group clearfix">
                                        <div class="charge-head" id="addressShowID">联系地址：</div>
                                        <div class="charge-body">
                                            <span class="pull-left">{$data.userInfo.address}</span>
                                            <a data-toggle="modal" class="btn btn-primary btn-xs pull-right demo1" id="zyChange">{if !empty($data.userInfo.address)}修改{else}绑定{/if}</a>
                                        </div>
                                    </div>
                                    <div class="hr-line-dashed"></div>
                                    <div class="charge-group clearfix">
                                        <div class="charge-head">登录账号：</div>
                                        <div class="charge-body">
                                            <span class="pull-left">{$data.userInfo.username}</span>
                                        </div>
                                    </div>
                                    <div class="hr-line-dashed"></div>
                                    <div class="charge-group clearfix">
                                        <div class="charge-head">保障方案：</div>
                                        <div class="charge-body">
                                            {foreach from=insurance_name item=inName}
                                                <button class="btn  btn-primary btn-xs" onclick="location.href='/Home/Group/insuranceList'" style="margin-right: 10px;" type="button">{$inName}</button>
                                            {/foreach}
                                        </div>
                                    </div>
                                    <div class="hr-line-dashed"></div>
                                    <div class="deposit-password charge-group clearfix">
                                        <div class="charge-head">当前密码：</div>
                                        <div class="charge-body">
                                            <input aria-required="true" class="form-control input-min-width" id="password" maxlength="20" name="old_password" required="" type="password">
                                        </div>
                                    </div>
                                    <div class="hr-line-dashed"></div>
                                    <div class="deposit-password charge-group clearfix">
                                        <div class="charge-head">新的密码：</div>
                                        <div class="charge-body">
                                            <input aria-required="true" class="form-control input-min-width" id="new_password" maxlength="20" name="password" required="" type="password">
                                        </div>
                                    </div>
                                    <div class="hr-line-dashed"></div>
                                    <div class="deposit-password charge-group clearfix">
                                        <div class="charge-head">再次确认：</div>
                                        <div class="charge-body">
                                            <input aria-required="true" class="form-control input-min-width" id="new_password_repet" maxlength="20" name="repeat" required="" type="password">
                                        </div>
                                    </div>
                                    <div class="hr-line-dashed"></div>

                                    <div class="feed-element" style="border-bottom: 0px">
                                        <div class="col-sm-8 col-sm-offset-3">
                                            <button class="btn btn-primary pull-left" type="button" id="updatePasswordBtn" disabled>提交修改</button>
                                            <div class="pull-left" style="line-height: 34px;margin-left: 100px;display: none;" id="errorMsg"></div>
                                        </div>
                                    </div>
                                </form>
                            </div>
                            </div>

                            <!--卡片二-->
                            <div class="tab-pane " id="tab-2" >
                                <div class="alert alert-warning" style="margin-top: 15px">
                                    <h3>温馨提示：</h3>
                                    <p>为了保证您的权益，请如实填写企业信息；企业认证后，如需修改，请企业负责人致电客服 400-886-2309，由此为您带来的不便，敬请谅解。</p>
                                </div>
                                <div  method="post" id="formAuthentication">
                                    <div class="alert alert-danger"  id="errorMsg2" style="margin-top: 15px;display: none;"><i class="fa fa-exclamation"></i></div>
                                    <div class="hr-line-dashed"></div>
                                    <div class="deposit-password charge-group clearfix">
                                        <div class="charge-head large-charge-head">企业名称：</div>
                                        <div class="charge-body">
                                            <input aria-required="true" class="form-control input-min-width" id="realname"  maxlength="32" placeholder="请输入企业名称" name="realname" required="" value="测试" type="text"  disabled>
                                        </div>
                                    </div>
                                    <div class="hr-line-dashed"></div>
                                    <div class="deposit-password charge-group clearfix">
                                        <div class="charge-head large-charge-head">统一社会信用代码：</div>
                                        <div class="charge-body clearfixfix" style="position: relative;">
                                            <input aria-required="true" class="form-control input-min-width" id="usci" name="usci" style="float: left;" placeholder="请输入18位统一社会信用代码" required="" maxlength="18" value="111111111111111112" type="text"  disabled>
                                            <div class="prompt-font" style="float: left;line-height: 34px;color: #f8ac59;position: absolute;right: 100px;bottom: -38px;">请至少填写一项企业认证代码</div>
                                        </div>
                                    </div>
                                    <div class="hr-line-dashed"></div>
                                    <div class="deposit-password charge-group clearfix"  >
                                        <div class="charge-head large-charge-head">组织机构代码：</div>
                                        <div class="charge-body" >
                                            <input aria-required="true" class="form-control input-min-width" id="organization"   name="repeat" placeholder="请输入9位组织机构代码"  maxlength="9" required="" value="" type="text"  >
                                        </div>
                                    </div>
                                    <div class="hr-line-dashed"></div>
                                    <div class="charge-group payment-last-money clearfixfix">
                                        <button class="btn btn-primary btn-sm btn-de submitBtn" type="button" id="submitBtn" disabled>提交修改</button>
                                    </div>
                                </div>
                            </div>

                        </div>
                    </div>
                </div>
            </div>

            <!--修改邮箱弹窗-->
            <div class="modal inmodal" id="emailSectionID" tabindex="-1" role="dialog" aria-hidden="true" style="top:50px">
                <div class="modal-dialog">
                    <div class="modal-content animated fadeIn">
                        <div class="modal-header">
                            <button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">×</span><span class="sr-only">Close</span></button>
                            <h4 class="modal-title">修改邮箱</h4>
                        </div>
                        <form method="post" id="emailFormID" class="form-horizontal">
                            <div class="modal-body" style="padding-top: 50px">
                                <div class="alert alert-danger" id="emailErrorID">
                                    <i class="fa fa-minus-square"></i> 错误！请输入正确Email地址
                                </div>
                                <div class="form-group">
                                    <label class="col-sm-3 control-label">E-mail:</label>
                                    <div class="col-sm-8">
                                        <input name="email" id="emailID" type="text" class="form-control" onkeypress="if(event.keyCode == 13){ $('#emailSubmitID').click(); return false;}" placeholder="请输入邮箱" value="wh2000292@163.com">
                                    </div>
                                </div>
                            </div>
                            <div class="modal-footer">
                                <button type="button" class="btn btn-white" data-dismiss="modal">关闭</button>
                                <button type="button" id="emailSubmitID" class="btn btn-primary">保存</button>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
            <!--修改邮箱弹窗结束-->

            <!--修改地址-->
            <div class="modal inmodal" id="addressSectionID" tabindex="-1" role="dialog" aria-hidden="true" style="top:50px">
                <div class="modal-dialog">
                    <div class="modal-content animated fadeIn">
                        <div class="modal-header">
                            <button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">×</span><span class="sr-only">Close</span></button>
                            <h4 class="modal-title">修改地址</h4>
                        </div>
                        <form method="post" id="addressFormID" class="form-horizontal">
                            <div class="modal-body" style="padding-top: 50px">
                                <div class="alert alert-danger" id="addressErrorID">
                                    <i class="fa fa-minus-square"></i> 错误！请输入正确联系地址
                                </div>
                                <div class="form-group">
                                    <label class="col-sm-3 control-label">所在地区:</label>
                                    <div class="col-sm-8" id="city_list">
                                        <select class="prov citySelect" style="margin: 0;"></select>
                                        <select class="city citySelect" disabled="disabled" style="margin: 0;"></select>
                                        <select class="dist citySelect" disabled="disabled" style="margin: 0;"></select>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="col-sm-3 control-label">详细地址:</label>
                                    <div id="city_list_echo" class="col-sm-8">
                                        <p class="form-control-static">
                                            <span class="prov" style="white-space: nowrap;text-overflow: ellipsis;"></span> &frasl;
                                            <span class="city" style="white-space: nowrap;text-overflow: ellipsis;"></span> &frasl;
                                            <span class="dist" style="white-space: nowrap;text-overflow: ellipsis;"></span>
                                        </p>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="col-sm-3 control-label"></label>
                                    <div class="col-sm-8">
                                        <textarea style="max-width:345px;max-height:100px;" class="form-control" id="addressID" oninput="value=value.replace(/[\n]/g,'')" onkeypress=" if( event.keyCode == 13) { $('#addressSubmitID').click(); return false;}" maxlength="80" placeholder="为了保证邮寄服务，请把地址具体到街道门牌号" value=""></textarea>
                                        <input type="hidden" id="address" value="" />
                                    </div>
                                </div>
                            </div>
                            <div class="modal-footer">
                                <button type="button" class="btn btn-white" data-dismiss="modal">关闭</button>
                                <button type="button" id="addressSubmitID" class="btn btn-primary">保存</button>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
            <!--修改地址结束-->

            <!--修改手机-->
            <div class="modal inmodal" id="phoneID" tabindex="-1" role="dialog" aria-hidden="true" style="top:50px">
                <div class="modal-dialog">
                    <div class="modal-content animated fadeIn">
                        <div class="modal-header">
                            <button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">×</span><span class="sr-only">Close</span></button>
                            <h4 class="modal-title">修改手机</h4>
                        </div>
                        <form method="post" id="oldMobileFormID" class="form-horizontal">
                            <div class="modal-body" style="padding-top: 50px">
                                <div class="alert alert-warning">
                                    <i class="fa fa-mobile"></i> 发送验证码到原手机<span id="mobileShowID2">18600182395</span>
                                </div>
                                <div class="alert alert-danger" id="oldMobileErrorID">
                                    <i class="fa fa-minus-square"></i>
                                </div>
                                <div class="input-group" style="width: 50%;margin: auto">
                                    <input type="text" class="form-control" id="oldVerifyCodeID" onkeypress="if(event.keyCode == 13){ $('#mobileNextID').click(); return false;}" name="oldVerifyMob">
                                    <span class="input-group-btn"> <button type="button" class="btn btn-primary" id="set_old_mob_verifyID">发送验证码</button></span>
                                </div>
                                <div class="input-group" style="width: 50%;margin: auto">
                                    <button type="button" class="btn btn-primary btn-block m-t" id="mobileNextID"> 下一步</button>
                                </div>
                            </div>
                        </form>
                        <form method="post" id="newMobileFormID" class="form-horizontal">
                            <div class="modal-body" style="padding-top: 50px">
                                <div class="alert alert-warning">
                                    <i class="fa fa-mobile"></i> 验证新号码
                                </div>
                                <div class="alert alert-danger" id="newMobileErrorID">
                                    <i class="fa fa-minus-square"></i>
                                </div>
                                <div class="input-group" style="width: 50%;margin: auto">
                                    <input type="text" class="form-control" placeholder="输入新手机号码" onkeypress="if(event.keyCode == 13){ $('#mobileSubmitID').click(); return false;}" name="mobile" id="mobileID">
                                </div>
                                <br />
                                <div class="input-group" style="width: 50%;margin: auto">
                                    <input type="text" class="form-control"  onkeypress="if(event.keyCode == 13){ $('#mobileSubmitID').click(); return false;}" id="newVerifyCodeID" name="oldVerifyMob">
                                    <span class="input-group-btn"> <button type="button" class="btn btn-primary" id="set_new_mob_verifyID">发送验证码</button></span>

                                </div>
                                <div class="input-group" style="width: 50%;margin: auto">
                                    <button type="button" class="btn btn-primary btn-block m-t" id="mobileSubmitID"> 确认修改</button>
                                </div>
                            </div>
                        </form>
                        <div class="modal-footer">
                            <button type="button" class="btn btn-white" data-dismiss="modal">关闭</button>
                        </div>

                    </div>
                </div>
            </div>

        </div>
    </div>
</div>
{/block}

{block name="js"}
    <script src="{#static_path#}/js/plugins/jquery.metisMenu.js"></script>
    <script src="{#static_path#}/js/address/jquery.cityselect.js"></script>
    <script src="{#static_path#}/js/group/safty.js"></script>
{/block}