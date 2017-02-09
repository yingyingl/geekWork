{extends file="template/front.tpl"}

{block name="css"}
    <link href="{#static_path#}/css/login.css"  rel="stylesheet">
{/block}

{block name="container"}
    <div id="login">
        <img class="bg-img" src="{#static_path#}/images/login/enterprise.jpg"  alt="企业登录背景图" style="opacity: 1;">
        <img class="bg-img" src="{#static_path#}/images/login/user.jpg" alt="个人用户登录背景图">

        <div class="login-content">
            <div class="login-font">中小企业员工保障</div>

            <div class="loginAll"  onselectstart="return false;" unselectable="on">
                <div class="loginAll-box">

                    <ul id="ins_tabs" class="nav-tabs">
                        <li class="active" id="groupuser">
                            <a data-toggle="tab" href="#tab-1" aria-expanded="true">企业管理员登录</a>
                        </li>
                        <li class="" id="puser">
                            <a data-toggle="tab" href="#tab-2" aria-expanded="false" class="count-info">个人用户登录</a>
                        </li>
                    </ul>

                    <div class="tab-content">
                        <!-- 企业用户登录 -->
                        <div id="tab-1" class="tab-pane active">
                            <div class="alert alert-warning" style="font-size: 13px;">不建议您在公共场所登录或保存登录信息</div>

                            <div class="alert alert-danger alert-dismissable">
                                <p class="small" id="companyErrorMsgID">您输入用户名或密码错误</p>
                            </div>

                            <div class="form-group">
                                <label>企业账号</label>
                                <input name="user" id="company_userID" type="text" class="form-control" placeholder="企业账号">
                            </div>

                            <div class="form-group">
                                <label for="passwordID">登录密码</label>
                                <input name="password" id="company_pwdID" type="password" class="form-control" placeholder="密码">
                            </div>

                            <div class="form-group">
                                <label>验证</label>
                                <div class="input-group drag-public" id="dr ag" style="width: 100%;">
                                    <div id="drag" class="drag-public"></div>
                                </div>
                            </div>

                            <input type="hidden" value="1" name="isGroupUser"/>
                            <button type="button" id="company_submit" class="btn btn-warning btn-block">企业用户登录</button>

                            <div class="loginAll-box-bottom text-right small">
                                没有账号？
                                <a href="#" style="border-bottom: 1px solid">企业注册</a>
                            </div>
                        </div>

                        <!-- 个人用户登录 -->
                        <div id="tab-2" class="tab-pane">

                            <div class="alert alert-warning" style="font-size: 13px;">不建议您在公共场所登录或保存登录信息</div>
                            <form id="form_password" name="form" action="/Login/logindo" method="post">
                                <div class="alert alert-danger alert-dismissable">
                                    <p class="small" id="errorMsgID">您输入用户名或密码错误.</p>
                                </div>
                                <div class="form-group">
                                    <label>登录名称</label>
                                    <input name="user" id="userID" type="text" class="form-control" placeholder="账号 / 手机号码 / 身份证">
                                </div>
                                <div class="form-group">
                                    <label for="passwordID">登录密码</label>
                                    <input name="password" id="passwordID" type="password" class="form-control" placeholder="密码">
                                </div>
                                <div class="form-group">
                                    <label>验证</label>

                                    <div class="input-group">
                                        <div id="drag2" class="drag-public" style="width: 340px"></div>
                                    </div>
                                </div>
                                <input name="fromURL" type="hidden" value="/login/reg" />
                                <button type="button" id="form_password_submit" class="btn btn-warning btn-block">个人用户登录</button>
                            </form>

                            <div class="loginAll-box-bottom text-right small">
                                <a href="#" style="border-bottom: 1px solid">忘记密码?</a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
{/block}


{block name="js"}
    <script src="{#static_path#}/js/login/login02.js"></script>
{/block}