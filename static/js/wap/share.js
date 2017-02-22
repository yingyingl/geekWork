var mainAccountObj=$('#groupReg #mainAccountID');
var relAccountObj=$('#groupReg #relAccountId')
var passwordObj=$('#groupReg #passwordID');
var relBirthDayObj=$('#groupReg #relBirthDayId');
var formObj=$('#groupReg #formID');

var warningMsgObj=$('#groupReg #warningMsgID');
/*被保险人显示规则*/
var passwordDiv=$('#groupReg .password');
var relativeCertDiv=$('#groupReg .relativeCert');
var relativeSexDiv=$('#groupReg .relativeCert_sex');
var relativeBirthDiv=$('#groupReg .relativeCert_birth');
var relBirthDateObj=$('#groupReg input[name="relBirthDay"]');

var relCertSelObj=$("#groupReg #RelCertType");
var relSelObj=$("#groupReg #relTypeSel");


var tooltips = $( '.js_tooltips' );

var groupId="61249";
var eid="2955";
var starttime="1487779200";
var login="";//是否登录，来决定是否需要密码
var needPw=false;



var share = {
    init: function() {
        this.start();
    },

    start: function() {
        $(tool.dom.sexRadioObj).change(function(){
            $(tool.dom.hideSexObj).val($(this).val());
        });

        /*选择被保险人类型事件*/
        relSelObj.bind("change", function () {
            if ($(this).val() == 1) {
                /*本人*/
                relativeCertDiv.hide();
                tool.showBirthRelate(false);
            } else {
                relativeCertDiv.show();

                if(relCertSelObj.val()==0){
                    tool.showBirthRelate(false);
                }else if(relCertSelObj.val()==1){
                    tool.showBirthRelate(true);
                }

                if ($(this).val() == 2) {
                    /*子女*/
                    relCertSelObj.bind("change", function () {
                        if ($(this).val() == 0) {
                            /*身份证*/
                            tool.showBirthRelate(false);
                        }
                        if ($(this).val() == 1) {
                            /*出生证*/
                            tool.showBirthRelate(true);
                        }
                    });
                }
            }
        });
        relSelObj.change();

        $('input').bind('input propertychange', function() {
            $('.weui_cell_ft i').removeClass('weui_icon_warn');
        });

        $( '#oneBtDia .submitBtn').on('click',function(){
            tool.oneBtConfirmCallBack();
        });


        /*主被保险人的账号输入变更事件：需要验证输入的内容是否合法，且决定是否显示密码框*/
        mainAccountObj.change(function(){
            tool.checkMainAccount();
        });
        if(mainAccountObj.val().length!=''){
            tool.checkMainAccount();
        }

        /*连带被保险人的账号输入变更事件：*/
        relAccountObj.change(function(){
            tool.checkRelAccount();
            var relCertType = relCertSelObj.val();
            if(relCertType==1){
                //如果为出生证，需要检查这个出生证是否存在于系统中，如果存在，需要将其对应的性别和出生日期带出来，并将性别和日期的选择进行关闭

            }
        });
        relCertSelObj.change(function(){
            tool.checkRelAccount();
        });

        relBirthDateObj.on('changeDate',function(){
            tool.checkRelBirth();
        });

        $('#groupReg #nextBtnID').on('click',function(){
            if(!tool.checkMainAccount()){
                return ;
            }
            if(!tool.checkRelAccount()){
                return;
            }
            if(!tool.checkRelBirth()){
                return;
            }
            if(!tool.checkPassword()){
                return;
            }
            if(!tool.checkUserCanApply()){
                return;
            }

            formObj.submit();
        });
    }
};


var tool = {
    dom: {
        sexRadioObj: '#groupReg input[name="relSexR"]',
        hideSexObj: '#groupReg #relSexId'
    },

    checkGroupMainAccount: function(account) {
        var result = 0;
        if(account.length==0){
            result=-1;
        } else if(tool.checkUsernameFormat(account, false)==1) {
            result=1;
        }else if(tool.checkUsernameFormat(account)){
            result=2;
        }

        return result;
    },

    checkUsernameFormat: function(userName, passive) {
        if(userName.length==0) {
            return 0;
        }
        if(passive) {
            if(tool.checkUsernameFormat(userName)) {
                return 1;
            } else {
                return 2;
            }
        } else {
            /*userName格式：数字/字母/中文；数字不能是第一位；3-18个字符*/
            //var userNameReg=/^([a-z]|[A-Z]|[\u4e00-\u9fa5]|_)([a-z]|[A-Z]|[\u4e00-\u9fa5]|[0-9]|_|-){2,17}$/;
            var userNameReg=/^([a-z]|[A-Z]|_)([a-z]|[A-Z]|[0-9]|_|-){2,17}$/;
            if (userNameReg.test(userName)) {
                return 1;
            } else {
                return 2;
            }
        }
    },

    checkIdFormat: function(number) {
        var flag=0;
        if(tool.checkUsernameFormat(number)) {
            if(!tool.checkIdExist(number)) {
                flag=1;
            } else {
                flag=2;
            }
        } else {
            flag=0;
        }
        return flag;
    },

    /*检查身份证号是否存在*/
    checkIdExist: function(number) {
        var flag=false;
        $.ajax({
            type: "post",
            url: "/check/check_id_number_exists_ajax/" + Math.random(),
            data: {"id_number": number},
            dataType: 'json',
            cache: false,
            async: false,
            success: function (response) {
                //alert(response);exit;
                if (response != 0) {
                    flag=true;
                } else {
                    flag=false;
                }
            },
            error: function (XMLHttpRequest, textStatus, errorThrown) {
                //alert(textStatus);
                //alert(XMLHttpRequest.status);
                //alert(XMLHttpRequest.readyState);
                //alert(XMLHttpRequest.responseText);
                //alert(errorThrown);
            }
        }); //end ajax
        return flag;
    },

    /*是否显示出生证相关内容*/
    showBirthRelate: function(flag) {
        if(flag) {
            relativeSexDiv.show();
            relativeBirthDiv.show();
        }
        else{
            relativeSexDiv.hide();
            relativeBirthDiv.hide();
        }
    },

    showToastError: function(msg,timeout,obj) {
        //only mainAccount/password/relAccount need weui_icon_warn
        if(obj!=null){
            obj.parent().next('.weui_cell_ft').find('i').addClass('weui_icon_warn');
        }
        tooltips.show();
        setTimeout(function () {
            tooltips.hide();
        }, timeout);
        tooltips.text(msg);
        return false;
    },

    removeError: function(obj) {
        obj.parent().next('.weui_cell_ft').find('i').removeClass('weui_icon_warn');
    },

    showWindowError: function(title, text) {
        var oneBtDiaObj = $( '#oneBtDia' );
        var oneBtTitleObj = $( '#oneBtDia .weui_dialog_title' );
        var oneBtTextObj = $( '#oneBtDia .weui_dialog_bd' );

        oneBtDiaObj.show();
        oneBtTitleObj.text(title);
        oneBtTextObj.text(text);
    },

    oneBtConfirmCallBack: function() {
        var oneBtDiaObj = $( '#oneBtDia' );
        oneBtDiaObj.hide();
    },

    checkMainAccount: function() {
        tool.removeError(mainAccountObj);
        var mainAcResult=tool.checkGroupMainAccount(mainAccountObj.val());
        var flag=false;
        switch(mainAcResult){
            case -1:
                tool.showToastError('请输入登录名或者身份证号来申请加入保障。',5000,mainAccountObj);
                passwordDiv.hide();
                break;
            case 0:
                tool.showToastError('您输入的登录名不存在或者证件号码不符合校验规则，请重新输入',5000,mainAccountObj);
                passwordDiv.hide();
                break;
            case 1:
                if (!login) {
                    passwordDiv.show();
                    needPw=true;
                }
                tool.showToastError('您输入的为登录名，请输入对应的密码进行确认。',5000);
                flag=true;
                break;
            case 2:
                if (tool.checkIdExist(mainAccountObj.val())) {
                    if(!login) {
                        tool.showToastError('您输入的为身份证，请输入对应的密码进行确认。',5000);
                        passwordDiv.show();
                        needPw=true;
                    }else{
                        passwordDiv.hide();
                        needPw=false;
                    }
                } else {
                    tool.showToastError('您输入的为身份证，请输入其他信息或点击下一步继续操作。',5000);
                    passwordDiv.hide();
                    needPw=false;
                }
                flag=true;
                break;
        }
        return flag;
    },

    checkRelAccount: function() {
        var relType = relSelObj.val();
        tool.removeError(relAccountObj);
        var flag = false;
        if (relType == 2) {
            var relCertType = relCertSelObj.val();
            var relAccount=relAccountObj.val();
            var relAcResult = tool.checkRelativeAccount(relType, relCertType, relAccount);
            switch (relAcResult) {
                case -1:
                    tool.showToastError('请输入连带被保险人的证件号来申请加入保障。',5000,relAccountObj);
                    break;
                case 0:
                    tool.showToastError('您输入的连带被保险人的证件号码不符合校验规则，请重新输入',5000,relAccountObj);
                    break;
                case 1:
                    tooltips.hide();
                    flag = true;
                    break;
            }
            relBirthDayObj.prop('readonly',false);
            $(tool.dom.sexRadioObj).prop('disabled',false);
            //如果是出生证且输入正确，需要检查出生证是否存在，如果存在，应该带出来生日和性别
            if(flag && relCertType == 1){
                var birResult=checkBirthCertExist(relAccount);
                if(birResult!=null){
                    var birStr=birResult.birth_year+'-'+birResult.birth_month+'-'+birResult.birth_day;
                    var sex=birResult.sex;
                    $(tool.dom.hideSexObj).val(sex);
                    relBirthDayObj.val(birStr);
                    for(var index=0 ; index<$(tool.dom.sexRadioObj).length ;index++){
                        var radoiVal = $(tool.dom.sexRadioObj).eq(index).val();
                        if(radoiVal == sex) {
                            $(tool.dom.sexRadioObj).get(index).checked = true;
                        }
                    }
                    relBirthDayObj.prop('readonly',true);
                    $(tool.dom.sexRadioObj).prop('disabled',true);
                }
            }
        } else if (relType == 1) {
            flag = true;//如果是本人，不需要检查连带被保险人的证件信息
        }
        return flag;
    },

    checkRelBirth: function() {
        var relType = relSelObj.val();
        var relCertType = relCertSelObj.val();
        var flag=false;
        if(relType==2 && relCertType==1){
            var birthStr=relBirthDayObj.val();
            if(birthStr.length==''){
                tool.showToastError('请选择连带被保险人的出生日期。',5000);
            }else {
                tooltips.hide();
                flag = true;
            }
        }else{
            flag=true;
        }
        return flag;
    },

    checkPassword: function() {
        var flag=false;
        tool.removeError(passwordObj);
        if(!needPw){
            flag = true;
        }else{
            var mainAc=mainAccountObj.val();
            var pwd=passwordObj.val();
            if(!check_user_password_match_ajax(mainAc,pwd))
            {
                tool.showToastError('您输入的密码有误，请确认密码。',5000,passwordObj);
                flag=false;
            }else{
                flag=true;
            }
        }
        return flag;
    },

    checkUserCanApply: function() {
        var flag=false;
        var relType = relSelObj.val();
        var mainAc = mainAccountObj.val();
        var toApplyId=mainAc;
        if(relType!=1){
            toApplyId=relAccountObj.val();
        }
        var birthDay='';
        var relCertType=relCertSelObj.val();
        if(relType!=1 && relCertType==1){
            birthDay= $.trim(relBirthDayObj.val());
        }
        var result=tool.checkUserCanApplyIns(relType,groupId,eid,toApplyId,birthDay,starttime,mainAc);
        if(result===false){
            tool.showWindowError('错误','网络异常，请重新提交。');
        }else if(result.code!=0){
            tool.showWindowError('错误',result.msg);
        }else{
            flag=true;
        }
        return flag;
    },

    checkUserCanApplyIns: function(relType,groupId,eid,toApplyId,birthDay,starttime,mainId) {
        var flag=false;
        callAjax({'relType': relType, 'groupId': groupId,'eid':eid,'toApplyId':toApplyId,'birthDay':birthDay,'starttime':starttime,'mainCertCode':mainId}, 0, function (response) {
            flag=response;
        }, '/Groupreg/checkUserCanApplyIns/');
        return flag;
    },

    /*
     * 根据关系类型和证件类型检查扫码加人的连带被保险人的账号
     * @param account: 连带被保险人的账号
     * @param relType：关系类型 - 2：子女（目前暂时只实现这个）
     * @param certType: 证件类型 -0：身份证；1：出生证
     * @return 0: 非法; 1: 合法
     * */
    checkRelativeAccount: function(relType,certType,account) {
        var result=0;
        if(account.length==0){
            result=-1;
        }else if(relType == 2){
            if(certType==0 && check_id_number_format(account)){
                result=1;
            }else if(certType==1 && checkBirthCertFormat(account)==1){
                result=1;
            }
        }
        return result;
    }
};

share.init();