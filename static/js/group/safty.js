 var safty = {
     init: function() {
         safty.changePwd();
         
         $('#side-menu').metisMenu();
     },
     
     changePwd: function() {
         $(tool.ids.pwdObj).blur(tool.check.pwd());
         $(tool.ids.newPwdObj).blur(tool.check.newPwd());
         $(tool.ids.reNewPwdObj).blur(tool.check.reNewPwd());
         
         $(tool.ids.updatePwdObj).click(function(){
             tool.changePwd.load(this);
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
         errMsg2: '#errorMsg2'
     },
     
     bool: {
         newPwdFlag: false,
         rePwdFlag: false,
         pwdFlag: false
     },
     
     changePwd: {
         load: function(obj) {
             var param = {
                 id: obj,
                 url: '/enterprise_user/postChangePwd',
                 data: {
                     old_password: $.trim($(tool.ids.pwdObj).val()),
                     password: $.trim($(tool.ids.newPwdObj).val())
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
             var password = $(tool.ids.pwdObj).val();
     
             if(password == '') {
                 tool.bool.pwdFlag = tool.showInfo('请输入原密码', false);
             } else {
                 tool.bool.pwdFlag = true;
                 $(tool.ids.errObj).html('').hide();
             }
             
             tool.check.updateSubmitBtn();
         },
         
         //检查旧密码的格式
         newPwd: function() {   //checkNewPasswordFormat
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
                 repetPassword = $.trim($(tool.ids.ewPwdObj).val());
         
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
            swal({
                title: "提示！",
                type: "warning",
                text: message,
                confirmButtonText: "确认"
            });
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
     }
 };
 
 
 
 
 
$(function () {
    $(window).on('keydown',function(e){
        var event=e||window.event;
        var keyCode=event.keyCode;
        if(keyCode==32){
            event.preventDefault();
            return;
        }
    })
    /*sweetAlert*/
    $('.demo1').click(function(){
        swal({
            confirmButtonText:"确定",
            title: "提示",
            text: "为了保障您的利益，请致电客服专员 400-886-2309"
        });
    });
   

    
    // 检查输入内容
    function updatePassword() {
        if(passwordFlag && newPasswordFlag && repetPasswordFlag ){
            callAjax( { 'option' : 'group', 'password' : passwordObj.val(), 'user' : 'wh2000292' }, 0, function ( response ) {
                if ( response != 1 ) {
                    showInformation('旧密码输入有误',false);
                    return ;
                } else {
                    callAjax($('#formGroupInfo').serialize(),0,function(response){
                        showInformation('密码修改成功',true);
                        resetForm();
                        updateSubmitBtn();
                    },'http://www.insgeek.com/user/update_user_password_ajax/');
                }
            }, "http://www.insgeek.com/check/check_password_ajax/" );
        }
    }
    //重置表单
    function resetForm(){
        $('#formGroupInfo')[0].reset();
        $('#formAuthentication')[0].reset();
        passwordFlag = false;
        newPasswordFlag = false;
        repetPasswordFlag = false;
        organization_flag = true;
        realname_flag = false;
        usci_flag = true;
    }
    
    
    
    
    
    
    
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
    //选项卡基本信息
    $('#tab-title').click(function (){
        updatePasswordObj.attr('disabled',true);
        resetForm();
        showErrorObj.html('').hide();
    })
    //企业认证
    $('#tab-title1').click(function (){
        submitBtnObj.attr('disabled',true);
        resetForm();
        errorMsg2Obj.hide();
    })
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
    /*修改电子邮箱*/
    var emailErrorObj=$('#emailErrorID');
    var tmpEmail=$.trim("wh2000292@163.com");
    emailErrorObj.hide();
    var emailObj=$('#emailID');
    var emailSubmitObj=$('#emailSubmitID');

    emailObj.on('blur',function()
    {
        var email=$.trim($(this).val());
        var result=check_email_format(email);
        if(result==0&&tmpEmail!='')
        {
            emailErrorObj.html(errorIconSquare+'错误！邮箱不能修改为空').show();
            return;
        }
        else if(result==1)
        {
            emailErrorObj.html('').hide();
            return;
        }
        else
        {
            emailErrorObj.html(errorIconSquare+'错误！电子邮箱格式错误，请输入正确的电子邮箱').show();
            return;
        }
    });

    /*点击提交修改电子邮箱*/
    emailSubmitObj.on('click',function()
    {
        var email =$.trim(emailObj.val());
        emailErrorObj.html('').hide();
        if(email== tmpEmail)
        {
//                emailErrorObj.html(errorIconSquare+'错误！请使用与原电子邮箱不同的邮箱地址进行绑定').show();
            $('#emailSectionID').modal('hide');
            return;
        }
        if(check_email_format(email) != 1)
        {
            emailErrorObj.html(errorIconSquare+'错误！电子邮箱格式错误，请输入正确的电子邮箱').show();
            return;
        }
        else
        {
            emailErrorObj.html('').hide();
            if(updateGroupEmail(email))
            {
                tmpEmail=email;
                emailObj.val(email);
                $('#emailSectionID').modal('hide');
                $('#email').text(email);
                stateMsg.html(successIconSquare+'电子邮箱修改成功.').show();

//                uc_update_user(email,'',root);//同步到uc修改邮箱

                return;
            }
            else
            {
                emailErrorObj.html(errorIconSquare+'错误！电子邮箱修改失败').show();
                return;
            }
        }
    });

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
    /*修改手机号码*/
    /*手机修改相关objs*/
    var tmpMobile='18600182395';
    var mobileShow2Obj=$('#mobileShowID2');
    var oldVerifyMobObj=$('#oldVerifyCodeID');
    var setOldMobVerifyObj=$('#set_old_mob_verifyID');
    var oldMobileErrorObj=$('#oldMobileErrorID');
    oldMobileErrorObj.hide();
    var oldMobileSubmitBtnObj=$('#mobileNextID');
    var oldMobileFormObj=$('#oldMobileFormID');
    stateMsg.html(successIconSquare + '为了保证您的权益，请如实填写您的账户信息及个人信息').show();


    var newMobileObj=$('#mobileID');
    var newVerifyMobObj=$('#newVerifyCodeID');
    var newMobileErrorObj=$('#newMobileErrorID');
    newMobileErrorObj.hide();
    var setNewMobVerifyObj=$('#set_new_mob_verifyID');
    var newMobileSubmitBtnObj=$('#mobileSubmitID');
    var newUserNameSubmitBtnObj=$("#usernameSubmitID");
    var newUserNameErrorObj = $("#userNameErrorID");
//        newUserNameErrorObj.hide();
    var newMobileFormObj=$('#newMobileFormID');

    if(tmpMobile=='')
    {
        oldMobileFormObj.hide();
        newMobileFormObj.show();
        step1Pass = true;
    }
    else
    {
        oldMobileFormObj.show();
        newMobileFormObj.hide();
        step1Pass = false;
    }
    /*修改手机*/
    var step1Pass=false;
    //step1
    /*获取原验证码*/
    var old_verify_mob_try_count=3;
    var old_number=1;
    var old_send=true;
    setOldMobVerifyObj.on('click',function()
    {
        if(old_send&&(old_number>0)&&(old_number<6))
        {
            oldMobileErrorObj.html('').hide();
            //获取原手机号码
            var mobile=tmpMobile;
            /*手机号错误，不进行验证码的获取*/
            if (!check_mobile_format(mobile, false))
            {
                return;
            }
            else
            {
                if (set_mobile_verify_mob(mobile, root))
                {
                    old_number++;
                    old_send=false;
                    old_verify_mob_try_count=3;
                    $(this).html('已经发送');
                    setTimeout(timing_begin,3000);
                    /*到时删除正确的手机验证码*/
                    setTimeout(del_old_mob_verify,123000);
                }
                else
                {
                    $(this).html('发送失败');
                }
            }
        }
        else if(!old_send)
        {}
        else
        {
            $(this).html('最多获取5次');
        }
    });

    /*删除该手机号有效的验证码*/
    function del_old_mob_verify()
    {
        var mobile=tmpMobile;
        del_mobile_verify_mob(mobile,root);
        //结束倒计时
        var obj = $("#show_time_old");
        var num=0;
        obj.html(num);
    }

    function timing_begin()
    {
        setOldMobVerifyObj.html('<font style="color:#FFFFFF;">倒计时<em style="font-style:normal;color:#ee3300;" id="show_time_old">120</em> 秒</font>');
        autoTime();
    }
    function autoTime() {
        var obj = $("#show_time_old");
        var num = parseInt(obj.html());
        num--;
        obj.html(num);
        if (num < 0) {
            old_number = 1;
            old_send = true;
            setOldMobVerifyObj.html('重新发送');
            clearTimeout(setT);
            return;
        }
        var setT = setTimeout(autoTime, 1000);
    }


    //点击下一步，验证原手机号
    oldMobileSubmitBtnObj.on('click',function()
    {
        if(step1Pass)
        {
            oldMobileFormObj.hide();
            newMobileFormObj.show();
            return;
        }
        var old_mobile=tmpMobile;
        var old_verify_mob=$.trim(oldVerifyMobObj.val());
        oldMobileErrorObj.html('').hide();
        var result=check_verify_mob(old_mobile, old_verify_mob, root);
        if (result != 1)
        {
            oldMobileErrorObj.html(errorIconSquare+'错误！原手机号的验证码不匹配').show();
            old_verify_mob_try_count--;
            if (old_verify_mob_try_count < 1) {
                del_old_mob_verify();
            }
        }
        else
        {
            //通过验证，开始第二步
            oldMobileFormObj.hide();
            newMobileFormObj.show();
            del_old_mob_verify();
            step1Pass=true;
        }

    });


    //step2验证新手机号
    /*获取新手机号验证码*/
    var new_verify_mob_try_count=3;
    var new_number=1;
    var new_send=true;
    var mobile_befor; //记录修改前的验证码
    var maxnum_day = 11;   //每天最大发送验证码次数
    var count = 0;         //三分钟内发送的验证次数
    var time = 180000;     //时间段3分钟=180000毫秒
    var maxnum_sen3 = 3;		//三分钟内发送的验证次数
    var curntnum = 1;    //统计点击按钮的次数
    var valbtn = document.getElementById("set_new_mob_verifyID");


    newMobileObj.on('blur',function()
    {
        var mobile=$.trim($(this).val());
        var result=check_mobile_format(mobile,false);
        if(result==0)
        {
            newMobileErrorObj.html(errorIconSquare+'错误！新手机号码不能为空').show();
            return;
        }
        else if(result==1)
        {
            newMobileErrorObj.html('').hide();
            equals(mobile_befor, mobile);   //检查手机号码是否改变
            return;
        }
        else
        {
            newMobileErrorObj.html(errorIconSquare+'错误！新手机号的格式错误,请输入11位的手机号').show();
            return;
        }
    });

    //str1为修改前的手机号码，str2为修改后的手机密码，检查手机号码是否改变
    function equals(str1, str2) {
        if (str1 == str2) {
            return true;
        } else {
            //del_mob_verify();
            del_new_mob_verify(str1, root);
            //结束倒计时
            var obj = $("#show_time_new");
            var num=0;
            obj.html(num);

        }
    }

    setNewMobVerifyObj.on('click',function()
    {
        newMobileErrorObj.html('').hide();
        if(!step1Pass&&tmpMobile!='')
        {
            newMobileErrorObj.html(errorIconSquare+'错误！原手机号未通过验证').show();
            return;
        }
        var mobile = $.trim(newMobileObj.val());
        if(check_mobile_format(mobile,false)!=1){
            newMobileErrorObj.html(errorIconSquare+'错误！新手机号的格式错误,请输入11位的手机号').show();
            return;
        }
        if(tmpMobile==mobile) {
            newMobileErrorObj.html(errorIconSquare+'错误！新手机号码不能与旧手机号码相同').show();
            return;
        }
        if (curntnum == maxnum_day) {
            newMobileErrorObj.html('您今天已经发送10次验证码,请明天再发送!').show();
            return;
        } else {
            if (count == 0) {
                setTimeout(clock, time);

            } else if (count == maxnum_sen3) {
                newMobileErrorObj.html('您发送验证码的次数过于频繁,请三分钟后再发送!').show();
                return;
            }

            if (new_send && (new_number > 0) && (new_number < 6)) {
                //获取新手机号码
                mobile_befor = mobile;
                /*手机号错误，不进行验证码的获取*/
                if (!check_mobile_format(mobile, false)) {
                    return;
                }
                else {
                    if (set_mobile_verify_mob(mobile, root))
                    {
                        count = count + 1;
                        curntnum += 1;
                        new_number++;
                        new_send = false;
                        new_verify_mob_try_count = 3;
                        $(this).html('已经发送');
                        setTimeout(timing_begin_new, 3000);
                        /*到时删除正确的手机验证码*/
                        setTimeout(del_new_mob_verify, 123000);
                    }
                    else {
                        $(this).html('发送失败');
                    }
                }
            }
            else if (!new_send) {
            }
            else {
                $(this).html('最多获取5次');
            }
        }
    });
    function clock() {
        count = 0;
        valbtn.removeAttribute("disabled");
        newMobileErrorObj.hide();
    }

    /*删除该手机号有效的验证码*/
    function del_new_mob_verify()
    {
        var mobile=$.trim(newMobileObj.val());
        del_mobile_verify_mob(mobile,root);
        //结束倒计时
        var obj = $("#show_time_new");
        var num=0;
        obj.html(num);
    }

    function timing_begin_new()
    {
        setNewMobVerifyObj.html('<font style="color:#FFFFFF;">倒计时<em style="font-style:normal;color:#ee3300;" id="show_time_new">120</em> 秒</font>');
        autoTime_new();
    }
    function autoTime_new() {
        var obj = $("#show_time_new");
        var num = parseInt(obj.html());
        num--;
        obj.html(num);
        if (num < 0) {
            new_number = 1;
            new_send = true;
            setNewMobVerifyObj.html('重新发送');
            clearTimeout(setT);
            return;
        }
        var setT = setTimeout(autoTime_new, 1000);
    }

    //提交新的手机号
    newMobileSubmitBtnObj.on('click',function()
    {
        var newVerifyMob =$.trim(newVerifyMobObj.val());
        var newMobile=$.trim(newMobileObj.val());
        newMobileErrorObj.html('').hide();
        if(!newVerifyMob) {
            newMobileErrorObj.html(errorIconSquare+'错误！请输入验证码').show();
            return;
        }
        if(newMobile==tmpMobile)
        {
            newMobileErrorObj.html(errorIconSquare+'错误！请使用与原手机号不同的新手机号码进行绑定').show();
            return;
        }
        var result=check_verify_mob(newMobile, newVerifyMob, root);
        switch (result) {
            case 0:
                newMobileErrorObj.html(errorIconSquare+'错误！新手机号码的验证码不匹配').show();
                new_verify_mob_try_count--;
                if (new_verify_mob_try_count < 1)
                {
                    del_new_mob_verify();
                }
                break;
            case -1:
                newMobileErrorObj.html(errorIconSquare+'错误！新手机号的格式错误,请输入11位的手机号').show();
                break;
            case 2:
                newMobileErrorObj.html(errorIconSquare+'错误！手机验证码有误').show();
                break;
            default:
                callAjax( {"mobile": newMobile,"verify_mob":newVerifyMob}, 0, function ( response ) {
                    if ( response == 1 ) {
                        step1Pass=false;
                        mobileShow2Obj.html(newMobile);
                        tmpMobile=newMobile;
                        del_new_mob_verify();
                        $('#phoneID').modal('hide');
                        $('#phone').text(newMobile);
                        oldVerifyMobObj.val('');
                        newMobileObj.val('');
                        newVerifyMobObj.val('');
                        stateMsg.html(successIconSquare+'手机号修改成功.').show();
                        oldMobileFormObj.show();
                        newMobileFormObj.hide();
                    }else{
                        newMobileErrorObj.html(errorIconSquare+'错误！手机修改失败').show();
                    }
                }, "http://www.insgeek.com/user/update_user_contact_mobile_ajax/" );
                break;
        }
    });
});