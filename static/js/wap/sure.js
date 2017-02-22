$(document).ready(function ()
{
    var defAddr = '';
    var isMedicare = '0';
    var relType = '1';
    var $medicareType = $('select[name=medicare_type]');
    if (isMedicare == 1 && relType == 1) {
        var city = new LArea();
        city.init({
            trigger: '#ins_addr',
            valueTo: '#ins_addr_v',
            keys: {
                id: 'id',
                name: 'name'
            },
            type: 1,
            data: wechat_addr_data,
        }).setDefault(mapping[defAddr], defAddr);
    }
    /*Error Functions*/
    // show error toast
    var tooltips = $( '.js_tooltips' );
    function showToastError(msg,timeout,obj){
        //only mainAccount/realname/relAccount need weui_icon_warn
        if(obj!=null){
            obj.parent().next('.weui_cell_ft').find('i').addClass('weui_icon_warn');
        }
        tooltips.show();
        if(timeout!=0) {
            setTimeout(function () {
                tooltips.hide();
            }, timeout);
        }
        tooltips.text(msg);
        return false;
    }

    // remove error class
    function removeError(obj){
        obj.parent().next('.weui_cell_ft').find('i').removeClass('weui_icon_warn');
    }
    // when input change ,remove error class
    $('input').bind('input propertychange', function() {
        $('.weui_cell_ft i').removeClass('weui_icon_warn');
    });

    //one button dialog
    var oneBtDiaObj = $( '#oneBtDia' );
    var oneBtTitleObj = $( '#oneBtDia .weui_dialog_title' );
    var oneBtTextObj = $( '#oneBtDia .weui_dialog_bd' );
    function showWindowError(title,text){
        oneBtDiaObj.show();
        oneBtTitleObj.text(title);
        oneBtTextObj.text(text);
    }

    //confirm button
    function oneBtConfirmCallBack(){
        oneBtDiaObj.hide();
    };
    $( '#oneBtDia .submitBtn').on('click',function(){
        oneBtConfirmCallBack();
    });

    /*****************/
    var submitObj = $('#groupReg2 #submitId');

    //step1. 检查被保险人的姓名和证件
    var relType = "1";
    var relNameDis = "";
    var mainNameDis = "";
    var realnameObj = $('#groupReg2 #realname').find('input');
    realnameObj.change(function () {
        checkAppliedNameForDis();
    });

    function checkAppliedNameForDis() {
        var name = realnameObj.val();
        var result = checkAppliedRealName(name);
        var flag = false;
        removeError(realnameObj);
        switch (result) {
            case 0:
                showToastError('被保险人的真实姓名不能为空。',5000,realnameObj);
                break;
            case 1:
                flag = true;
                tooltips.hide();
                break;
            case 2:
                showToastError('被保险人的真实姓名格式错误。',5000,realnameObj);
                break;
        }
        return flag;
    }
    var mainAccountObj=$('#groupReg2 input[name="mainAccount"]');
    mainAccountObj.change(function(){
        var id_number= $.trim($(this).val());
        checkMainAccountId(id_number);
    });
    function checkMainAccountId(id_number){
        removeError(mainAccountObj);
        if(id_number.length==0){
            showToastError('被保险人的证件号码不能为空。',5000,mainAccountObj);
            return false;
        }
        if(!check_id_number_format(id_number)){
            showToastError('被保险人的身份证校验位错误。',5000,mainAccountObj);
            return false;
        }
        return true;
    }

    /*检查被保险人的真实姓名
     * 0：空
     * 1：正确
     * 2：格式错误
     * */
    function checkAppliedRealName(name) {
        //本人
        if (relType == 1) {
            if (mainNameDis != '') {
                return 1;
            }
        } else {
            //连带被保险人
            if (relNameDis != '') {
                return 1;
            }
        }
        return check_realnameE_format(name);
    }

    //step2. 检查联系电话
    var mobileObj = $('#groupReg2 #mobileID');
    var mainMobile = $('#groupReg2 #mainMobile').val();
    var relMobile = $('#groupReg2 #relMobile').val();
    var is_check_verify_obj = $("input[name='is_check_verify']");
    var mobVerifyObj = $('#groupReg2 #mobile_verify_line');
    var verifyCodeObj = $('#groupReg2 #verify_mobID');
    mobileObj.change(function () {
        checkMobile($(this).val(), mainMobile, relMobile,true);
    });
    function checkMobile(inputMob, mainMob, relMob,showWarn) {
        var result = check_mobile_format(inputMob, false);
        var flag = false;
        if (result == 0) {
            showToastError('被保险人手机号码不能为空。',5000,mobileObj);
            return flag;
        } else if (result == 1) {
            flag = true;
            if (inputMob != relMob && inputMob == mainMob) {
                if(showWarn) {
                    showToastError('联系电话默认为主被保险人的号码，您也可以为连带被保险人设置新的号码。', 5000, mobileObj);
                }
                is_check_verify_obj.val(0);//不需要输入验证码
                mobVerifyObj.hide();
            } else if (inputMob != relMob && inputMob != mainMob) {
                tooltips.hide();
                is_check_verify_obj.val(1);//需要输入验证码
                mobVerifyObj.show();
            } else {
                is_check_verify_obj.val(0);//不需要输入验证码
                mobVerifyObj.hide();
                tooltips.hide();
            }
        } else {
            showToastError('手机号码格式错误。',5000,mobileObj);
            flag = false;
        }
        return flag;
    }
    if(relType!=1&&$.trim(mobileObj.val()).length!=0 && mobileObj.val()==mainMobile){
        showToastError('联系电话默认为主被保险人的号码，您也可以为连带被保险人设置新的号码。',0,mobileObj);
    }
    //step3. 检查手机验证码
    var sendMobVerifyBtn = $('#groupReg2 #set_user_mob_verify');

    var number = 1;
    var send = true;
    sendMobVerifyBtn.on('click', function () {
        var inputMob = mobileObj.val();
        if (!checkMobile(inputMob, mainMobile, relMobile,true)) {
            return false;
        }
        if (check_mobile_exist_ajax(inputMob, root)) {
            showWindowError('错误','该手机号码已经被占用。');
            return false;
        }

        if (send && (number > 0) && (number < 6)) {
            var mobile = inputMob;
            if (!mobile) {
                return false;
            }

            var obj = $(this);
            callAjax({'mobile': mobile}, 0, function (response) {
                if (response == 1) {
                    number++;
                    send = false;
                    obj.html('已经发送');
                    setTimeout(timing_begin, 3000);
                    setTimeout(del_mob_verify, 123000);
                } else {
                    obj.html('发送失败');
                }
            }, 'http://www.insgeek.com/verify/set_user_mob_verify_ajax/');
        } else if (!send) {
        } else {
            obj.html('最多获取5次');
        }
    });

    function timing_begin() {
        sendMobVerifyBtn.html('<font style="color:#FFFFFF;"><em style="font-style:normal;" id="show_time">120</em> s</font>');
        autoTime();
    }

    /*删除当前mobile的有效验证码*/
    function del_mob_verify() {
        var mobile = $.trim(mobileObj.val());
        del_mobile_verify_mob(mobile, root);
        //结束倒计时
        var obj = $("#show_time");
        var num = 0;
        obj.html(num);
    }

    function autoTime() {
        var obj = $('#show_time');
        var num = parseInt(obj.html());
        num--;
        obj.html(num);

        if (num < 0) {
            number = 1;
            send = true;
            $('#set_user_mob_verify').html('重新发送');
            clearTimeout(setT);
            return;
        }

        var setT = setTimeout(autoTime, 1000);
    }

    /*检查手机验证码的方法*/
    function checkMobVerifyCode() {
        var needCheckMobVerify = is_check_verify_obj.val();
        var flag = false;
        if (needCheckMobVerify == 0) {
            //不需要检查验证码
            flag = true;
        } else {
            //需要检查验证码
            var inputMob = mobileObj.val();
            var verifyCode = $.trim(verifyCodeObj.val());
            var result = check_verify_mob(inputMob, verifyCode, root);
            if (result == -1) {
                showWindowError('错误','手机号码格式错误。');
                flag = false;
            } else if (result == 1) {
                flag = true;
            } else {
                showWindowError('错误','手机验证码有误。');
                flag = false;
            }
        }
        return flag;
    }

    var $insAddrObj = $('#ins_addr');
    var $insAddrVObj = $('#ins_addr_v');
    function checkInsuranceAddress(n, c) {
        var na = n.split('/');
        var $f = true;
        if (na.length < 2 || !/\d{6}/.test(c)) {
            $f = showToastError('医保地址选择有误！', 5000, $insAddrObj);;
        }

        return $f;
    }
    function checkAllInput() {
        if (!checkAppliedNameForDis()) {
            return false;
        }
        if(relType==1 && !checkMainAccountId($.trim(mainAccountObj.val()))){
            return false;
        }
        if (isMedicare == 1 && relType == 1 && $medicareType.val() != 4 && !checkInsuranceAddress($.trim($insAddrObj.val()), $.trim($insAddrVObj.val()))) {
            return false;
        }
        if (!checkMobile(mobileObj.val(), mainMobile, relMobile,false)) {
            return false;
        }
        if (!checkMobVerifyCode()) {
            return false;
        }
        return true;
    }

    var formObj = $('#groupReg2 #formID');
    submitObj.on('click', function () {
        if (checkAllInput()) {
            $.showLoading("数据提交中...");
            setTimeout(function(){
                formObj.submit();
                $.hideLoading();
            },1000);

        }
    });


    $medicareType.change(function () {
        if ($(this).val() == 4) {
            city.setClick(false);
            $insAddrObj.val('').prop('placeholder', '此文本框无需选择');
        } else {
            city.setClick(true);
            $insAddrObj.prop('placeholder', '点击选择医保所在地');
        }
        removeError($insAddrObj);
    });
    $medicareType.change();
});