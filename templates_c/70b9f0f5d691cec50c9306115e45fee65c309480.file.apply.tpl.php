<?php /* Smarty version Smarty-3.1.21-dev, created on 2017-02-13 10:25:21
         compiled from "C:\xampp\htdocs\datebaofront-dev\geekwork\templates\wap\apply.tpl" */ ?>
<?php /*%%SmartyHeaderCode:250758a1701b01b8a5-61207795%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '70b9f0f5d691cec50c9306115e45fee65c309480' => 
    array (
      0 => 'C:\\xampp\\htdocs\\datebaofront-dev\\geekwork\\templates\\wap\\apply.tpl',
      1 => 1486977918,
      2 => 'file',
    ),
    'cdb2eac77d9b09253760b2aa46da8547ace35e09' => 
    array (
      0 => 'C:\\xampp\\htdocs\\datebaofront-dev\\geekwork\\templates\\template\\front-mobile.tpl',
      1 => 1486977901,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '250758a1701b01b8a5-61207795',
  'function' => 
  array (
  ),
  'version' => 'Smarty-3.1.21-dev',
  'unifunc' => 'content_58a1701b1a0ad7_47930545',
  'has_nocache_code' => false,
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_58a1701b1a0ad7_47930545')) {function content_58a1701b1a0ad7_47930545($_smarty_tpl) {?><!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width,initial-scale=1,user-scalable=0">
    <meta content="telephone=no" name="format-detection" />
    <title></title>
    <link rel="stylesheet" href="<?php echo $_smarty_tpl->getConfigVariable('static_path');?>
/css/mobile/weui.css">
    <link rel="stylesheet" href="<?php echo $_smarty_tpl->getConfigVariable('static_path');?>
/css/mobile/example.css">
    <link rel="stylesheet" href="<?php echo $_smarty_tpl->getConfigVariable('static_path');?>
/css/mobile/appv2.0.css"/>
    <link rel="stylesheet" href="<?php echo $_smarty_tpl->getConfigVariable('static_path');?>
/css/mobile/iconfont.css">
</head>
<body ontouchstart>



    <div id="title_name" style="display: none">申请入保</div>
    <div id="groupReg">
        <section class="active" data-role="section" id="form_section">
            <article class="active" data-role="article" data-scroll="verticle" id="normal_article" style="bottom:0px;">
                <div class="scroller">
                    <div class="hd">
                        <h3 class="page_title">申请入保</h3>
                    </div>
                    <div class="mark-font" style="margin-top: 0">
                        您正在申请[测试]的[【极客保 - 意外型】测试]，请填写您的真实资料。                </div>
                    <form action="http://www.insgeek.com/groupreg/regstep/group_id/61249/eid/2955/code/1G0IGD" class="form-group" method="post" id="formID">
                        <div class="weui_cells">
                            <div class="weui_cell weui_cell_select weui_select_after">
                                <div class="weui_cell_hd">
                                    被保险人
                                </div>
                                <div class="weui_cell_bd weui_cell_primary">
                                    <select class="weui_select" name="relType" id="relTypeSel" style="padding-left: 30px">
                                        <option value="1" selected>本人</option>                                    </select>
                                </div>
                            </div>
                            <div class="weui_cell">
                                <div class="weui_cell_hd">
                                    员工信息
                                </div>
                                <div class="weui_cell_bd weui_cell_primary">
                                    <input type="text" class="weui_input" name="mainAccount" id="mainAccountID" placeholder="登录名/身份证号码" value=""  style="padding-left: 35px">
                                </div>
                                <div class="weui_cell_ft">
                                    <i class=""></i>
                                </div>
                            </div>
                            <div class="weui_cell password" style="display:none">
                                <div class="weui_cell_hd">
                                    登录密码
                                </div>
                                <div class="weui_cell_bd weui_cell_primary">
                                    <input name="password" id="passwordID" class="weui_input" type="password" placeholder="请输入密码" style="padding-left: 35px"/><!--有脚本控制input修改了ID-->
                                </div>
                                <div class="weui_cell_ft">
                                    <i class=""></i>
                                </div>
                            </div>
                        </div>
                        <div class="weui_cells_title relativeCert" style="display: none">连带被保险人</div>
                        <div class="weui_cells relativeCert" style="display: none">
                            <div class="weui_cell weui_cell_select weui_select_before">
                                <div class="weui_cell_hd">
                                    <select name="relCertType" class="weui_select" id="RelCertType">
                                        <option value="0" selected>身份证</option>
                                        <option value="1" >出生证</option>
                                    </select>
                                </div>
                                <div class="weui_cell_bd weui_cell_primary">
                                    <input name="relAccount" id="relAccountId" class="weui_input" type="text" placeholder="请输入证件号码" value="">
                                </div>
                                <div class="weui_cell_ft">
                                    <i class=""></i>
                                </div>
                            </div>
                        </div>
                        <div class="weui_cells_title relativeCert_sex" style="display: none">连带被保险人性别</div>
                        <div class="weui_cells weui_cells_radio relativeCert_sex" style="display: none">
                            <label class="weui_cell weui_check_label" for="relSexR1">
                                <div class="weui_cell_bd weui_cell_primary">
                                    <p>男</p>
                                </div>
                                <div class="weui_cell_ft">
                                    <input type="radio" class="weui_check" checked value="1" name="relSexR" id="relSexR1">
                                    <span class="weui_icon_checked"></span>
                                </div>
                            </label>
                            <label class="weui_cell weui_check_label" for="relSexR2">
                                <div class="weui_cell_bd weui_cell_primary">
                                    <p>女</p>
                                </div>
                                <div class="weui_cell_ft">
                                    <input type="radio" class="weui_check"  value="2" name="relSexR" id="relSexR2">
                                    <span class="weui_icon_checked"></span>
                                </div>
                            </label>
                            <input  id='relSexId' type="hidden" name="relSex" value="1"/>
                        </div>
                        <div class="weui_cells_title relativeCert_birth" style="display: none">连带被保险人出生日期</div>
                        <div class="weui_cells weui_cells_form relativeCert_birth" style="display: none">
                            <div class="weui_cell">
                                <div class="weui_cell_hd">
                                    出生日期
                                </div>
                                <div class="weui_cell_bd weui_cell_primary">
                                    <input class="weui_input" type="date" name='relBirthDay' id="relBirthDayId" value="" style="padding-left: 35px">
                                </div>
                            </div>
                        </div>
                        <div class="weui_cells weui_cells_form" style="margin:0">
                            <input name="group_id" type="hidden" value="61249"/>
                            <input name="eid" type="hidden" value="2955"/>
                        </div>
                    </form>
                    <div class="weui_btn_area">
                        <button class="weui_btn weui_btn_primary" id="nextBtnID" type="button">下一步</button>
                        <a class="weui_btn weui_btn_default" href="http://www.insgeek.com/Login/forget_pw">忘记密码？</a>
                    </div>
                    <div class="weui_toptips weui_warn js_tooltips"></div>
                </div>
            </article>
        </section>
    </div>

    <!--BEGIN dialog1-->
    <div class="weui_dialog_confirm" id="twoBtDia" style="display: none;">
        <div class="weui_mask"></div>
        <div class="weui_dialog">
            <div class="weui_dialog_hd"><strong class="weui_dialog_title">弹窗标题</strong></div>
            <div class="weui_dialog_bd"></div>
            <div class="weui_dialog_ft">
                <a href="javascript:;" class="weui_btn_dialog default">取消</a>
                <a href="javascript:;" class="weui_btn_dialog primary">确定</a>
            </div>
        </div>
    </div>
    <!--END dialog1-->
    <!--BEGIN dialog2-->
    <div class="weui_dialog_alert" id="oneBtDia" style="display: none;">
        <div class="weui_mask"></div>
        <div class="weui_dialog">
            <div class="weui_dialog_hd"><strong class="weui_dialog_title"></strong></div>
            <div class="weui_dialog_bd"></div>
            <div class="weui_dialog_ft">
                <a href="javascript:;" class="weui_btn_dialog primary submitBtn">确定</a>
            </div>
        </div>
    </div>
    <!--END dialog2-->



<?php echo '<script'; ?>
 src="<?php echo $_smarty_tpl->getConfigVariable('static_path');?>
/js/mobile/zepto.min.js"><?php echo '</script'; ?>
>
<?php echo '<script'; ?>
 src="<?php echo $_smarty_tpl->getConfigVariable('static_path');?>
/js/mobile/zepto.touch.js"><?php echo '</script'; ?>
>
<?php echo '<script'; ?>
 src="<?php echo $_smarty_tpl->getConfigVariable('static_path');?>
/js/mobile/router.min.js"><?php echo '</script'; ?>
>
<?php echo '<script'; ?>
>
    //切换页面title内容显示
    var titlename = $('#title_name').html();
    if(titlename)
    {
        $('title').html(titlename);
    }
<?php echo '</script'; ?>
>
<?php echo '<script'; ?>
 src="http://res.wx.qq.com/open/js/jweixin-1.0.0.js"><?php echo '</script'; ?>
>


    <?php echo '<script'; ?>
 src="<?php echo $_smarty_tpl->getConfigVariable('static_path');?>
/js/igCustom.js"><?php echo '</script'; ?>
>
    <?php echo '<script'; ?>
 src="<?php echo $_smarty_tpl->getConfigVariable('static_path');?>
/js/group/group.js"><?php echo '</script'; ?>
>
    <?php echo '<script'; ?>
 language="javascript">
    $(document).ready(function ()
    {
        var root="http://www.insgeek.com";

        var mainAccountObj=$('#groupReg #mainAccountID');
        var relAccountObj=$('#groupReg #relAccountId')
        var passwordObj=$('#groupReg #passwordID');
        var relBirthDayObj=$('#groupReg #relBirthDayId');
        var formObj=$('#groupReg #formID');
        var nextBtnObj=$('#groupReg #nextBtnID');
        var warningMsgObj=$('#groupReg #warningMsgID');
        /*被保险人显示规则*/
        var passwordDiv=$('#groupReg .password');
        var relativeCertDiv=$('#groupReg .relativeCert');
        var relativeSexDiv=$('#groupReg .relativeCert_sex');
        var relativeBirthDiv=$('#groupReg .relativeCert_birth');
        var relBirthDateObj=$('#groupReg input[name="relBirthDay"]');

        var relCertSelObj=$("#groupReg #RelCertType");
        var relSelObj=$("#groupReg #relTypeSel");

        var hideRelSexObj=$('#groupReg #relSexId');
        var relSexRadioObj=$('#groupReg input[name="relSexR"]');
        relSexRadioObj.change(function(){
            hideRelSexObj.val($(this).val());
        });
        /*选择被保险人类型事件*/
        relSelObj.bind("change", function () {
            if ($(this).val() == 1) {
                /*本人*/
                relativeCertDiv.hide();
                showBirthRelate(false);
            }
            else {
                relativeCertDiv.show();
                if(relCertSelObj.val()==0){
                    showBirthRelate(false);
                }else if(relCertSelObj.val()==1){
                    showBirthRelate(true);
                }
                if ($(this).val() == 2) {
                    /*子女*/
                    relCertSelObj.bind("change", function () {
                        if ($(this).val() == 0) {
                            /*身份证*/
                            showBirthRelate(false);
                        }
                        if ($(this).val() == 1) {
                            /*出生证*/
                            showBirthRelate(true);
                        }
                    });
                }
            }
        });
        relSelObj.change();
        /*是否显示出生证相关内容*/
        function showBirthRelate(flag){
            if(flag) {
                relativeSexDiv.show();
                relativeBirthDiv.show();
            }
            else{
                relativeSexDiv.hide();
                relativeBirthDiv.hide();
            }
        }
        /*Error Functions*/
        // show error toast
        var tooltips = $( '.js_tooltips' );
        function showToastError(msg,timeout,obj){
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

        var groupId="61249";
        var eid="2955";
        var starttime="1487001600";
        var login="";//是否登录，来决定是否需要密码
        var needPw=false;
        /*主被保险人的账号输入变更事件：需要验证输入的内容是否合法，且决定是否显示密码框*/
        mainAccountObj.change(function(){
            checkMainAccount();
        });
        if(mainAccountObj.val().length!=''){
            checkMainAccount();
        }
        /*check_1*/
        function checkMainAccount() {
            removeError(mainAccountObj);
            var mainAcResult=checkGroupRegMainAccount(mainAccountObj.val());
            var flag=false;
            switch(mainAcResult){
                case -1:
                    showToastError('请输入登录名或者身份证号来申请加入保障。',5000,mainAccountObj);
                    passwordDiv.hide();
                    break;
                case 0:
                    showToastError('您输入的登录名不存在或者证件号码不符合校验规则，请重新输入',5000,mainAccountObj);
                    passwordDiv.hide();
                    break;
                case 1:
                    if (!login) {
                        passwordDiv.show();
                        needPw=true;
                    }
                    showToastError('您输入的为登录名，请输入对应的密码进行确认。',5000);
                    flag=true;
                    break;
                case 2:
                    if (check_id_number_exist_ajax(mainAccountObj.val(), root)) {
                        if(!login) {
                            showToastError('您输入的为身份证，请输入对应的密码进行确认。',5000);
                            passwordDiv.show();
                            needPw=true;
                        }else{
                            passwordDiv.hide();
                            needPw=false;
                        }
                    } else {
                        showToastError('您输入的为身份证，请输入其他信息或点击下一步继续操作。',5000);
                        passwordDiv.hide();
                        needPw=false;
                    }
                    flag=true;
                    break;
            }
            return flag;
        }
        /*连带被保险人的账号输入变更事件：*/
        relAccountObj.change(function(){
            checkRelAccount();
            var relCertType = relCertSelObj.val();
            if(relCertType==1){
                //如果为出生证，需要检查这个出生证是否存在于系统中，如果存在，需要将其对应的性别和出生日期带出来，并将性别和日期的选择进行关闭

            }
        });
        relCertSelObj.change(function(){
            checkRelAccount();
        });
        /*check_2*/
        function checkRelAccount() {
            var relType = relSelObj.val();
            removeError(relAccountObj);
            var flag = false;
            if (relType == 2) {
                var relCertType = relCertSelObj.val();
                var relAccount=relAccountObj.val();
                var relAcResult = checkRelativeAccount(relType, relCertType, relAccount);
                switch (relAcResult) {
                    case -1:
                        showToastError('请输入连带被保险人的证件号来申请加入保障。',5000,relAccountObj);
                        break;
                    case 0:
                        showToastError('您输入的连带被保险人的证件号码不符合校验规则，请重新输入',5000,relAccountObj);
                        break;
                    case 1:
                        tooltips.hide();
                        flag = true;
                        break;
                }
                relBirthDayObj.prop('readonly',false);
                relSexRadioObj.prop('disabled',false);
                //如果是出生证且输入正确，需要检查出生证是否存在，如果存在，应该带出来生日和性别
                if(flag && relCertType == 1){
                    var birResult=checkBirthCertExist(relAccount,root);
                    if(birResult!=null){
                        var birStr=birResult.birth_year+'-'+birResult.birth_month+'-'+birResult.birth_day;
                        var sex=birResult.sex;
                        hideRelSexObj.val(sex);
                        relBirthDayObj.val(birStr);
                        for(var index=0 ; index<relSexRadioObj.length ;index++){
                            var radoiVal = relSexRadioObj.eq(index).val();
                            if(radoiVal == sex) {
                                relSexRadioObj.get(index).checked = true;
                            }
                        }
                        relBirthDayObj.prop('readonly',true);
                        relSexRadioObj.prop('disabled',true);
                    }
                }
            } else if (relType == 1) {
                flag = true;//如果是本人，不需要检查连带被保险人的证件信息
            }
            return flag;
        }

        relBirthDateObj.on('changeDate',function(){
            checkRelBirth();
        });
        /*check_3*/
        function checkRelBirth() {
            var relType = relSelObj.val();
            var relCertType = relCertSelObj.val();
            var flag=false;
            if(relType==2 && relCertType==1){
                var birthStr=relBirthDayObj.val();
                if(birthStr.length==''){
                    showToastError('请选择连带被保险人的出生日期。',5000);
                }else {
                    tooltips.hide();
                    flag = true;
                }
            }else{
                flag=true;
            }
            return flag;
        }
        /*check_4*/
        function checkPassword(){
            var flag=false;
            removeError(passwordObj);
            if(!needPw){
                flag = true;
            }else{
                var mainAc=mainAccountObj.val();
                var pwd=passwordObj.val();
                if(!check_user_password_match_ajax(mainAc,pwd,root))
                {
                    showToastError('您输入的密码有误，请确认密码。',5000,passwordObj);
                    flag=false;
                }else{
                    flag=true;
                }
            }
            return flag;
        }
        /*check_5*/
        function checkUserCanApply(){
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
            var result=checkUserCanApplyIns(relType,groupId,eid,toApplyId,birthDay,starttime,mainAc,root);
            if(result===false){
                showWindowError('错误','网络异常，请重新提交。');
            }else if(result.code!=0){
                showWindowError('错误',result.msg);
            }else{
                flag=true;
            }
            return flag;
        }
        nextBtnObj.on('click',function(){
            if(!checkMainAccount()){
                return ;
            }
            if(!checkRelAccount()){
                return;
            }
            if(!checkRelBirth()){
                return;
            }
            if(!checkPassword()){
                return;
            }
            if(!checkUserCanApply()){
                return;
            }
            formObj.submit();
        });
    });
    <?php echo '</script'; ?>
>


</body>
</html><?php }} ?>
