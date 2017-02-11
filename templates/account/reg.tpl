{extends file="template/front.tpl"}

{block name="css"}
    <link href="{#static_path#}/css/login.css"  rel="stylesheet">
{/block}

{block name="container"}
    <div id="login">
        <img class="bg-img" src="{#static_path#}/images/login/enterprise.jpg" alt="企业注册背景图" style="opacity: 1;">

        <div class="login-content">
            <div class="login-font">
                中小企业员工保障
            </div>

            <div class="loginAll login-register">
                <div class="loginAll-box">
                    <div class="tab-content">
                        <p class="text-center" style="font-size: 18px">企业用户注册</p>
                        <div id="tab-1" class="tab-pane active">
                            <div class="alert alert-warning" id="RegStateIDEnterprise">
                                为了保护企业利益，方便您以后的操作，请填写真实信息，我们承诺对您填写的的信息严格保密绝不外泄！
                            </div>

                            <div class="alert alert-danger" style="display: none;padding-top: 0px">
                                <h2 style="margin-top: 10px;"><i class="fa fa-times-circle"></i> 注册失败！</h2>
                                <span id="errorMsgIDEnterprise">用户名已被使用!</span>
                            </div>

                            <div class="form-horizontal">
                                <div class="form-group">
                                    <label for="groupAccountIDEnterprise" class="col-sm-4 control-label">企业账号：</label>
                                    <div class="col-sm-8"><input name="group_account" id="groupAccountIDEnterprise" type="text" class="form-control" placeholder="企业账号"></div>
                                </div>

                                <div class="form-group">
                                    <label for="mobileID" class="col-sm-4 control-label">图形验证码：</label>
                                    <div class="col-sm-8">
                                        <div class="input-group">
                                            <input type="text" class="form-control" id="imgCodeID" placeholder="图形验证码" maxlength="11" name="mobile">
                                            <span class="input-group-btn"><img src="/util/captcha?flag=reg" data-flag="/util/captcha?flag=reg" id="changeCode" width="96" height="34" style="cursor: pointer;" title="点击切换图片验证码" ></span>
                                        </div>
                                    </div>
                                </div>

                                <div class="form-group">
                                    <label for="mobileID" class="col-sm-4 control-label">手机号码：</label>
                                    <div class="col-sm-8">
                                        <div class="input-group">
                                            <input type="text" class="form-control" id="mobileID" placeholder="手机号码" maxlength="11" name="mobile">
                                            <span class="input-group-btn"> <button type="button" class="btn btn-primary" id="setMobileVerifyID">发送验证码</button></span>
                                        </div>
                                    </div>
                                </div>

                                <div class="form-group">
                                    <label for="codeID" class="col-sm-4 control-label">验&nbsp;&nbsp;证&nbsp;&nbsp;码：</label>
                                    <div class="col-sm-8"><input name="code" id="codeID" type="text" class="form-control" maxlength="4" placeholder="验证码"></div>
                                </div>

                                <div class="form-group">
                                    <label for="passwordIDEnterprise" class="col-sm-4 control-label">登录密码：</label>
                                    <div class="col-sm-8"><input name="password" id="passwordIDEnterprise" type="password" class="form-control" placeholder="8位以上字母和数字组合"></div>
                                </div>

                                <div class="form-group">
                                    <label for="repeatIDEnterprise" class="col-sm-4 control-label">确认密码：</label>
                                    <div class="col-sm-8"><input name="repeat" id="repeatIDEnterprise" type="password" class="form-control" placeholder="确认您的登录密码"></div>
                                </div>

                                <div class="form-group">
                                    <div class="checkbox" style="padding-left:35px">
                                        <label>
                                            <input type="checkbox" value="" checked="checked" id="checkAgree">
                                            同意 <a href="#" target="_blank" class="reg-agreement">《保险极客注册协议》</a>
                                        </label>
                                    </div>
                                </div>
                                <button type="button" id="register_submit" class="btn btn-warning btn-block">注册企业用户</button>
                            </div>

                            <div class="loginAll-box-bottom text-right small">
                                已有账号？ <a href="#" style="border-bottom: 1px solid">立即登录</a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <input type="hidden" id="redirect" value="{$data.redirect}" >
{/block}

{block name="js"}
    <script src="{#static_path#}/js/login/login02.js"></script>
{/block}