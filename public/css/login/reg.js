/*
* vm:54mI5pys57yW5Y+3ICAgOiAyLjMuMQrkv67mlLnml7bpl7QgICA6IDIwMTYvMDgvMTgK5L+u5pS55Lq65ZGYICAgOiDlronlrZDmtrUK5L+u5pS55Y6f5ZugICAgOiDnpoXpgZMgLSBCVUcjMTE4NyDvvJrjgJBUYXNrNzMx44CRIOWcqOi0reS5sOagh+WTgeaXtuagueaNruaPkOekuuazqOWGjOaWsOeUqOaIt++8jOazqOWGjOaIkOWKn+WQjumhtemdouayoeaciei3s+i9rOeZu+W9leOAgg==
* */
$(document).ready(function () {
//    /*个人用户注册验证*/
//    var scene = document.getElementById('scene');
//
//    var regStateObj = $('#RegStateID');
//    var errorMsgObj = $('#errorMsgID');
//    var errorMsgParentObj = errorMsgObj.parent();
//
//    /*前台页面的各个输入项规则检查*/
//    /*用户名格式检查*/
//    $('#usernameID').on('blur', function () {
//        var username = $.trim($(this).val());
//        var parent = $(this).parent().parent();
//        parent.removeClass('has-error');
//        var result = check_username_format(username, false);
//        if (result == 0) {
//            parent.addClass('has-error');
//        }
//        else if (result == 2) {
//            parent.addClass('has-error');
//        }
//        else {
//            parent.removeClass('has-error');
//        }
//    });
//    /*用户手机格式检查*/
//    $('#mobileID').on('blur', function () {
//        var mobile = $.trim($(this).val());
//        var result = check_mobile_format(mobile, false);
//        var parent = $(this).parent().parent();
//        parent.removeClass('has-error');
//        if (result == 0) {
//            parent.addClass('has-error');
//        }
//        else if (result == 2) {
//            parent.addClass('has-error');
//        }
//        else {
//            parent.removeClass('has-error');
//            equals(mobile_befor, mobile);   //检查手机号码是否改变
//        }
//    });
//
//    //str1为修改前的手机号码，str2为修改后的手机密码，检查手机号码是否改变
//    function equals(str1, str2) {
//        if (str1 == str2) {
//            return true;
//        } else {
//            //del_mob_verify();
//            del_mobile_verify_mob(str1, root);
//            //结束倒计时
//            var obj = $("#show_time");
//            var num = 0;
//            obj.html(num);
//        }
//    }
//
//    /*检查电子邮箱*/
//    $('#emailID').on('blur', function () {
//        var email = $.trim($(this).val());
//        var parent = $(this).parent().parent();
//        parent.removeClass('has-error');
////        errorMsgParentObj.hide();
//        var result = check_email_format(email);
//        if (result == 0) {
//            parent.addClass('has-error');
//        }
//        else if (result == 2) {
//            parent.addClass('has-error');
//        }
//        else {
//            parent.removeClass('has-error');
//        }
//    });
//    /*密码格式检查*/
//    $('#passwordID').on('blur', function () {
//        var password = $(this).val();
//        var result = check_password_format(password);
//        var passwordParent = $(this).parent().parent();
//        var repeatObj = $('#repeatID');
//        var repeatP = repeatObj.val();
//        var repeatParent = repeatObj.parent().parent();
//        repeatParent.removeClass('has-error');
//        passwordParent.removeClass('has-error');
//        if (result == 0) {
//            passwordParent.addClass('has-error');
//        }
//        else if (result == 2) {
//            passwordParent.addClass('has-error');
//        }
//        else {
//            if (repeatP != '' && repeatP != password) {
//                passwordParent.addClass('has-error');
//                repeatParent.addClass('has-error');
//            }
//        }
//    });
//
//    /*重复密码格式检查*/
//    $('#repeatID').on('blur', function () {
//        var passwordObj = $('#passwordID');
//        var passwordParentObj = $('#passwordID').parent().parent();
//        var password = passwordObj.val();
//        var repeatP = $(this).val();
//        var repeatParentObj = $(this).parent().parent();
//        repeatParentObj.removeClass('has-error');
//        passwordParentObj.removeClass('has-error');
//
//        var result = check_password_format(repeatP);
//        if (result == 0) {
//            repeatParentObj.addClass('has-error');
//        }
//        else if (result == 2) {
//            repeatParentObj.addClass('has-error');
//        }
//        else {
//            if (check_password_format(password) == 1) {
//                if (repeatP != password) {
//                    repeatParentObj.addClass('has-error');
//                }
//            }
//        }
//    });
//    var verify_mob_try_count = 3;
//    var number = 1;
//    var send = true;
//    var mobile_befor; //记录修改前的验证码
//    var val = document.getElementById("set_user_mob_verify");
//    var maxnum_day = 11;   //每天最大发送验证码次数
//    var count = 0;         //三分钟内发送的验证次数
//    var time = 180000;     //时间段3分钟=180000毫秒
//    var maxnum_sen3 = 3;		//三分钟内发送的验证次数
//    var curntnum = 1;    //统计点击按钮的次数
//    $('#set_user_mob_verify').on('click', function () {
//        var mobile = $.trim($('#mobileID').val());
//
//        if(check_mobile_exist_ajax(mobile,root))
//        {
//            regStateObj.hide();
//            return showError('该手机号已经被注册!请使用其他手机号!',errorMsgObj,errorMsgParentObj,false);
//        }
//
//        if (curntnum == maxnum_day) {
//            regStateObj.hide();
//            return showError('您今天已经发送10次验证码,请明天再发送!',errorMsgObj,errorMsgParentObj,false);
//        } else {
//            if (count == 0) {
//                setTimeout(clock, time);
//
//            } else if (count == maxnum_sen3) {
//                regStateObj.hide();
//                return showError('您发送验证码的次数过于频繁,请三分钟后再发送!',errorMsgObj,errorMsgParentObj,false);
//            }
//            /*获取验证码*/
//            if (send && (number > 0) && (number < 6)) {
//                mobile_befor = mobile;
//                /*手机号错误，不进行验证码的获取*/
//                if (!check_mobile_format(mobile, false)) {
//                    return;
//                }
//                else {
//                    if (set_mobile_verify_mob(mobile, root)) {
//                        count = count + 1;
//                        curntnum += 1;
//                        number++;
//                        send = false;
//                        verify_mob_try_count = 3;
//                        $(this).html('已经发送');
//                        setTimeout(timing_begin, 3000);
//                        /*到时删除正确的手机验证码*/
//                        setTimeout(del_mob_verify, 123000);
//                    }
//                    else {
//                        $(this).html('发送失败');
//                    }
//                }
//            }
//            else if (!send) {
//            }
//            else {
//                $(this).html('最多获取5次');
//            }
//        }
//    });
//    function clock() {
//        count = 0;
//        val.removeAttribute("disabled");
//        errorMsgParentObj.hide();
//        regStateObj.show();
//    }
//
//    function del_mob_verify() {
//        var mobile = $.trim($('#mobileID').val());
//        del_mobile_verify_mob(mobile, root);
//        //结束倒计时
//        var obj = $("#show_time");
//        var num = 0;
//        obj.html(num);
//    }
//
//    function timing_begin() {
//        $("#set_user_mob_verify").html('<font style="color:#FFFFFF;"><em style="font-style:normal;color:#ee3300;" id="show_time">120</em> 秒后失效</font>');
//        autoTime();
//    }
//
//    function autoTime() {
//        var obj = $("#show_time");
//        var num = parseInt(obj.html());
//        num--;
//        obj.html(num);
//        if (num < 0) {
//            number = 1;
//            send = true;
//            $("#set_user_mob_verify").html('重新发送');
//            clearTimeout(setT);
//            return;
//        }
//        var setT = setTimeout(autoTime, 1000);
//    }
//
//    /*检查手机验证码
//     $('#verify_mobID').on('blur',function()
//     {
//     var mobileObj=$('#mobileID');
//     var mobile=$.trim(mobileObj.val());
//     var verify_mob=$.trim($(this).val());
//     var verify_mob_msgObj=$(this).siblings('.ig-msg');
//     var result=check_verify_mob(mobile,verify_mob,root);
//     verify_mob_msgObj.html('').hide();
//     if(result==-1)
//     {
//     verify_mob_msgObj.html('<i class="error">手机号码格式错误</i>').show();
//     }
//     else if(result==0)
//     {
//     verify_mob_msgObj.html('<i class="error">验证码不匹配</i>').show();
//     }
//     else if(result==2)
//     {
//     verify_mob_msgObj.html('<i class="error">验证码格式错误</i>').show();
//     }
//     else
//     {
//     verify_mob_msgObj.html('').hide();
//     }
//
//     });
//     */
//
//
//    function check_all_inputs() {
//        var username = $.trim($('#usernameID').val());
//        var usernameParentObj = $('#usernameID').parent().parent();
//        usernameParentObj.removeClass('has-error');
//        var mobile = $.trim($('#mobileID').val());
//        var mobileParentObj = $('#mobileID').parent().parent();
//        mobileParentObj.removeClass('has-error');
//        var verify_mob = $.trim($('#verify_mobID').val());
//        var verify_mobParentObj = $('#verify_mobID').parent().parent().parent();
//        verify_mobParentObj.removeClass('has-error');
//        var password = $('#passwordID').val();
//        var passwordParentObj = $('#passwordID').parent().parent();
//        passwordParentObj.removeClass('has-error');
//        var repeat = $('#repeatID').val();
//        var repeatParentObj = $('#repeatID').parent().parent();
//        repeatParentObj.remove('has-error');
//        var email = $.trim($('#emailID').val());
//        var emailParentObj = $('#emailID').parent().parent();
//        emailParentObj.removeClass('has-error');
//        errorMsgParentObj.hide();
//        var username_flag = 1;
//        var email_flag = 1;
//        var mobile_flag = 1;
//        var verifyMob_flag = 1;
//        var password_flag = 1;
//        var repeat_flag = 1;
//        //step1 check username
//        if (check_username_format(username, false) != 1) {
//            addError(regStateObj,usernameParentObj);
//            username_flag = 0;
//        }
//        else//检查用户名是否存在
//        {
//            if (check_username_exist_ajax(username, root)) {
//                addError(regStateObj,usernameParentObj);
//                username_flag = -1;
//            }
//        }
//        if (check_email_format(email) != 1) {
//            addError(regStateObj,emailParentObj);
//            email_flag = 0;
//        }
//        else {
//            if (check_email_exist_ajax(email, root)) {
//                addError(regStateObj,emailParentObj);
//                email_flag = -1;
//            }
//        }
//        if (check_mobile_format(mobile, false) != 1) {
//            addError(regStateObj,mobileParentObj);
//            mobile_flag = 0;
//        }
//        else {
//            if (check_mobile_exist_ajax(mobile, root)) {
//                addError(regStateObj,mobileParentObj);
//                mobile_flag = -1;
//            }
//        }
//        if (check_verify_mob(mobile, verify_mob, root) != 1) {
//            addError(regStateObj,verify_mobParentObj);
//            verifyMob_flag = 0;
//            verify_mob_try_count--;
//            if (verify_mob_try_count < 1) {
//                del_mob_verify();
//            }
//        }
//        if (check_password_format(password) != 1) {
//            addError(regStateObj,passwordParentObj);
//            password_flag = 0;
//        }
//        if (repeat != password) {
//            addError(regStateObj,repeatParentObj);
//            repeat_flag = 0;
//        }
//        if (username_flag == 0) {
//            return showError('账号格式错误：3-18个字符，只能使用"数字"|"字母"|"中文"，第一个字符不能是数字。',errorMsgObj,errorMsgParentObj,false);
//        }
//        else if (username_flag == -1) {
//            return showError('该用户名已经被注册',errorMsgObj,errorMsgParentObj,false);
//        }
//        if (email_flag == 0) {
//            return showError('邮箱格式错误',errorMsgObj,errorMsgParentObj,false);
//        }
//        else if (email_flag == -1) {
//            return showError('该邮箱已经被注册',errorMsgObj,errorMsgParentObj,false);
//        }
//        if (mobile_flag == 0) {
//            return showError('手机号格式错误',errorMsgObj,errorMsgParentObj,false);
//        }
//        else if (mobile_flag == -1) {
//            return showError('该手机号已经被注册',errorMsgObj,errorMsgParentObj,false);
//        }
//        if (verifyMob_flag == 0) {
//            return showError('验证码与该手机号不匹配',errorMsgObj,errorMsgParentObj,false);
//        }
//
//        if (password_flag == 0) {
//            return showError('密码格式错误。请输入8-20位字符做为密码，密码必须同时包含数字和字母，可以包含特殊字符',errorMsgObj,errorMsgParentObj,false);
//        }
//        if (repeat_flag == 0) {
//            return showError('两次密码输入不一致',errorMsgObj,errorMsgParentObj,false);
//        }
//        return true;
//    }
//    /*提交表单信息*/
//    function userClick(){
//        if (check_all_inputs()) {
//            $('#formReg').submit();
//        }
//    }
//    $('#form_submit').on('click', userClick);
//    /******个人用户注册验证结束******/


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
