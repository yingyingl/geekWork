<?php /* Smarty version Smarty-3.1.21-dev, created on 2017-02-22 23:37:32
         compiled from "/Users/lorine/Documents/workspace/datebaofront-dev/geekwork/templates/wap/sure.tpl" */ ?>
<?php /*%%SmartyHeaderCode:90793817158adaa003e71f1-54411996%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '65203cfd64e820bdbb7047510e853c236745f100' => 
    array (
      0 => '/Users/lorine/Documents/workspace/datebaofront-dev/geekwork/templates/wap/sure.tpl',
      1 => 1487777849,
      2 => 'file',
    ),
    'e6ffc1d3cb79cf9300fc55afa2b9c8c03e9baf08' => 
    array (
      0 => '/Users/lorine/Documents/workspace/datebaofront-dev/geekwork/templates/template/front-wap.tpl',
      1 => 1487774858,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '90793817158adaa003e71f1-54411996',
  'function' => 
  array (
  ),
  'version' => 'Smarty-3.1.21-dev',
  'unifunc' => 'content_58adaa0045ac02_66087915',
  'has_nocache_code' => false,
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_58adaa0045ac02_66087915')) {function content_58adaa0045ac02_66087915($_smarty_tpl) {?><!DOCTYPE html>
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


    <div id="section_container">
        <div class="hd">
            <h3 class="page_title">申请入保</h3>
        </div>

        <div class="mark-font" style="margin-top: 0; display: none;">请正确填写您的详细信息！</div>

        <div class="bd" id="groupReg2">
            <div class="form-group" id="formID" method="post">
                <div class="weui_cells_title relativeCert">被保险人</div>

                <div class="weui_cells">
                    <div class="weui_cell ">
                        <div class="weui_cell_hd" style="width: 110px">本人</div>
                        <div class="weui_cell_bd weui_cell_primary" id="realname">
                            <input class="noborder weui_input" name="mainName" placeholder="真实姓名" type="text" value=""  style="color: #808080">
                        </div>
                        <div class="weui_cell_ft">
                            <i class=""></i>
                        </div>
                    </div>

                    <div class="weui_cell">
                        <div class="weui_cell_hd">身份证</div>
                        <div class="weui_cell_bd weui_cell_primary">
                            <input name="mainAccount" type="text" class="weui_input" placeholder="证件号码" value="<?php echo $_smarty_tpl->tpl_vars['data']->value['id_number'];?>
" readonly style="color: #808080">
                        </div>
                        <div class="weui_cell_ft">
                            <i class=""></i>
                        </div>
                    </div>
                </div>

                <div class="weui_cells">
                    <div class="weui_cell">
                        <div class="weui_cell_hd" style="width: 110px">联系电话</div>
                        <div class="weui_cell_bd weui_cell_primary">
                            <input class="noborder weui_input" name="mobile" id="mobileID" placeholder="输入您的电话" type="tel" value="" >
                            <input id="mainMobile" type="hidden" value=""/>
                            <input id="relMobile" type="hidden" value=""/>
                        </div>
                        <div class="weui_cell_ft">
                            <i class=""></i>
                        </div>
                    </div>

                    <div class="weui_cell" id="mobile_verify_line" >
                        <div class="weui_cell_hd" style="width: 110px">图形验证码</div>
                        <div class="weui_cell_bd weui_cell_primary">
                            <input class="noborder weui_input" name="verify_mob" id="verify_imgCode" placeholder="输入验证码" type="text">
                        </div>
                        <div class="weui_cell_ft">
                            <i class=""></i>
                        </div>
                        <img src="#" style="width: 92px;" id="imgCode">
                        <p class="ig-msg" id="verify_mob_msgID" style="font-size: 12px; font-style: normal;"></p>
                    </div>

                    <div class="weui_cell" id="mobile_verify_line" >
                        <div class="weui_cell_hd" style="width: 110px">验证码</div>
                        <div class="weui_cell_bd weui_cell_primary">
                            <input class="noborder weui_input" name="verify_mob" id="verify_mobID" placeholder="输入验证码" type="text">
                        </div>
                        <div class="weui_cell_ft">
                            <i class=""></i>
                        </div>
                        <a class="weui_btn weui_btn_mini weui_btn_primary" id="set_user_mob_verify" style="float: right; height: 32px; line-height: 32px;">获取验证码</a>
                        <p class="ig-msg" id="verify_mob_msgID" style="font-size: 12px; font-style: normal;"></p>
                    </div>
                </div>

                <div class="weui_btn_area">
                    <a class="weui_btn weui_btn_primary" type="button" id="submitId">提交确认</a>
                    <a class="weui_btn weui_btn_default" href="/invite/first">上一步</a>
                    <input name="is_check_verify" type="hidden" value="1"/>
                </div>
            </div>
        </div>
    </div>
    <div class="weui_toptips weui_warn js_tooltips"></div>

    <!--BEGIN dialog1-->
    <div class="weui_dialog_confirm" id="twoBtDia" style="display: none;">
        <div class="weui_mask"></div>
        <div class="weui_dialog">
            <div class="weui_dialog_hd"><strong class="weui_dialog_title">弹窗标题</strong></div>
            <div class="weui_dialog_bd">自定义弹窗内容，居左对齐显示，告知需要确认的信息等</div>
            <div class="weui_dialog_ft">
                <a href="javascript:;" class="weui_btn_dialog default">取消</a>
                <a href="javascript:;" class="weui_btn_dialog primary submitBtn">确定</a>
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
/js/mobile/router.min.js"><?php echo '</script'; ?>
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
/js/wap/share.js"><?php echo '</script'; ?>
>


</body>
</html><?php }} ?>
