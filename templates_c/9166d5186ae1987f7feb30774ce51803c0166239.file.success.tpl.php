<?php /* Smarty version Smarty-3.1.21-dev, created on 2017-02-23 20:25:00
         compiled from "/Users/lorine/Documents/workspace/datebaofront-dev/geekwork/templates/wap/success.tpl" */ ?>
<?php /*%%SmartyHeaderCode:171410762858adb6f35c0544-18353144%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '9166d5186ae1987f7feb30774ce51803c0166239' => 
    array (
      0 => '/Users/lorine/Documents/workspace/datebaofront-dev/geekwork/templates/wap/success.tpl',
      1 => 1487780228,
      2 => 'file',
    ),
    'e6ffc1d3cb79cf9300fc55afa2b9c8c03e9baf08' => 
    array (
      0 => '/Users/lorine/Documents/workspace/datebaofront-dev/geekwork/templates/template/front-wap.tpl',
      1 => 1487852693,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '171410762858adb6f35c0544-18353144',
  'function' => 
  array (
  ),
  'version' => 'Smarty-3.1.21-dev',
  'unifunc' => 'content_58adb6f360cc39_40493992',
  'has_nocache_code' => false,
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_58adb6f360cc39_40493992')) {function content_58adb6f360cc39_40493992($_smarty_tpl) {?><!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width,initial-scale=1,user-scalable=0">
    <meta content="telephone=no" name="format-detection" />
    <title>申请成功</title>
    <link rel="stylesheet" href="<?php echo $_smarty_tpl->getConfigVariable('static_path');?>
/css/mobile/weui.css">
    <link rel="stylesheet" href="<?php echo $_smarty_tpl->getConfigVariable('static_path');?>
/css/mobile/example.css">
    <link rel="stylesheet" href="<?php echo $_smarty_tpl->getConfigVariable('static_path');?>
/css/mobile/appv2.0.css"/>
    <link rel="stylesheet" href="<?php echo $_smarty_tpl->getConfigVariable('static_path');?>
/css/mobile/iconfont.css">

    
    <style>
        body { background-color: #f3f3f3; }
    </style>

</head>
<body ontouchstart>


    <img src="<?php echo $_smarty_tpl->getConfigVariable('static_path');?>
/images/success.png" style="width: 100%;">

    <div class="weui_btn weui_btn_primary" style="margin: 0 20px;">
        <h2>成功</h2>
        <p style="font-size: 16px;">保障方案申请成功，请耐心等待申请企业的审核</p>
    </div>



<?php echo '<script'; ?>
 src="<?php echo $_smarty_tpl->getConfigVariable('static_path');?>
/js/mobile/zepto.min.js"><?php echo '</script'; ?>
>

<?php echo '<script'; ?>
 src="<?php echo $_smarty_tpl->getConfigVariable('static_path');?>
/js/mobile/router.min.js"><?php echo '</script'; ?>
>
<?php echo '<script'; ?>
 src="http://res.wx.qq.com/open/js/jweixin-1.0.0.js"><?php echo '</script'; ?>
>



</body>
</html><?php }} ?>
