{extends file="template/front.tpl"}

{block name="css"}<link href="{#static_path#}/css/login.css"  rel="stylesheet">{/block}

{block name="container"}
    <div id="login">
        <img class="bg-img" src="{#static_path#}/images/login/enterprise.jpg"  alt="企业登录背景图" data-evernote-hover-show="true" style="opacity: 1;">
        <img class="bg-img" src="{#static_path#}/images/login/user.jpg" data-evernote-hover-show="true" alt="个人用户登录背景图">

        <div class="login-content">
            <div class="login-font">
                中小企业员工保障
            </div>
            <div class="loginAll"  onselectstart="return false;" unselectable="on">
                <div class="loginAll-box">
                    <ul id="ins_tabs" class="nav-tabs">
                        <li class="active" id="groupuser">
                            <a data-toggle="tab" href="#tab-1" aria-expanded="true" style="font-weight:normal">企业管理员登录</a>
                        </li>
                        <li class="" id="puser">
                            <a data-toggle="tab" href="#tab-2" aria-expanded="false" class="count-info" style="font-weight:normal">个人用户登录</a>
                        </li>
                    </ul>
                    <div class="tab-content">
                        <div id="tab-1" class="tab-pane active">
                            <!-- 企业用户登录 -->
                            <div class="alert alert-warning" style="font-size: 13px;">不建议您在公共场所登录或保存登录信息</div>
                            <form name="form1" id="companyFormID" action="http://www.insgeek.com/login/logindo" method="post">
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
                            </form>
                            <div class="loginAll-box-bottom text-right small">
                                没有账号？ <a href="reg.htm" tppabs="http://www.insgeek.com/login/reg" style="border-bottom: 1px solid">企业注册</a>
                            </div>
                        </div>
                        <div id="tab-2" class="tab-pane">
                            <!-- 个人用户登录 -->
                            <div class="alert alert-warning" style="font-size: 13px;">不建议您在公共场所登录或保存登录信息</div>
                            <form id="form_password" name="form" action="http://www.insgeek.com/Login/logindo" method="post">
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
                                <input name="fromURL" type="hidden" value="http://www.insgeek.com/login/reg" />
                                <button type="button" id="form_password_submit" class="btn btn-warning btn-block">个人用户登录</button>
                            </form>
                            <div class="loginAll-box-bottom text-right small">
                                <a href="forget_pw.htm" tppabs="http://www.insgeek.com/login/forget_pw" style="border-bottom: 1px solid">忘记密码?</a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <script>
        var url1 = window.location.href;
        if (url1.indexOf('/puser/1') >= 0)
        {
            $("#login img").css("opacity","2");
            $('#groupuser').removeClass("active");
            $('#tab-1').removeClass("active");
            $('#puser').addClass("active");
            $('#tab-2').addClass("active");
        }
    </script>
{/block}


{block name="js"}
    <script src="{#static_path#}/js/login/login.js"></script>
{*    <script>
    {literal}
    $(document).ready(function(){
        /*两个拖动插件调用*/
        var groupDrag=$('#drag');
        var userDrag=$('#drag2');
        groupDrag.drag();
        userDrag.drag();

        $('a[data-toggle="tab"]').on('http://www.insgeek.com/Login/show.bs.tab', function (e) {
            $($(e.target).attr('href')+' img').click();
        });
        var scene = document.getElementById('scene');
        var errorMsgObj=$('#errorMsgID');
        var root = "../index.htm"
        var errorMsgGroupObj=errorMsgObj.parent();
        errorMsgGroupObj.hide();
        /*检查用户名*/
        $('#userID').on('blur',function()
        {
            var parent=$(this).parent();
            parent.removeClass('has-error');
            errorMsgGroupObj.hide();
            var user=$.trim($(this).val());
            if(user.length==0)
            {
                parent.addClass('has-error');
            }
        });


        /*检查用户密码*/
        $('#passwordID').on('blur',function()
        {
            var parent=$(this).parent();
            parent.removeClass('has-error');
            var password=$(this).val();
            var result=check_password_format(password);
            if(result==0)
            {
                parent.addClass('has-error');
            }
        });

        function check_all_inputs()
        {
            if(!userDrag.isOk()) {
                return showUserError('请拖动滑块进行验证');
            }
            var user=$.trim($('#userID').val());
            var userParent=$('#userID').parent();
            var password=$('#passwordID').val();
            var passwordParent=$('#passwordID').parent();
            userParent.removeClass('has-error');
            passwordParent.removeClass('has-error');
            errorMsgGroupObj.hide();
            var account_flag=true;
            var password_flag=true;
//            var verify_flag=true;
            var user_examine_flag = '';
//            var verify_empty_flag=true;
            var password_empty_flag = true;
            callAjax({'user': user},0,function (response){
                user_examine_flag = response;
            },"../check/getGroupUserListData/index.htm"/*tpa=http://www.insgeek.com/check/getGroupUserListData/*/);
            if (user.length==0)
            {
                account_flag=false;
            }
//            /****************用户名错误时候的验证*********************/
            else if (check_password_format(password)==0) {
                password_empty_flag=false;
            }else if(!check_user_password_match_ajax(user,password,root)) {
                password_flag=false;
            }
            //检查验证码
            /*var verifyCode=$.trim($('#verifyID').val());
             var verifyCodeParent=$('#verifyID').parent().parent();
             var verifyCodeImgChange=$("#verify_code");
             verifyCodeParent.removeClass('has-error');

             var verifyRel = check_img_verify_mob(verifyCode, root);
             if (verifyRel==0) {
             verify_empty_flag=false;
             } else if(verifyRel==2||verifyRel==3){
             verify_flag=false;
             }*/
            /*用户名错误时候的验证*/
            if(!account_flag) {
                userDrag.reset();
                userParent.addClass('has-error');
                return showUserError('用户名格式错误，请使用用户名/手机号/身份证进行登录');
            }else if(!password_empty_flag) {
                userDrag.reset();
//                verifyCodeImgChange.find("img").click();
                passwordParent.addClass('has-error');
                return showUserError('密码不能为空');
            }else if(user_examine_flag ==0){
                userDrag.reset();
//                verifyCodeImgChange.find("img").click();
                userParent.addClass('has-error');
                passwordParent.addClass('has-error');
                return showUserError('您申请的保障方案正在审核中，请联系贵公司HR或服务提供商');
            }else if(!password_flag) {
                userDrag.reset();
//                verifyCodeImgChange.find("img").click();
                userParent.addClass('has-error');
                passwordParent.addClass('has-error');
                return showUserError('用户名或密码错误');
            }
            return true;
        }
        function showUserError(msg){
            errorMsgObj.html(msg).show();
            errorMsgGroupObj.show();
            return false;
        }

        $('#verifyID').on('focus',function()
        {
            $(this).parent().parent().removeClass('has-error');
        });


        /*提交登录表单*/
        function userClick(){
            if(check_all_inputs())
            {
                $('#form_password').submit();
            }
        }
        $('#form_password_submit').on('click',userClick);


        /*******************************企业登录相关*******************************/
        var companyErrorMsgObj=$('#companyErrorMsgID');
        var companyErrorParentObj=companyErrorMsgObj.parent();
        var companyUserObj=$('#company_userID');
        var companyUserObjParent=companyUserObj.parent();
        var companyPwdObj=$('#company_pwdID');
        var companyPwdObjParent=companyPwdObj.parent();
        var companyVerifyObj=$('#company_verifyID');
        var companyVerifyObjParent=companyVerifyObj.parent();
        var companySubmitID=$('#company_submit');
        companyErrorMsgObj.html('');
        companyErrorParentObj.hide();
        companyUserObj.on('blur',function(){
            var account=$.trim($(this).val());
            if(!checkUserFormat(account))
            {
                companyUserObjParent.addClass("has-error");
            }else if(companyUserObjParent.attr("class").indexOf("has-error")!=-1){
                companyUserObjParent.removeClass("has-error");
            }
        });

        companyPwdObj.on('blur',function(){
            var password=$(this).val();
            if (!checkPasswordFormat(password))
            {
                companyPwdObjParent.addClass("has-error");
            }else  if(companyPwdObjParent.attr("class").indexOf("has-error")!=-1){
                companyPwdObjParent.removeClass("has-error");
            }
        });


        function checkUserFormat(user)
        {
            var flag=true;
            if(user.length==0)
            {
                flag=false;
            }
            return flag;
        }

        function checkPasswordFormat(password)
        {
            return password.length!=0;
        }

        function checkCompanyAllInputs()
        {
            var flag=false;
            var account=$.trim(companyUserObj.val());
            var password=companyPwdObj.val();
            companyErrorMsgObj.html('');
            if(!groupDrag.isOk()){
                showCompanyError('请拖动滑块进行验证',false);
            }else if (!checkUserFormat(account))
            {
                groupDrag.reset();
                companyUserObjParent.addClass("has-error");
                showCompanyError('请输入公司账号',false);
            } else if (!checkPasswordFormat(password))
            {
                groupDrag.reset();
                companyPwdObjParent.addClass("has-error");
                showCompanyError('账户或密码错误',true);
            }else if(!checkPassword(account,password))
            {
                groupDrag.reset();
                companyPwdObjParent.addClass("has-error");
                companyUserObjParent.addClass("has-error");
                showCompanyError('账户或密码错误',true);
            }
            else
            {
                flag=true;
            }
            return flag;

        }
        function showCompanyError(msg,isRefreshVerify){
            if(isRefreshVerify){
                companyVerifyObj.next().find('img').click();
            }
            companyErrorMsgObj.html(msg);
            companyErrorParentObj.show();
        }
        function checkGroupUserExists(account)
        {
            var flag=false;
            callAjax( { "user": account }, 0, function ( response ) {
                if ( response ) {
                    flag=true;
                }
            }, "../check/checkGroupUserExistsAjax/index.htm"/*tpa=http://www.insgeek.com/check/checkGroupUserExistsAjax/*/ );
            return flag;
        }
        function checkPassword(account,password)
        {
            var flag=false;
            var option='group';
            callAjax( { 'option' : option, 'password' : password, 'user' : account }, 0, function ( response ) {
                if ( response == 1 ) {
                    flag= true;/*密码正确*/
                }
            }, "../check/check_password_ajax/index.htm"/*tpa=http://www.insgeek.com/check/check_password_ajax/*/ );
            return flag;
        }
        function companyClick(){
            if(companyPwdObjParent.attr("class").indexOf("has-error")!=-1){
                companyPwdObjParent.removeClass("has-error");
            }else if(companyUserObjParent.attr("class").indexOf("has-error")!=-1){
                companyUserObjParent.removeClass("has-error");
            }
            if(checkCompanyAllInputs())
            {
                $('#companyFormID').submit();
            }
        }

        companySubmitID.on('click',companyClick);
        /*点击enter键实现同样的点击效果*/
        var insTabs=$("#ins_tabs");
        $(document).on("keydown", function (event) {
            var e=event||window.event;
            if(e&& e.keyCode==13){
                var num=insTabs.find("li.active").index();
                if(num==0){
                    companyClick();
                }else if(num==1){
                    userClick();
                }
            }
        });
        /*点击切换背景图片*/
        var insTabsLi=insTabs.find("li"),
                bgImg=$(".bg-img"),
                preNum= 0;
        insTabsLi.on("click", function () {
            var liNum=$(this).index();
            if(preNum!=liNum){
                bgImg.eq(preNum).animate({
                    opacity:0
                });
                bgImg.eq(liNum).finish();
                bgImg.eq(liNum).animate({
                    opacity:1
                });
            }else {

            }
            preNum=liNum;
        });
    });
    {/literal}
    </script>*}
{/block}