 var safty = {
     init: function() {
         safty.start();
         safty.changePwd();
         safty.changeMobile();
         safty.changeEmail();
         
         $('#side-menu').metisMenu();
     },

     start: function() {
         $(window).on('keydown', function(e) {
             var event = e || window.event;
             var keyCode = event.keyCode;
             if(keyCode == 32) {
                 event.preventDefault();
                 return;
             }
         });

         /*sweetAlert*/
         $('.demo1').click(function(){
             swal({
                 confirmButtonText:"确定",
                 title: "提示",
                 text: "为了保障您的利益，请致电客服专员 400-886-2309"
             });
         });

         //选项卡基本信息
         $('#tab-title').click(function (){
             $(tool.ids.updatePwdObj).attr('disabled',true);
             tool.resetForm();
             $(tool.ids.errObj).html('').hide();
         });

         //企业认证
         $('#tab-title1').click(function (){
             $(tool.ids.submitBtnObj).attr('disabled',true);
             tool.resetForm();
             $(tool.ids.errMsg2).hide();
         });
     },
     
     changePwd: function() {
         $(tool.ids.pwdObj).blur(function() {
             tool.check.pwd();
         });
         $(tool.ids.newPwdObj).blur(function() {
             tool.check.newPwd();
         });
         $(tool.ids.reNewPwdObj).blur(function() {
             tool.check.reNewPwd();
         });
         
         $(tool.ids.updatePwdObj).click(function(){
             tool.changePwd.load(this);
         });
     },

     /*修改手机*/
     changeMobile: function() {
         if($(tool.ids.phone).text() == '') {
             $(tool.ids.oldMobileObj).hide();
             $(tool.ids.newMobileObj).show();
         } else {
             $(tool.ids.oldMobileObj).show();
             $(tool.ids.newMobileObj).hide();
         }

         //旧验证码框失去焦点
         $(tool.ids.oldCodeObj).blur(function() {
             tool.check.code(this, tool.ids.oldErrObj);
         }).focus(function() {
             $(tool.ids.oldErrObj).hide();
         });

         //新手机号框失去焦点
         $(tool.ids.newMobileShow).blur(function() {
             tool.check.code(this, tool.ids.newErrObj);
         }).focus(function() {
             $(tool.ids.newErrObj).hide();
         });

         //新密码框失去焦点
         $(tool.ids.newCodeObj).blur(function() {
             tool.check.code(this, tool.ids.newErrObj);
         }).focus(function() {
             $(tool.ids.newErrObj).hide();
         });

         //旧手机号获取验证码
         $(tool.ids.oldMobVerifyId).click(function() {
             var mobile = $(tool.ids.phone).text(),
                 errorBox = tool.ids.oldErrObj;

             if($(this).hasClass('on')) {
                 return;
             }

             tool.changeMobile.sendSms(this, mobile, errorBox);
         });

         //提交旧手机号验证码
         $(tool.ids.oldMobileSub).click(function() {
             tool.changeMobile.oldSub(this);
         });

         //新手机号获取验证码
         $(tool.ids.newMobVerifyId).click(function() {
             var mobile = $.trim($(tool.ids.newMobileShow).val()),
                 errorBox = tool.ids.newErrObj;

             if($(this).hasClass('on')) {
                 return;
             }
             if(!tool.check.mobile(tool.ids.newMobileShow, tool.ids.newErrObj)) {
                 return;
             }

             tool.changeMobile.sendSms(this, mobile, errorBox);
         });

         //提交旧手机号验证码
         $(tool.ids.newMobileSub).click(function() {
             tool.changeMobile.newSub(this);
         });
     },

     //修改邮箱
     changeEmail: function() {

         $(tool.ids.emailObj).blur(function() {
             tool.check.email(this, tool.ids.emailErrObj);
         }).focus(function() {
             $(tool.ids.emailErrObj).hide();
         });

         $(tool.ids.emailSubObj).click(function() {
             var email = $.trim($(tool.ids.emailObj).val()),
                 errorBox = tool.ids.emailErrObj;

             if($(this).hasClass('on') || !tool.check.email(tool.ids.emailObj, errorBox)) {
                 return;
             }

             var param = {
                 id: this,
                 url: '',
                 success: function() {
                     $(tool.ids.email).text(email);
                     $(tool.ids.email).parent().find('a').text('修改');
                     $('#emailSectionID').modal('hide');

                     tool.showInfo('邮箱修改成功', true);
                 },
                 error: function(message) {
                     $(tool.ids.newCodeObj).val('');

                     $(errorBox).show().find('i').text(message);
                 }
             };

             tool.ajax.callAjax(param);
         });
     }
 };
 
 
 var tool = {
     ids: {
         pwdObj: '#password',
         newPwdObj: '#new_password',
         reNewPwdObj: "#new_password_repet",
         errObj: '#errorMsg',
         updatePwdObj: '#updatePasswordBtn',
         errMsg2: '#errorMsg2',
         submitBtnObj: '#submitBtn',
         oldMobVerifyId: '#set_old_mob_verifyID',
         newMobVerifyId: '#set_new_mob_verifyID',
         phone: '#phone',
         mobileShowID2: '#mobileShowID2',
         newMobileShow: '#mobileID',
         oldMobileObj: '#oldMobileFormID',
         newMobileObj: '#newMobileFormID',
         oldMobileSub: '#mobileNextID',
         newMobileSub: '#mobileSubmitID',
         oldCodeObj: '#oldVerifyCodeID',
         newCodeObj: '#newVerifyCodeID',
         oldErrObj: '#oldMobileErrorID',
         newErrObj: '#newMobileErrorID',
         email: '#email',
         emailObj: '#emailID',
         emailSubObj: '#emailSubmitID',
         emailErrObj: '#emailErrorID'
     },
     
     bool: {
         newPwdFlag: false,
         rePwdFlag: false,
         pwdFlag: false,
         orginFlag: true,
         realNameFlag: false,
         usciFlag: true
     },
     
     changePwd: {
         load: function(obj) {
             var param = {
                 id: obj,
                 url: '/enterprise_user/postChangePwd',
                 data: {
                     old_password: $.trim($(tool.ids.pwdObj).val()),
                     password: $.trim($(tool.ids.newPwdObj).val())
                 },
                 success: function(){
                     tool.showInfo('密码修改成功', true);

                     tool.resetForm();

                     tool.check.updateSubmitBtn();
                 }
             };

             if(tool.bool.newPwdFlag && tool.bool.pwdFlag && tool.bool.rePwdFlag) {
                 tool.ajax.callAjax(param);
             }
         }
     },

     changeMobile: {
         sendSms: function(obj, mobile, errorBox) {
             $(obj).addClass('on').text('获取中...');

             var param = {
                 id: obj,
                 url: '',
                 data: { mobile: mobile },
                 type: 'GET',
                 success: function() {
                     var count = 60,
                         timer = null;

                     timer = setInterval(function () {
                         if (count > 0) {
                             $(obj).text(count + 's重新获取');
                             count--;
                         } else {
                             clearInterval(timer);
                             $(obj).removeClass('on').text('获取验证码');
                         }
                     }, 1000);
                 },

                 error: function(message) {
                     $(obj).removeClass('on').text('获取验证码');
                     $(errorBox).show().find('i').text(message);
                 }
             };

             tool.ajax.callAjax(param);
         },

         oldSub: function(obj) {
             var mobile = $(tool.ids.phone).text(),
                 code = $.trim($(tool.ids.oldCodeObj).val()),
                 errorBox = tool.ids.oldErrObj;

             if($(obj).hasClass('on')) {
                 return;
             }
             if(!tool.check.code(tool.ids.oldCodeObj, errorBox)) {
                 return;
             }

             var param = {
                 id: obj,
                 url: '',
                 success: function() {
                     $(tool.ids.oldMobileObj).hide();
                     $(tool.ids.newMobileObj).show();
                 },
                 error: function(message) {
                     $(tool.ids.newCodeObj).val('');
                     $(errorBox).show().find('i').text(message);
                 }
             };

             tool.ajax.callAjax(param);
         },

         newSub: function(obj) {
             var mobile = $.trim($(tool.ids.newMobileShow).val()),
                 code = $.trim($(tool.ids.newCodeObj).val()),
                 errorBox = tool.ids.newErrObj;

             if($(obj).hasClass('on')) {
                 return;
             }
             if(!tool.check.mobile(tool.ids.newMobileShow, errorBox) || !tool.check.code(tool.ids.newCodeObj, errorBox)) {
                 return;
             }

             var param = {
                 id: obj,
                 url: '',
                 success: function() {
                     $(tool.ids.mobileShowID2).text(mobile);
                     $('#phone').text(mobile);
                     $('#phoneID').modal('hide');

                     tool.showInfo('手机号码修改成功', true);

                     $(tool.ids.oldMobileObj).show();
                     $(tool.ids.newMobileObj).hide();
                 },
                 error: function(message) {
                     $(tool.ids.newCodeObj).val('');
                     $(errorBox).show().find('i').text(message);
                 }
             };

             tool.ajax.callAjax(param);
         }
     },
     
     check: {
         /*
          * 检查用户密码格式
          * 如果为空：返回0
          * 如果正确，返回1
          * 如果格式错误，返回2
          * */
         pwdformat: function(pwd) {
             var passwordReg = /^[\\~`!@#$%^&*()-_=+|{}\[\],.?\/:;'"\d\w]{8,20}$/,
                 passwordReg2 = /^.*\d+.*$/,
                 passwordReg3 = /^.*[a-zA-Z]+.*$/;
    
             if(pwd.length == 0) {
                 return 0;
             } else {
                 if(passwordReg.test(pwd) && passwordReg2.test(pwd) && passwordReg3.test(pwd)) {           
                     return 1;
                 } else {
                     return 2;
                 }
             }
         },
         
         updateSubmitBtn: function() {
             if(tool.bool.newPwdFlag && tool.bool.pwdFlag && tool.bool.rePwdFlag) {
                 $(tool.ids.updatePwdObj).attr('disabled', false);
             } else {
                 $(tool.ids.updatePwdObj).attr('disabled', true);
             }
         },
         
         pwd: function() {
             var password = $.trim($(tool.ids.pwdObj).val());
     
             if(password == '') {
                 tool.bool.pwdFlag = tool.showInfo('请输入原密码', false);
             } else {
                 tool.bool.pwdFlag = true;
                 $(tool.ids.errObj).html('').hide();
             }
             
             tool.check.updateSubmitBtn();
         },

         newPwd: function() {
             var newPassword = $.trim($(tool.ids.newPwdObj).val()),
                 password = $.trim($(tool.ids.pwdObj).val());
         
             if(tool.check.pwdformat(newPassword) != 1) {
                 tool.bool.newPwdFlag = tool.showInfo('新密码格式不正确', false);
             } else {
                 tool.bool.newPwdFlag = true;
                 $(tool.ids.errObj).html('').hide();
             }
             
             tool.check.updateSubmitBtn();
         },
         
         reNewPwd: function() {
             var newPassword = $.trim($(tool.ids.newPwdObj).val()),
                 repetPassword = $.trim($(tool.ids.reNewPwdObj).val());
         
             if(!tool.bool.newPwdFlag){
                //如果新密码为空则repetPasswordFlag = false,但不提示错误
                 tool.bool.rePwdFlag = false;
             } else if(repetPassword != newPassword) {
                 tool.bool.rePwdFlag = tool.showInfo('两次密码输入不一致', false);
             } else {
                 tool.bool.rePwdFlag = true;
                 $(tool.ids.errObj).html('').hide();
             }
            
             tool.check.updateSubmitBtn();
         },

         mobile: function(obj, errorBox) {
             var v = $.trim($(obj).val());
             var reg = /^1[3-9][0-9]\d{8}$/;

             if(v == '') {
                 $(errorBox).show().find('i').text('请输入手机号');

                 return false;
             }

             if(!reg.test(v)) {
                 $(errorBox).show().find('i').text('请输入正确的手机号码');

                 return false;
             }

             $(errorBox).hide().find('i').text('');
             return true;
         },

         code: function(obj, errorBox) {
             var v = $.trim($(obj).val());

             if(v == '') {
                 $(errorBox).show().find('i').text('请输入验证码');

                 return false;
             }

             if(v.length != 6) {
                 $(errorBox).show().find('i').text('请输入正确的验证码');

                 return false;
             }

             $(errorBox).hide().find('i').text('');
             return true;
         },

         email: function(obj, errorBox) {
             var emailReg = /^([a-zA-Z0-9\-_.+]+)@([a-zA-Z0-9\-]+[.][a-zA-Z0-9\-.]+)$/,
                 email = $.trim($(obj).val()),
                 len = email.length;

             if(len == 0) {
                 $(errorBox).show().find('i').text('请输入邮箱');
                 return false;
             }

             if(!emailReg.test(email) && len > 50) {
                 $(errorBox).show().find('i').text('请输入正确的邮箱');
                 return false;
             }


             $(errorBox).hide().find('i').text('');
             return true;
         }
     },
     
     ajax: {
        callAjax: function(options) {
            if(options.id) {
                $(options.id).addClass('on');
            }

            $.ajax({
                url: options.url,
                data: options.data,
                type: options.type ? options.type : 'POST',
                dataType: "json",
                success: function(data) {
                    if(options.id) {
                        $(options.id).removeClass('on');
                    }

                    if (data.success == 1) {
                        options.success(data);
                    }  else {
                        tool.ajax.error(data.message);

                        if(options.error) {
                            options.error(data.message);
                        }
                    }
                },
                error: function() {
                    tool.ajax.error('网络异常');

                    if(options.id) {
                        $(options.id).removeClass('on');
                    }

                    if(options.error) {
                        options.error('网络异常');
                    }
                }
            });
        },

        error: function(message, obj) {
            tool.showInfo(message, true);
        }
    },
     
     showInfo: function(msg, animation) {
         var errBox = $(tool.ids.errObj);
         
         if(animation){
            errBox.removeClass('alert-danger');
            errBox.addClass('alert-success');
            errBox.html("<i>" + msg + "</i>").show();
            window.setTimeout(tool.executeAnimation, 3000);
        }else{
            errBox.addClass('alert-danger');
            errBox.html("<i class='danger' >" + msg + "</i>").show();
            return false;
        }
     },
     
     executeAnimation: function() {
         $(tool.ids.errObj).fadeOut('slow',function(){
            $(this).html('').hide();
            $(tool.ids.errMsg2).text('').hide();
        });
     },

     resetForm: function() {
         $('.tab-content').find('input').val('');

         tool.bool.pwdFlag = false;
         tool.bool.newPwdFlag = false;
         tool.bool.rePwdFlag = false;
         tool.bool.orginFlag = true;
         tool.bool.realNameFlag = false;
         tool.bool.usciFlag = true;
     }
 };


 safty.init();
 
 




 
$(function () {
    /*******************************************华丽的分割线******************************************************/
    /*卡片二*/
    var submitBtnObj = $('#submitBtn');//提交按钮
    var errorMsg2Obj = $('#errorMsg2');
    var usciObj = $('#usci');//三证合一
    var organizationObj = $('#organization');//组织机构代码
    var realnameObj = $('#realname');//企业名称
    var organization_status = 0;//组织机构代码
    var usci_status = 4;//全国统一信用代码
    var status_flag = organization_status == 0 || usci_status == 0?true:false;
    var organization_flag =true;
    var realname_flag =false;
    var usci_flag = true;
    var organization_reg = /^[0-9a-zA-Z]{8}[-]?[0-9a-zA-Z]$/;
    var usci_reg = /^[1|5|9|Y|y]{1}[1|2|3|9]{1}[0-9]{6}[0-9a-zA-Z]{9}[0-9a-zA-Z]$/;
    //验证组织机构代码
    function checkOrganization(){
        var organizationCode=organizationObj.val();
        if(organization_status ==0){
            if(organizationCode==''){
                if(organization_status == 0 && usci_status == 0 ){
                    errorMsg2Obj.hide();
                    organization_flag =true;
                }else{
                    errorMsg2Obj.text('组织机构代码为空').show();
                    organization_flag =false;
                }
            }else if(!organization_reg.test(organizationCode)){
                errorMsg2Obj.text('组织机构代码有误').show();
                organization_flag =false;
            }else{
                errorMsg2Obj.hide();
                organization_flag =true;
                closureVerification();
            }
        }else{
            organization_flag =true;
        }
        submitBtn();
    }
    //企业名称
    function checkRealname(){
        var realnameCode=realnameObj.val();
        if(realnameCode==''){
            errorMsg2Obj.text('企业名称不能为空').show();
        }else if(realnameCode.length > 32){
            errorMsg2Obj.text('企业名称有误').show();
            submitBtnObj.attr('disabled',true);
            realname_flag =false;
        }else{
            errorMsg2Obj.hide();
            realname_flag =true;
        }
        submitBtn();
    }
    //全国统一信用代码
    function checkUsci(){
        var usciCode=usciObj.val();
        if(usci_status==0){
            if(usciCode==''){
                if(organization_status == 0 && usci_status == 0 ){
                    errorMsg2Obj.hide();
                    usci_flag =true;
                }else{
                    errorMsg2Obj.text('统一社会信用代码不能为空').show();
                    usci_flag =false;
                }
            }else if(!usci_reg.test(usciCode)){
                errorMsg2Obj.text('统一社会信用代码有误').show();
                submitBtnObj.attr('disabled',true);
                usci_flag =false;
            }else{
                errorMsg2Obj.hide();
                usci_flag =true;
                closureVerification();
            }
        }else{
            usci_flag =true;
        }
        submitBtn();
    }

    organizationObj.blur(checkOrganization);
    realnameObj.blur(checkRealname);
    usciObj.blur(checkUsci);
    //验证数据唯一性
    function valueVerification(value,type){
        var status=null;
        callAjax( { 'code' : value,'type':type}, 0, function ( response ) {
            status =  response;
        }, "http://www.insgeek.com/Check/checkGroupCodeExist/");
        return status;
    }
    //提交函数
    submitBtnObj.click(function (){
        if(usciObj.val()!='' && usci_status==0){
            if(valueVerification(usciObj.val(),2) == 1){
                errorMsg2Obj.text('统一社会信用代码已存在').show();
                return false;
            }
        }
        if(organizationObj.val()!='' && organization_status==0){
            if(valueVerification(organizationObj.val(),1) ==1){
                errorMsg2Obj.text('组织机构代码已存在').show();
                return false;
            }
        }
        errorMsg2Obj.hide();
        addUserInfo();
    });
    //企业用户添加认证
    function submitBtn(){
        realname_flag = realnameObj.val()!=''?true:false;
        submitBtnObj.attr('disabled',true);
        if(status_flag && realname_flag && organization_flag && usci_flag &&(usciObj.val()!='' ||organizationObj.val()!='')) {
            submitBtnObj.attr('disabled',false);
        }
    }
    //显示错误信息
    function closureVerification(){
        if(usci_flag == false){
            checkUsci();
        }else if(organization_flag == false){
            checkOrganization();
        }
    }
    //提交数据
    function addUserInfo(){
        swal({
            title: '信息',
            text: '为了保证您的权益，请如实填写企业信息;企业认证通过后，如需修正，请企业负责人致电客服 400-886-2309，由此为您带来的不便，敬请谅解',
            type: 'warning',
            showCancelButton: true,
            confirmButtonColor: '#DD6B55',
            confirmButtonText: '同意,提交',
            cancelButtonText: '取消',
            closeOnConfirm: false,
            closeOnCancel: false
        }, function(isConfirm) {
            if (isConfirm) {
                callAjax( { 'organization_code' : organizationObj.val(),'usci':usciObj.val(),'realname':$('#realname').val()}, 0, function ( response ) {
                    if ( response == '1' ) {
                        refresh('贵企业资质证明已提交','success');
                        resetForm();
                        submitBtn();
                    }else if ( response == '-1' )  {
                        swal('警告', '统一社会信用代码有误', 'warning');
                        resetForm();
                        submitBtn();
                        return ;
                    }else if ( response == '-2' )  {
                        swal('警告', '组织机构代码有误', 'warning');
                        resetForm();
                        submitBtn();
                        return ;
                    }else if ( response == '0' ){
                        swal('警告', '未知错误，认证失败，请联系客服', 'warning');
                        resetForm();
                        submitBtn();
                        return ;
                    }
                }, "http://www.insgeek.com/user/updateGroupCertificationInfoAjax/" );
            } else {
                swal('警告', '您已经取消了这次操作', 'warning');
            }
        });
    }
    //提示
    function refresh(contents,type){
        swal({
            title: '谢谢',
            text: contents,
            type: type,
            confirmButtonColor: '#DD6B55',
            confirmButtonText: '确认',
            closeOnConfirm: true
        }, function (isConfirm){
            if(type == 'success'){
                location.reload();
            }
        });
    }

    function updateGroupEmail(email){
        var f = false;
        callAjax({email:email},PRD, function (res) {
            if(res){
                f = true;
            }
        },'http://www.insgeek.com/Group/updateGroupEmail/');
        return f;
    }



    /*---------------修改地址--------------*/
    var tmpAddress='';
    var errorIconSquare='<i class="fa fa-pencil-square"></i> ';
    var errorIconCircle = '<i class="fa fa-times-circle"></i> ';
    var successIconSquare='<i class="fa fa-pencil-square"></i> ';
    var addressShowObj= $('#addressShowID');
    var addressErrorObj= $('#addressErrorID');
    addressErrorObj.hide();
    var addressObj=$('#addressID');
    var addressSubmitObj=$('#addressSubmitID');
    var citySelect=$(".citySelect");
    var stateMsg=$('#stateMsgID');

    addressObj.on('blur',function()
    {
        var address=$.trim($(this).val());
        if(address=='')
        {
            addressErrorObj.html(errorIconSquare+'错误！详细地址不能修改为空').show();
            return;
        }
        else
        {
            addressErrorObj.html('').hide();
            return;
        }
    });
    /*提交地址修改按钮*/
    var areaProvince , areaCity , area , areaDetail, addressJoin;
    addressSubmitObj.on('click',function()
    {
        areaProvince=citySelect.eq(0).val();
        areaCity=citySelect.eq(1).val();
        area=citySelect.eq(2).val();
        var str = addressObj.val();
        areaDetail=$.trim(addressObj.val()).replace(/ /g,'');
        if(address==tmpAddress)
        {
//                addressErrorObj.html('<i class="fa fa-minus-square"></i> 错误！请使用与原地址不同的新地址进行绑定').show();
            $('#addressSectionID').modal('hide');
            return;
        }
        //1.先判断地址是否正确
        if(areaCity == null){
            addressJoin=areaProvince+' '+areaDetail;
        }else if(area == null){
            addressJoin=areaProvince+' '+areaCity+' '+areaDetail;
        }else{
            addressJoin=areaProvince+' '+areaCity+' '+area+' '+areaDetail;
        }
        var address =$.trim(addressJoin);
        addressErrorObj.html('').hide();
        if(areaDetail == '')
        {
            addressErrorObj.html(errorIconSquare+'错误！详细地址不能修改为空').show();
            return;
        }
        //2.再判断邮编
//            if(zip==tmpZip)
//            {
//                zipErrorObj.html('<i class="fa fa-minus-square"></i> 错误！请使用与原邮编不同的新邮编进行绑定').show();
//                return false;
//            }

        addressErrorObj.html('').hide();
        if(update_address_and_zip(address,zip,root))
        {
            tmpAddress=address;
            addressShowObj.html(address);
            addressObj.val(areaDetail);
            $('#addressSectionID').modal('hide');
            stateMsg.html(successIconSquare+'地址修改成功.').show();
            setCity(areaProvince,areaCity,area);
        }
        else
        {
            addressErrorObj.html(errorIconSquare+'错误！地址修改失败').show();
        }
    });


    function setCity(prov,city,dist){
        $("#city_list").citySelect({
            url: '/static/js/addresscity.min.js',
            prov: prov,
            city: city,
            dist: dist,
            nodata: "none"
        },$("#city_list_echo"));
    }
    //初始化selectCity
    var newStrArea = $.trim(addressShowObj.html()).split(" ");
    if(newStrArea.length == 1){
        addressObj.val(addressShowObj.html());
        newStrArea = [];
    }else if(newStrArea.length == 3){
        addressObj.val(newStrArea[2]);
    }else if(newStrArea.length == 4){
        addressObj.val(newStrArea[3]);
    }
    if(newStrArea[0] == null || newStrArea[0] == '' || typeof(newStrArea[0]) == "undefined"){
        newStrArea[0] = '北京';
    }
    if(newStrArea[1] == null || newStrArea[1] == '' || typeof(newStrArea[1]) == "undefined"){
        newStrArea[1] = '东城区';
    }
//          if(newStrArea[2] == null || newStrArea[2] == '' || typeof(newStrArea[2]) == "undefined"){
//              newStrArea[2] = '';
//          }
    setCity(newStrArea[0],newStrArea[1],newStrArea[2]);
});