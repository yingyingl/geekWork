<!DOCTYPE HTML>
<html>
<head>
    <meta charset=utf-8"utf-8">
    <title>登录</title>
    <meta name="renderer" content="webkit|ie-comp|ie-stand">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="keywords" content="" />
    <meta name="description" content="" />

    <link rel="shortcut icon" href=""/>
    <link rel="bookmark" href=""/>


    <link href="{#static_path#}/css/bootstrap.css" rel="stylesheet">
    <link href="{#static_path#}/css/font-awesome/css/font-awesome.css" rel="stylesheet">
    <!--图片浏览样式-->
    <link href="{#static_path#}/css/plugins/blueimp/css/blueimp-gallery.css" rel="stylesheet">
    <!-- Sweet Alert -->
    <link href="{#static_path#}/css/plugins/sweetalert/sweetalert.css" rel="stylesheet">
    <!-- 日期组件样式表 -->
    <link href="{#static_path#}/css/plugins/datapicker/datepicker3.css" rel="stylesheet">
    <!-- 流程组件样式-->
    <link href="{#static_path#}/css/plugins/steps/jquery.steps.css" rel="stylesheet">
    <!-- FooTable -->
    <link href="{#static_path#}/css/plugins/footable/footable.core.css" rel="stylesheet">
    <!-- Morris -->
    <link href="{#static_path#}/css/plugins/morris/morris-0.4.3.css" rel="stylesheet">
    <link href="{#static_path#}/css/animate.css"  rel="stylesheet">
    <link href="{#static_path#}/css/style.css" rel="stylesheet">
    <link href="{#static_path#}/css/home.css" rel="stylesheet">
    <!--drag-->
    <link href="{#static_path#}/css/plugins/drag/drag.css" rel="stylesheet">
    <!-- Toastr style -->
    <link href="{#static_path#}/css/plugins/iCheck/custom.css" rel="stylesheet">
    <!--slick-->
    <link href="{#static_path#}/css/plugins/slick/slick.css" rel="stylesheet">
    <link href="{#static_path#}/css/plugins/slick/slick-theme.css" rel="stylesheet">
    <!-- Mainly scripts -->
    <script src="{#static_path#}/js/plugins/jquery-2.1.1.js"></script>
    <script src="{#static_path#}/js/plugins/bootstrap.min.js"></script>
    <script src="{#static_path#}/js/plugins/metisMenu/jquery.metisMenu.js"></script>
    <script src="{#static_path#}/js/plugins/slimscroll/jquery.slimscroll.min.js"></script>
    <!-- Topup -->
    <script type="text/javascript" src="{#static_path#}/js/topup.js"></script>
    <!-- 浮动菜单 -->
    <script type="text/javascript" src="{#static_path#}/js/zzsc.js"></script>
    <script type="text/javascript" src="{#static_path#}/js/common_ajax.js"></script>
    <!-- login -->
    <script src="{#static_path#}/js/igCustom.js"></script>

    <!--[if lt IE 9]>
    <div class="alert alert-danger topframe" role="alert">您的浏览器实在<strong>太旧了！</strong>，请先升级完浏览器！
        <a target="_blank" class="alert-link" href="http://browsehappy.com/">立即升级</a>
    </div>
    <![endif]-->

    <link href="{#static_path#}/css/login.css"  rel="stylesheet">

    {block name="css"}{/block}
</head>
<body class="top-navigation gray-bg">
<!--固定定位回到顶部-->

<div class="position-fixed">
    <div class="position-menu">
        <a class="position-icon position-icon-same myclear">
            <i class="position-icon-1"></i>
            <div class="icon-hover hover-font">
                <div>工作日&nbsp;08:00-20:00</div>
                <span class="label label-warning">现在咨询</span>
            </div>
        </a>
        <span class="position-icon position-icon-same myclear">
            <i class="position-icon-2"></i>
            <span class="icon-hover hover-font hover-wechat">
                <img class="hover-wechat-img" src="{#static_path#}/images/weixin_erweima.jpg" alt=""/>
            </span>
        </span>
        <span class="position-icon position-icon-same myclear">
            <i class="position-icon-3"></i>
            <span class="icon-hover hover-font form-bg-1">
                <span>工作日&nbsp;08:00-20:00</span>
                <span class="fa fa-phone">&nbsp;400-886-2309</span>
            </span>
        </span>
        <span class="position-icon position-icon-same enter-top">
            <i class="position-icon-5"></i>
        </span>
    </div>
</div>
<script>
    {literal}
    $(function () {
        //提交预约报价
        $(document).on("click", "#feedbackForm_submit", function ()
        {
            var showMsgObj=$("#showMsg");
            var formObj = $("#feedbackForm");
            var feedback_company_name=$.trim(formObj.find("input[name='feedback_company_name']").val());
            var feedback_realname=$.trim(formObj.find("input[name='feedback_realname']").val());
            var feedback_mobile=$.trim(formObj.find("input[name='feedback_mobile']").val());
            var feedback_email=$.trim(formObj.find("input[name='feedback_email']").val());
            var feedback_number=$.trim(formObj.find("input[name='feedback_number']").val());


            if(feedback_company_name) {

            }
            else {
                showMsgObj.show().html("必须填写公司名称");
                return false;
            }

            if(feedback_realname) {
                var realnameReg = /^[\u4e00-\u9fa5]{2, 15}$/;
                if (!realnameReg.test(feedback_realname)) {
                    showMsgObj.show().html("联系人姓名：2-15个汉字");
                    return false;
                }

            }
            else {
                showMsgObj.show().html("必须填写真实姓名");
                return false;
            }

            if(feedback_mobile) {
                var mobileReg = /^1[3-8][0-9]{9}$/;
                if (!mobileReg.test(feedback_mobile))
                {
                    showMsgObj.show().html("手机号码只能是11位数字");
                    return false;
                }
            }
            else {
                showMsgObj.show().html("必须填写手机号码");
                return false;
            }

            if(feedback_email) {
                var emailReg = /^([a-zA-Z0-9]+[_|-|.]?)*[a-zA-Z0-9]+@([a-zA-Z0-9]+[_|-|.]?)*[a-zA-Z0-9]+.[a-zA-Z]{2,3}$/gi;
                if (!emailReg.test(feedback_email)) {
                    showMsgObj.show().html("邮箱格式错误");
                    return false;
                }
            }
            else {
                showMsgObj.show().html("必须填写邮箱");
                return false;
            }

            if(feedback_number) {
                var numberReg = /^[0-9]+$/;
                if (!numberReg.test(feedback_number)) {
                    showMsgObj.show().html("员工人数只能是数字");
                    return false;
                }
            }
            else {
                showMsgObj.show().html("员工人数必须填写");
                return false;
            }

            showMsgObj.hide().html("");

            $.ajax({
                type:"post",
                url:"http://www.insgeek.com/feedback/bespeak_save/"+Math.random(),
                data:formObj.serialize(),
                dataType:"json",
                cache:false,
                async:false,
                success:function(response)
                {
                    if(response==1)
                    {
                        formObj.hide();
                        $("#showReturn").show();
                    }
                }
            });//end ajax

        });
        $(document).on("click","#returnForm",function() {
            $("#feedbackForm").show();
            $("#showReturn").hide();
            $("#feedbackForm")[0].reset();
        });
    });
    {/literal}
</script>

<!--回到顶部结束-->
<div id="wrapper">
<div class="gray-bg" id="page-wrapper" style="padding: 0">
<!--头部内容开始-->
    {include file="template/header.tpl"}

    {block name="container"}{/block}
    {include file="template/footer.tpl"}

    {block name="js"}{/block}
</div>
</div>



<script>
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
</script>

<!--vuejs-->
<script src="{#static_path#}/js/vuejs/vue.js"></script>
<script src="{#static_path#}/js/ig_common.js"></script>
<!-- Data Tables -->
<script src="{#static_path#}/js/plugins/dataTables/jquery.dataTables.js"></script>
<script src="{#static_path#}/js/plugins/dataTables/dataTables.bootstrap.js"></script>

<!-- iCheck -->
<script src="{#static_path#}/js/plugins/iCheck/icheck.min.js"></script>
<!-- 时间组件 -->
<script src="{#static_path#}/js/plugins/datapicker/bootstrap-datepicker.js"></script>

<!-- Sweet alert -->
<script src="{#static_path#}/js/plugins/sweetalert/sweetalert.min.js"></script>
<!-- 图片浏览 -->
<script src="{#static_path#}/js/plugins/blueimp/jquery.blueimp-gallery.min.js"></script>
<!-- 流程组件 -->
<script src="{#static_path#}/js/plugins/staps/jquery.steps.min.js"></script>
<!-- FooTable -->
<script src="{#static_path#}/js/plugins/footable/footable.all.min.js"></script>
<!-- Custom and plugin javascript -->
<script src="{#static_path#}/js/inspinia.js"></script>
<script src="{#static_path#}/js/plugins/pace/pace.min.js"></script>
<!-- Page-Level Scripts -->
<!--slick-->
<script src="{#static_path#}/js/plugins/slick/slick.min.js"></script>
<!--drag-->
<script src="{#static_path#}/js/plugins/drag/drag.js"></script>
<script type="text/javascript">
    $(function () {
        var page= "#"+ $("#page").attr("data-page");
        $(page).addClass("active");
        $(page).parent().addClass("in");
        $(page).parent().parent().addClass("active");
        //alert(page);
        $('.date').datepicker({
            format: 'yyyy-mm-dd',
            keyboardNavigation: false,
            forceParse: false,
            autoclose: true
            //todayBtn: 'linked'
        });
    });
</script>
</body>
</html>