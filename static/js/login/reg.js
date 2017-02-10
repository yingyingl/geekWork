$(document).ready(function () {
    /*企业用户注册验证*/
    /*三个选框*/
    var mobileIDEn=$("#mobileID"),
        $code = $( '#codeID'),
        passwordIDEn=$("#passwordIDEnterprise"),
        repeatIDEn=$("#repeatIDEnterprise");
    var groupAccountIDEn = $("#groupAccountIDEnterprise");
    var verify_obj = $("#company_verifyID");
    var verify_parent = verify_obj.parents(".form-group");
    /*三个选框对应的祖先元素*/
    var mobileIDEnParent=mobileIDEn.parents(".form-group"),
        passwordIDEnParent=passwordIDEn.parents(".form-group"),
        repeatIDEnParent=repeatIDEn.parents(".form-group"),
        $codeParent = $code.parents(".form-group");
    var groupAccountIDEnParent = groupAccountIDEn.parents(".form-group");

    groupAccountIDEn.on('blur',function(){
        groupAccountIDEnParent.removeClass('has-error');
        if(check_username_format(groupAccountIDEn.val(),false)!=1){
            groupAccountIDEnParent.addClass('has-error');
        }
    });


    /*焦点验证邮箱框*/
    mobileIDEn.on("blur", function () {
        var mobileIDEnText= $.trim(mobileIDEn.val());
        mobileIDEnParent.removeClass('has-error');
        if(check_email_format(mobileIDEnText)!=1){
            mobileIDEnParent.addClass('has-error');
        }
    });
    /*焦点验证密码框*/
    passwordIDEn.on('blur', function () {
        var passwordIDEnText=passwordIDEn.val(),
            repeatIDEnText=repeatIDEn.val();
        var result = check_password_format(passwordIDEnText);
        repeatIDEnParent.removeClass('has-error');
        passwordIDEnParent.removeClass('has-error');
        if (result == 0) {
            passwordIDEnParent.addClass('has-error');
        } else if (result == 2) {
            passwordIDEnParent.addClass('has-error');
        } else {
            if (repeatIDEnText != '' && repeatIDEnText != passwordIDEnText) {
                passwordIDEnParent.addClass('has-error');
                repeatIDEnParent.addClass('has-error');
            }
        }
    });

    //初始化短信发送控件
    var mob = $( '#setMobileVerifyID').verifyMob({
        mobile: mobileIDEn,
        code: $code,
        error: function(code) {
            if(code==1){
                addError(regStateObjEn,mobileIDEnParent);
                showError('手机号码格式不正确',errorMsgObjEn,errorMsgParentObjEn);
            }
        },
        domain: root
    });

    mobileIDEn.on('blur',function(){
        mobileIDEnParent.removeClass('has-error');
        if(check_mobile_format(mobileIDEn.val(),false)!=1){
            mobileIDEnParent.addClass('has-error');
        }
    });

    $code.on('blur',function(){
        $codeParent.removeClass('has-error');
        if(mob.verifyFormat()!=1){
            $codeParent.addClass('has-error');
        }
    });

    /*点击提交*/
    var errorMsgObjEn = $('#errorMsgIDEnterprise'),
        regStateObjEn = $('#RegStateIDEnterprise');
    var errorMsgParentObjEn = errorMsgObjEn.parent();
    //var verify_obj = $("#formRegEnterprise input[name='verify']");
    var verify_img = $("#formRegEnterprise img");
    var check_box = $("#formRegEnterprise input[type='checkbox']");
    /*1.提交验证邮箱*/
    var formSubmitEn=$("#form_submit_enterprise");
    var $formObj = $("#formRegEnterprise");
    function enterpriseClick(){
        if(checkGroupInfoCanSubmit()){
            if($formObj.data('request') == 'ajax'){
                callAjax($formObj.serialize(),PRD,function(request){
                    if(request>0){
                        setTimeout(successAlert,50);       //延时执行弹出框（解决Enter冲突问题）
                    }
                },root+'/login/groupRegDo/');
            }else {
                $formObj.submit();
            }
        }
    }

    var successAlert = function(){
        swal({
            title : '企业注册',
            text  : '恭喜您，注册成功！',
            type  : 'warning',
            confirmButtonColor : '#DD6B55',
            confirmButtonText  : '确认'
        }, function (isConfirm){
            if(isConfirm) {
                $( '#queryForm' ).submit();
                setTimeout(function(){
                    location.reload();
                }, 10);
            }
        });
    };

    function checkGroupInfoCanSubmit(){
        var mobileIDEnText= $.trim(mobileIDEn.val()),
            passwordIDEnText=passwordIDEn.val(),
            repeatIDEnText=repeatIDEn.val();
        var group_account = $.trim(groupAccountIDEn.val());
        var verify_id = $.trim(verify_obj.val());

        mobileIDEnParent.removeClass('has-error');
        repeatIDEnParent.removeClass('has-error');
        passwordIDEnParent.removeClass('has-error');
        groupAccountIDEnParent.removeClass('has-error');
        verify_parent.removeClass('has-error');

        var passwordEnFlag=true,
            repeatEnFlag=true;
        var emailIsExists = true;
        var groupAccountIsExists = true;
        var groupAccountFormat = true;

        var verifyCode = true;
        var codeFormat = true;
        var mobileFormat = true;

        //if(check_img_verify_mob(verify_id,root) != 1){
        //    addError(regStateObjEn,verify_parent);
        //    verifyFlag = false;
        //}
        if(check_username_format(group_account,false) != 1){
            groupAccountFormat = addError(regStateObjEn,groupAccountIDEnParent);
        }

        if(check_group_account_exist_ajax(group_account,root)){
            addError(regStateObjEn,groupAccountIDEnParent);
            groupAccountIsExists=false;
        }
        //if(check_email_format(mobileIDEnText)!=1){
        //    addError(regStateObjEn,mobileIDEnParent);
        //    mobileEnFlag=false;
        //}
        if(check_password_format(passwordIDEnText) != 1){
            passwordEnFlag=addError(regStateObjEn,passwordIDEnParent);
        }
        if(check_password_format(repeatIDEnText) != 1){
            repeatEnFlag=addError(regStateObjEn,repeatIDEnParent);
        }
        if (repeatIDEnText != passwordIDEnText) {
            repeatEnFlag=addError(regStateObjEn,repeatIDEnParent);
        }
        //if(check_email_exist_ajax(mobileIDEnText,root)){
        //    addError(regStateObjEn,mobileIDEnParent);
        //    emailIsExists=false;
        //}
        //if(check_group_account_exist_ajax(group_account,root)){
        //    addError(regStateObjEn,groupAccountIDEnParent);
        //    groupAccountIsExists=false;
        //}
        if((r = mob.verifyAjax())!=1){
            if(r==0){
                //验证码不匹配
                verifyCode = addError(regStateObjEn,$codeParent);
            }
            if(r==2){
                //验证码格式不正确
                codeFormat = addError(regStateObjEn,$codeParent);
            }
            if(r==3){
                //手机号码格式不正确
                mobileFormat = addError(regStateObjEn,mobileIDEnParent);
            }
        }
        if(!check_box.is(':checked')){
            swal('警告！','您忘记勾选同意《保险极客注册协议》','warning');
            return false;
        }else if(!mobileFormat){
            showError('手机号码格式不正确',errorMsgObjEn,errorMsgParentObjEn);
        }else if(!verifyCode){
            showError('验证码不匹配',errorMsgObjEn,errorMsgParentObjEn);
        }else if(!codeFormat){
            showError('验证码格式不正确',errorMsgObjEn,errorMsgParentObjEn);
        }else if(!passwordEnFlag){
            showError('密码格式错误。密码长度8-20位，同时包括字母和数字',errorMsgObjEn,errorMsgParentObjEn);
        }else if(!repeatEnFlag){
            showError('两次密码输入不一致',errorMsgObjEn,errorMsgParentObjEn);
        }else if(!emailIsExists){
            showError('邮箱已经存在',errorMsgObjEn,errorMsgParentObjEn);
        }else if(!groupAccountFormat){
            showError('企业账号格式有误请重新输入（可输入格式：2-18位字母、数字、“-”、“_”且首字符不能为“数字”和“-”）',errorMsgObjEn,errorMsgParentObjEn);
        }else if(!groupAccountIsExists){
            showError('您要注册的企业账号已经存在，请登录或者选择新的账号',errorMsgObjEn,errorMsgParentObjEn);
        }

        if(verifyCode && codeFormat && mobileFormat && passwordEnFlag && repeatEnFlag && emailIsExists && groupAccountIsExists && groupAccountFormat){
            errorMsgParentObjEn.hide();
            verify_parent.removeClass('has-error');
            mobileIDEnParent.removeClass('has-error');
            passwordIDEnParent.removeClass('has-error');
            repeatIDEnParent.removeClass('has-error');
            return true;
        }else{
            return false;
        }
    }

    function addError(stateObj,obj){
        stateObj.hide();
        obj.addClass('has-error');
        return false;
    }

    function showError(msg,errorMsgObj,errorMsgParentObj,refreshImg){
        //if(refreshImg)
        //{
        //    verify_img.click();
        //}
        errorMsgObj.html(msg);
        errorMsgParentObj.show();
        return false;
    }
    formSubmitEn.on("click", enterpriseClick);
    /*按下键盘enter键实现和点击按钮一个效果*/
    var insTabs=$("#ins_tabs");
    //$(document).on("keydown", function (event) {
    //    var e=event||window.event;
    //    if(e&& e.keyCode==13){
    //        var num=insTabs.find("li.active").index();
    //        if(num==0){
    //            enterpriseClick();
    //        }else if(num==1){
    //            userClick();
    //        }
    //    }
    //});
    $( '#formRegEnterprise input').keydown(function () {
        if(event.keyCode == 13){
            enterpriseClick();
        }
    });
    /*点击切换背景图片*/
    var insTabsLi=insTabs.find("li"),
        bgImg=$(".bg-img"),
        preNum= 0;
    insTabsLi.on("click", function () {
        var liNum=$(this).index();
        if(liNum!=preNum){
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
