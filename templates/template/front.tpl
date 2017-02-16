<!DOCTYPE HTML>
<html>
<head>
    <meta charset="utf-8">
    <title>{block name="title"}{/block}</title>
    <meta name="renderer" content="webkit|ie-comp|ie-stand">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="keywords" content="" />
    <meta name="description" content="" />

    <link rel="shortcut icon" href=""/>
    <link rel="bookmark" href=""/>


    <link href="{#static_path#}/css/bootstrap.css" rel="stylesheet">
    <link href="{#static_path#}/css/plugins/font-awesome.css" rel="stylesheet">  <!--图标样式-->
    <link href="{#static_path#}/css/plugins/sweetalert.css" rel="stylesheet">    <!-- 确认弹窗 -->

    {*
       <link href="{#static_path#}/css/plugins/blueimp/css/blueimp-gallery.css" rel="stylesheet">
       <link href="{#static_path#}/css/plugins/sweetalert/sweetalert.css" rel="stylesheet">
       <link href="{#static_path#}/css/plugins/datapicker/datepicker3.css" rel="stylesheet">
       <link href="{#static_path#}/css/plugins/steps/jquery.steps.css" rel="stylesheet">
       <link href="{#static_path#}/css/plugins/footable/footable.core.css" rel="stylesheet">
       <link href="{#static_path#}/css/plugins/morris/morris-0.4.3.css" rel="stylesheet">*}
    <link href="{#static_path#}/css/animate.css"  rel="stylesheet">
    <link href="{#static_path#}/css/style.css" rel="stylesheet">
    <link href="{#static_path#}/css/home.css" rel="stylesheet">
    <link href="{#static_path#}/css/plugins/drag/drag.css" rel="stylesheet">
{*
    <link href="{#static_path#}/css/plugins/iCheck/custom.css" rel="stylesheet">
    <link href="{#static_path#}/css/plugins/slick/slick.css" rel="stylesheet">
    <link href="{#static_path#}/css/plugins/slick/slick-theme.css" rel="stylesheet">*}

    <!--[if lt IE 9]>
    <div class="alert alert-danger topframe" role="alert">您的浏览器实在<strong>太旧了！</strong>，请先升级完浏览器！
        <a target="_blank" class="alert-link" href="http://browsehappy.com/">立即升级</a>
    </div>
    <![endif]-->

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
<!--回到顶部结束-->

<div id="wrapper">
    <div class="gray-bg" id="page-wrapper" style="padding: 0">
    <!--头部内容开始-->
        {include file="template/header.tpl"}

        {block name="container"}{/block}

        {include file="template/footer.tpl"}
    </div>
</div>


<script src="{#static_path#}/js/plugins/jquery-2.1.1.js"></script>
<script src="{#static_path#}/js/plugins/bootstrap.min.js"></script>  <!-- 鼠标经过效果 以及弹窗 -->
<script src="{#static_path#}/js/plugins/sweetalert.min.js"></script>        <!-- 确认弹窗 -->
<script src="{#static_path#}/js/topup.js"></script>

{*
<script src="{#static_path#}/js/plugins/jquery.metisMenu.js"></script>
<script src="{#static_path#}/js/plugins/slimscroll/jquery.slimscroll.min.js"></script>
<script src="{#static_path#}/js/zzsc.js"></script>*}
{*<script src="{#static_path#}/js/common_ajax.js"></script>*}
{*<script src="{#static_path#}/js/igCustom.js"></script>*}
{*<script src="{#static_path#}/js/vuejs/vue.js"></script>*}
{*<script src="{#static_path#}/js/ig_common.js"></script>
<script src="{#static_path#}/js/plugins/dataTables/jquery.dataTables.js"></script>
<script src="{#static_path#}/js/plugins/dataTables/dataTables.bootstrap.js"></script>
<script src="{#static_path#}/js/plugins/iCheck/icheck.min.js"></script>
<script src="{#static_path#}/js/plugins/datapicker/bootstrap-datepicker.js"></script>
<script src="{#static_path#}/js/plugins/blueimp/jquery.blueimp-gallery.min.js"></script>
<script src="{#static_path#}/js/plugins/staps/jquery.steps.min.js"></script>
<script src="{#static_path#}/js/plugins/footable/footable.all.min.js"></script>
<script src="{#static_path#}/js/inspinia.js"></script>
<script src="{#static_path#}/js/plugins/pace/pace.min.js"></script>
<script src="{#static_path#}/js/plugins/slick/slick.min.js"></script>
*}
<script src="{#static_path#}/js/plugins/drag.js"></script>

{block name="js"}{/block}

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
</body>
</html>