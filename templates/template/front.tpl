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
    <link href="{#static_path#}/css/animate.css"  rel="stylesheet">
    <link href="{#static_path#}/css/style.css" rel="stylesheet">
    <link href="{#static_path#}/css/home.css" rel="stylesheet">
    <link href="{#static_path#}/css/plugins/drag/drag.css" rel="stylesheet">

    <!--[if lt IE 9]>
    <div class="alert alert-danger topframe" role="alert">您的浏览器实在<strong>太旧了！</strong>，请先升级完浏览器！
        <a target="_blank" class="alert-link" href="http://browsehappy.com/">立即升级</a>
    </div>
    <![endif]-->

    {block name="css"}{/block}
</head>
<body class="top-navigation gray-bg">

<!--固定定位回到顶部-->
<div id="rightButton">
    <ul id="right_ul">
        <li id="right_online" class="right_ico" show="online" hide="tel" hide1="weixin"><a class="online_name" href="javascript:;"></a></li>
        <li id="right_weixin" class="right_ico" show="weixin" hide="tel" hide1="online"></li>
        <li id="right_tel" class="right_ico" show="tel" hide="weixin" hide1="online"></li>
        <li id="right_tip" class="png">
            <p class="flag_online">工作日早8点 - 晚8点</p>
            <p class="flag_online"><button type="button" class="btn btn-xs btn-warning" style="font-weight: 700">在线咨询</button></p>
            <p class="flag_weixin"></p>
            <p class="flag_tel" style="margin-top: 5px">工作日早8点 - 晚8点</p>
            <p class="flag_tel">400-886-2309</p>
        </li>
        <li><div id="backToTop"><a href="javascript:;" onfocus="this.blur();" class="backToTop_a png"></a></div></li>
    </ul>
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

<input type="hidden" id="staticPath" value="{#static_path#}" >

<script src="{#static_path#}/js/plugins/jquery-2.1.1.js"></script>
<script src="{#static_path#}/js/plugins/bootstrap.min.js"></script>  <!-- 鼠标经过效果 以及弹窗 -->
<script src="{#static_path#}/js/plugins/sweetalert.min.js"></script>        <!-- 确认弹窗 -->
<script src="{#static_path#}/js/common.js"></script>
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