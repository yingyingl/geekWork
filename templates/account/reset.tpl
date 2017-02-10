{extends file="template/front.tpl"}

{block name="css"}{/block}

{block name="container"}
    <div class="row wrapper wrapper-content">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="ibox float-e-margins">

                        <div class="ibox-title">找回密码</div>

                        <div class="ibox-content">
                            <div class="alert alert-warning">
                                <h2>开始找回密码</h2>
                                请输入您注册时使用的用户名/手机号码/身份证号码<br />如果需要帮助，请联系我们的 <strong>客服专员400-886-2309</strong>
                            </div>

                            <div class="passwordBox" style="padding-top: 50px;padding-bottom: 50px">
                                <div class="row">
                                    <div class="col-md-12">
                                        <div class="row">

                                            <div class="col-lg-12">
                                                <div class="alert alert-danger alert-dismissable" id="errorMsgID">错误信息提示.</div>

                                                <form id="submitUserNameFormID" class="m-t" role="form" method="post" action="http://www.insgeek.com/Login/forget_pw2.html">
                                                    <div class="form-group">
                                                        <input name="username" id="usernameID" type="text" class="form-control" placeholder="账号 / 手机号码 / 身份证号码"/>
                                                    </div>

                                                    <button type="button" id="submitBtnId" class="btn btn-primary block full-width m-b">下一步</button>
                                                </form>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <hr>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
{/block}