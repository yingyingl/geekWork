<?php /* Smarty version Smarty-3.1.21-dev, created on 2017-02-22 21:41:46
         compiled from "/Users/lorine/Documents/workspace/datebaofront-dev/geekwork/templates/wap/apply.tpl" */ ?>
<?php /*%%SmartyHeaderCode:153199888358ad91eea48aa1-71574747%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '96c62943e19117adc520dbef162f38404334d79f' => 
    array (
      0 => '/Users/lorine/Documents/workspace/datebaofront-dev/geekwork/templates/wap/apply.tpl',
      1 => 1487770902,
      2 => 'file',
    ),
    'e6ffc1d3cb79cf9300fc55afa2b9c8c03e9baf08' => 
    array (
      0 => '/Users/lorine/Documents/workspace/datebaofront-dev/geekwork/templates/template/front-wap.tpl',
      1 => 1487769016,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '153199888358ad91eea48aa1-71574747',
  'function' => 
  array (
  ),
  'version' => 'Smarty-3.1.21-dev',
  'unifunc' => 'content_58ad91eead4837_78358246',
  'has_nocache_code' => false,
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_58ad91eead4837_78358246')) {function content_58ad91eead4837_78358246($_smarty_tpl) {?><!DOCTYPE html>
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


    <div id="groupReg">
        <section class="active" data-role="section" id="form_section">
            <article class="active" data-role="article" data-scroll="verticle" id="normal_article" style="bottom:0px;">
                <div class="scroller">

                    <div class="hd">
                        <h3 class="page_title">申请入保</h3>
                    </div>

                    <div class="mark-font" style="margin-top: 0">您正在申请[<?php echo $_smarty_tpl->tpl_vars['data']->value['insurance']['enterprise_name'];?>
]的[<?php echo $_smarty_tpl->tpl_vars['data']->value['insurance']['product_name'];?>
]，请填写您的真实资料。</div>

                    <form action="http://www.insgeek.com/groupreg/regstep/group_id/61249/eid/2955/code/1G0IGD" class="form-group" method="post" id="formID">
                        <div class="weui_cells">
                            <div class="weui_cell">
                                <div class="weui_cell_hd">被保险人</div>

                                <div class="weui_cell_bd weui_cell_primary" style="padding-left: 35px;">本人
                                    
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
 src="http://res.wx.qq.com/open/js/jweixin-1.0.0.js"><?php echo '</script'; ?>
>


    <?php echo '<script'; ?>
 src="<?php echo $_smarty_tpl->getConfigVariable('static_path');?>
/js/group/group.js"><?php echo '</script'; ?>
>
    <?php echo '<script'; ?>
 src="<?php echo $_smarty_tpl->getConfigVariable('static_path');?>
/js/wap/share.js"><?php echo '</script'; ?>
>


</body>
</html><?php }} ?>
