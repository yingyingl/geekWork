
<!DOCTYPE HTML>
<html>
<head>
    <meta charset=utf-8"utf-8">
    <title>注册</title>
    <meta name="renderer" content="webkit|ie-comp|ie-stand">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="keywords" content="" />
    <meta name="description" content="" />
    <link rel="shortcut icon" href=""/>
    <link rel="bookmark" href=""/>

    <link href="../../public/css/bootstrap.css" rel="stylesheet">
    <link href="../../public/css/font-awesome/css/font-awesome.css" rel="stylesheet">
    <!--图片浏览样式-->
    <link href="../../public/css/plugins/blueimp/css/blueimp-gallery.css" rel="stylesheet">
    <!-- Sweet Alert -->
    <link href="../../public/css/plugins/sweetalert/sweetalert.css" rel="stylesheet">
    <!-- 日期组件样式表 -->
    <link href="../../public/css/plugins/datapicker/datepicker3.css" rel="stylesheet">
    <!-- 流程组件样式-->
    <link href="../../public/css/plugins/steps/jquery.steps.css" rel="stylesheet">
    <!-- FooTable -->
    <link href="../../public/css/plugins/footable/footable.core.css" rel="stylesheet">
    <!-- Morris -->
    <link href="../../public/css/plugins/morris/morris-0.4.3.css" rel="stylesheet">
    <link href="../../public/css/animate.css"  rel="stylesheet">
    <link href="../../public/css/style.css" rel="stylesheet">
    <link href="../../public/css/home.css" rel="stylesheet">
    <!--drag-->
    <link href="../../public/css/plugins/drag/drag.css" rel="stylesheet">
    <!-- Toastr style -->
    <link href="../../public/css/plugins/iCheck/custom.css" rel="stylesheet">
    <!--slick-->
    <link href="../../public/css/plugins/slick/slick.css" rel="stylesheet">
    <link href="../../public/css/plugins/slick/slick-theme.css" rel="stylesheet">
    <!-- Mainly scripts -->
    <script src="../../public/js/plugins/jquery-2.1.1.js"></script>
    <script src="../../public/js/plugins/bootstrap.min.js"></script>
    <script src="../../public/js/plugins/metisMenu/jquery.metisMenu.js"></script>
    <script src="../../public/js/plugins/slimscroll/jquery.slimscroll.min.js"></script>
    <!-- Topup -->
    <script type="text/javascript" src="../../public/js/topup.js"></script>
    <!-- 浮动菜单 -->
    <script type="text/javascript" src="../../public/js/zzsc.js"></script>
    <script type="text/javascript" src="../../public/js/common_ajax.js"></script>
    <!-- login -->
    <script src="../../public/js/igCustom.js"></script>
    <script src="../../public/js/login/login.js"></script>
    <!--[if lt IE 9]>
    <div class="alert alert-danger topframe" role="alert">您的浏览器实在<strong>太旧了！</strong>，请先升级完浏览器！
        <a target="_blank" class="alert-link" href="http://browsehappy.com/">立即升级</a>
    </div>
    <![endif]-->

    <link href="../../public/css/login.css"  rel="stylesheet">

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
                <img class="hover-wechat-img" src="../../public/images/weixin_erweima.jpg" alt=""/>
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
                var realnameReg = /^[\u4e00-\u9fa5]{2,15}$/;
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
</script>

<!--回到顶部结束-->
<div id="wrapper">
    <div class="gray-bg" id="page-wrapper" style="padding: 0">
        <!--头部内容开始-->
        <div class="row nav-top">
            <div class="navy-bg">
                <div class="container">
                    <div class="pull-right">
                        <span class="pull-left text-white font-16" style="padding-right: 15px"><strong><i class="fa fa-phone"></i> 400-886-2309 </strong></span>
                        <ul class="pull-left head-erwei clearfix">
                            <li class="clearfix">
                                <span class="head-hover head-hover-zeo"></span>
                                <span class="head-hover-show">
                                    <span class="hover-top-triangle"></span>
                                    <span class="pec-box">
                                        <img src="../../public/images/weixin_erweima.jpg" alt="微信二维码">
                                        <span class="remind-font">关注极客公众号<br/>随身便携百保箱</span>
                                    </span>
                                </span>
                            </li>
                            <li class="clearfix">
                                <span class="head-hover head-hover-one"></span>
                                <span class="head-hover-show">
                                    <span class="hover-top-triangle"></span>
                                    <span class="pec-box">
                                        <img src="../../public/images/sina_erweima.jpg" alt="微博二维码">
                                        <span class="remind-font">关注极客微博，简约<br/>文字，博览保险众生态</span>
                                    </span>
                                </span>
                            </li>
                            <li class="clearfix">
                                <span class="head-hover head-hover-two"></span>
                                <span class="head-hover-show">
                                    <span class="hover-top-triangle"></span>
                                    <span class="pec-box">
                                        <img src="../../public/images/baoyan_erweima.jpg" alt="保研班二维码">
                                        <span class="remind-font">关注保研班<br/>洞悉风险，乐享保障</span>
                                    </span>
                                </span>
                            </li>
                        </ul>
                                                      <span id="login_reg" class="login">
                                 <a href="index.htm" tppabs="http://www.insgeek.com/login/index" rel="nofollow">登录</a><a href="reg.htm" tppabs="http://www.insgeek.com/login/reg" rel="nofollow">注册</a>
                             </span>                    </div>
                </div>
            </div>
        </div>

        <div class="row white-bg head-warp">
            <div class="container head">
                <a href="../index.htm" class="pull-left">
                    <img src="../../public/images/logo.png" alt="logo" title="保险极客"/>
                </a>
                <span style="float: left;height: 30px;line-height:30px;margin: 20px 0 20px 5px;font-size: 16px;color: #00ab9f;padding-left: 10px;border-left: 1px solid #00ab9f" title="中小企业员工保障">
                    中小企业员工保障
                </span>
                <!--新版导航设计-->
                <div class="nav-box" id="navbar" style="margin-right: -20px">
                    <ul>
                        <li id="index">
                            <a href="../index.htm" tppabs="http://www.insgeek.com/"><span class="navbar-spacing">首</span>页</a>
                        </li>
                        <li id="insurancetemplate">
                            <a href="../InsuranceTemplate/index.htm" tppabs="http://www.insgeek.com/InsuranceTemplate/index">产品中心</a>
                        </li>
                        <li id="user">
                            <a href="javascript:if(confirm('http://www.insgeek.com/user/insurance  \n\n���ļ�δ�� Teleport Pro ���أ���Ϊ ����һ��λ���ѱ�վ����������ų��׼��������Ե�·����ַ��(Teleport Pro ���ԶԸ�ѡ��������ã�����ġ��������ԡ�-������淶��)  \n\n����Ҫ�ӷ�����������?'))window.location='http://www.insgeek.com/user/insurance'" tppabs="http://www.insgeek.com/user/insurance">保险管家</a>
                        </li>
                    </ul>
                </div>
            </div>
        </div>

        <div id="login">
            <img class="bg-img" src="../../public/images/login/enterprise.jpg" alt="企业登录背景图" style="opacity: 1;">
            <img class="bg-img" src="../../public/images/login/user.jpg" alt="个人用户登录背景图">
            <div class="login-content">
                <div class="login-font">
                    中小企业员工保障
                </div>
                <div class="loginAll login-register">
                    <div class="loginAll-box">
                        <div class="tab-content">
                            <p class="text-center" style="font-size: 18px">企业用户注册</p>
                            <div id="tab-1" class="tab-pane active">
                                <div class="alert alert-warning" id="RegStateIDEnterprise">
                                    为了保护企业利益，方便您以后的操作，请填写真实信息，我们承诺对您填写的的信息严格保密绝不外泄！
                                </div>
                                <div class="alert alert-danger" style="display: none;padding-top: 0px">
                                    <h2 style="margin-top: 10px;"><i class="fa fa-times-circle"></i> 注册失败！</h2>
                                    <span id="errorMsgIDEnterprise">用户名已被使用!</span>
                                </div>
                                <form id="formRegEnterprise" name="form" action="http://www.insgeek.com/login/groupRegDo" method="post" class="form-horizontal">
                                    <div class="form-group">
                                        <label for="groupAccountIDEnterprise" class="col-sm-4 control-label">企业账号：</label>
                                        <div class="col-sm-8"><input name="group_account" id="groupAccountIDEnterprise" type="text" class="form-control" placeholder="企业账号"></div>
                                    </div>
                                    <div class="form-group">
                                        <label for="mobileID" class="col-sm-4 control-label">手机号码：</label>
                                        <div class="col-sm-8">
                                            <div class="input-group">
                                                <input type="text" class="form-control" id="mobileID" placeholder="手机号码" maxlength="11" name="mobile">
                                                <span class="input-group-btn"> <button type="button" class="btn btn-primary" id="setMobileVerifyID">发送验证码</button></span>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label for="codeID" class="col-sm-4 control-label">验&nbsp;&nbsp;证&nbsp;&nbsp;码：</label>
                                        <div class="col-sm-8"><input name="code" id="codeID" type="text" class="form-control" maxlength="4" placeholder="验证码"></div>
                                    </div>
                                    <div class="form-group">
                                        <label for="passwordIDEnterprise" class="col-sm-4 control-label">登录密码：</label>
                                        <div class="col-sm-8"><input name="password" id="passwordIDEnterprise" type="password"
                                                                     class="form-control" placeholder="8位以上字母和数字组合"></div>
                                    </div>
                                    <div class="form-group">
                                        <label for="repeatIDEnterprise" class="col-sm-4 control-label">确认密码：</label>
                                        <div class="col-sm-8"><input name="repeat" id="repeatIDEnterprise" type="password"
                                                                     class="form-control" placeholder="确认您的登录密码"></div>
                                    </div>
                                    <div class="form-group">
                                        <div class="checkbox" style="padding-left:35px">
                                            <label>
                                                <input type="checkbox" value="" checked="checked">
                                                同意 <a href="../help/view/cid/16.html" tppabs="http://www.insgeek.com/help/view/cid/16.html" target="_blank" class="reg-agreement">《保险极客注册协议》</a>
                                            </label>
                                        </div>
                                    </div>
                                    <button type="button" id="form_submit_enterprise" class="btn btn-warning btn-block">注册企业用户</button>
                                </form>
                                <div class="loginAll-box-bottom text-right small">
                                    已有账号？ <a href="index.htm" tppabs="http://www.insgeek.com/Login/" style="border-bottom: 1px solid">立即登录</a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <script>
            var url1 = window.location.href;
            //alert(url);
        //    if (url1.indexOf('/puser/1') >= 0)
        //    {
        //        $("#login img").css("opacity","2");
        //        $('#groupuser').removeClass("active");
        //        $('#tab-1').removeClass("active");
        //        $('#puser').addClass("active");
        //        $('#tab-2').addClass("active");
        //    }
        </script>

        <!-- footer 开始 -->
        <div class="row foot-bar navy-bg">
            <div class="container">
                <div class="col-xs-8">
                    <div class="col-xs-4" onselectstart="return false;" unselectable="on">
                        <img class="bottom-erwei-pec" src="../../public/images/foot-er.png">
                        <span class="bottom-erwei-font text-center">微信关注保险极客</span>
                    </div>
                    <ul class="list-unstyled col-xs-2 foot-md text-center">
                        <h3>探索极客</h3>
                        <li><a href="../help/view/cid/8.html" rel="nofollow">关于我们</a></li>
                        <li><a href="../help/team.html" rel="nofollow">极客团队</a></li>
                        <li><a href="../help/view/cid/19.html" rel="nofollow">资质展示</a></li>
                        <li><a href="../help/view/cid/9.html" rel="nofollow">联系我们</a></li>
                    </ul>
                    <ul class="list-unstyled col-xs-2 foot-md text-center">
                        <h3>享用极客</h3>
                        <li><a href="../help/view/cid/10.html" rel="nofollow">企业员福</a></li>
                        <li><a href="../help/view/cid/11.html" rel="nofollow">企业保障</a></li>
                        <li><a href="../help/view/cid/12.html" rel="nofollow">个人服务</a></li>
                        <li><a href="../help/view/cid/13.html" rel="nofollow">战略合作</a></li>
                    </ul>
                    <ul class="list-unstyled col-xs-2 foot-md text-center">
                        <h3>极客动态</h3>
                        <li><a href="../help/view/cid/6.html" rel="nofollow">媒体报道</a></li>
                        <li><a href="../help/view/cid/7.html" rel="nofollow">极客快讯</a></li>
                    </ul>
                    <ul class="list-unstyled col-xs-2 foot-md text-center">
                        <h3>极客帮助</h3>
                        <li><a href="../help/view/cid/14.html" target="_blank" rel="nofollow">新人指南</a></li>
                        <li><a href="../help/view/cid/15.html" rel="nofollow">常见问题</a></li>
                        <li><a href="../help/view/cid/16.html" target="_blank" rel="nofollow">服务协议</a></li>
                    </ul>
                </div>
                <div class="col-xs-4 text-center">
                    <p style="font-size: 34px;margin-bottom: 8px;"><i class="fa fa-phone"></i> 400-886-2309</p>
                    <p style="margin-bottom: 6px;">
                        <a style="color: #fff" rel="nofollow"><i class="fa fa-heart"></i>在线客服</a>
                        <a style="color: #fff" rel="nofollow"><i class="fa fa-thumbs-up" style="padding-left: 75px"></i> 反馈建议</a>
                    </p>
                    <p style="margin-bottom: 6px;"><i class="fa fa-envelope-o"></i> 客服邮箱 service@insgeek.com</p>
                    <p style="margin-bottom: 6px;"><i class="fa fa-clock-o"></i> 工作时间 ( 工作日 08:00-20:00 ) </p>
                    <p style="text-align: left;padding-left: 54px;margin-bottom: 6px"><i class="fa fa-suitcase"></i> 商务合作 010-67029688</p>
                </div>
            </div>
        </div>
        <div class="row footer-bottom">
            <div class="container">
                <div class="ins-maindiv ins-center clearfix">
                    <div class="col-xs-12 text-center text-muted">
                        <small class="friendly-link">
                            <a target="_blank" rel="nofollow">安邦保险</a>
                            <a target="_blank" rel="nofollow">中国平安</a>
                            <a target="_blank" rel="nofollow">合众人寿</a>
                            <a target="_blank" rel="nofollow">泰康养老</a>
                            <a target="_blank" rel="nofollow">新华保险</a>
                            <a target="_blank" rel="nofollow">好大夫在线</a>
                            <a target="_blank" rel="nofollow">亲亲小保</a>
                            <a target="_blank" rel="nofollow">企办</a>
                            <a target="_blank" rel="nofollow">中子星企明星</a>
                            <a target="_blank" rel="nofollow">天天投</a>
                            <a target="_blank" rel="nofollow">大象人事</a>
                            <a target="_blank" rel="nofollow">纳人</a>
                        </small>
                    </div>
                    <div class="col-xs-12 text-center text-muted">
                        <p>
                            <small>
                                保险极客<a href="../index.htm" tppabs="http://www.insgeek.com/">员工福利</a>产品&nbsp;© 2014-2016 Insgeek.com All Rights Reserved
                                <a target="_blank" rel="nofollow">京ICP备15030724号 </a>
                            </small>
                            <br>
                            <small>
                                请使用IE9+/Chrome/Firefox/360急速模式，获得最佳浏览体验
                            </small>
                        </p>
                    </div>
                    <div class="col-xs-12 text-center">
                        <div class="photos">
                            <a href="../index.htm">
                                <img src="../../public/images/logo_a.png" alt="logo" title="保险极客"/>
                            </a>
                            <a id='___szfw_logo___' href="https://credit.szfw.org/CX20150928011852880188.html" target='_blank'><img src="../../public/images/cert.png" border='0' width="90" height="33"/></a>
                            <script type='text/javascript'>(function(){document.getElementById('___szfw_logo___').oncontextmenu = function(){return false;}})();</script>
                            <a href="https://ss.knet.cn/verifyseal.dll?sn=e15072711010859602eeyb000000&a=1&pa=0.06950726862664514" target='_blank'  rel="nofollow"><img src="../../public/images/knet_logo.png" border='0'/></a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- footer 结束 -->
    </div>
</div>
<script>
    var root = '../index.htm'/*tpa=http://www.insgeek.com/*/;
</script>
<script src="../../public/js/verifyMob.js"></script>
<script src="../../public/js/login/reg.js"></script>

<!--vuejs-->
<script src="../../public/js/vuejs/vue.js"></script>
<script src="../../public/js/ig_common.js"></script>
<!-- Data Tables -->
<script src="../../public/js/plugins/dataTables/jquery.dataTables.js"></script>
<script src="../../public/js/plugins/dataTables/dataTables.bootstrap.js"></script>

<!-- iCheck -->
<script src="../../public/js/plugins/iCheck/icheck.min.js"></script>
<!-- 时间组件 -->
<script src="../../public/js/plugins/datapicker/bootstrap-datepicker.js"></script>

<!-- Sweet alert -->
<script src="../../public/js/plugins/sweetalert/sweetalert.min.js"></script>
<!-- 图片浏览 -->
<script src="../../public/js/plugins/blueimp/jquery.blueimp-gallery.min.js"></script>
<!-- 流程组件 -->
<script src="../../public/js/plugins/staps/jquery.steps.min.js"></script>
<!-- FooTable -->
<script src="../../public/js/plugins/footable/footable.all.min.js"></script>
<!-- Custom and plugin javascript -->
<script src="../../public/js/inspinia.js"></script>
<script src="../../public/js/plugins/pace/pace.min.js"></script>
<!-- Page-Level Scripts -->
<!--slick-->
<script src="../../public/js/plugins/slick/slick.min.js"></script>
<!--drag-->
<script src="../../public/js/plugins/drag/drag.js"></script>
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