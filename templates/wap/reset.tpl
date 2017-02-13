{extends file="template/front-mobile.tpl"}


{block name="container"}
    <div id="title_name" style="display: none">找回密码</div>
    <div>
        <div class="page forget_pwd big_em">
            <div class="hd">
                <h3 class="page_title">找回密码</h3>
            </div>
            <div class="bd">
                <div class="step" id="step1" >
                    <article class="weui_article">
                        <p>请输入您注册的账号/手机号码/身份证号码，如果需要帮助，请联系客服专员<a href="tel:4008862309">400-886-2309</a>
                        </p>
                    </article>
                    <form  class="form-common">
                        <div class="weui_cells weui_cells_form">
                            <div class="weui_cell">
                                <div class="weui_cell_bd weui_cell_primary">
                                    <input id="usernameID" name="username" class="weui_input" type="text" placeholder="账号 / 手机号码 / 身份证号码"/>
                                </div>
                                <div class="weui_cell_ft">
                                    <i class="weui_icon_warn"></i>
                                </div>
                            </div>
                        </div>
                        <div class="weui_btn_area">
                            <a href="#step2" class="weui_btn weui_btn_primary js_grid" id="btn_pw1_next">下一步</a>
                        </div>
                    </form>
                </div>
                <div class="step" id="step2" >
                    <div class="weui_article">
                        请使用您绑定的手机号 <span id="hideMobileID"></span> 收取验证码。
                        如果需要帮助，请联系客服专员 <a href="tel:4008862309">400-886-2309</a>
                    </div>
                    <form id="checkUserFormId" class="form-common">
                        <div class="weui_cells weui_cells_form">
                            <div class="weui_cell">
                                <div class="weui_cell_hd"><label class="weui_label">真实姓名</label></div>
                                <div class="weui_cell_bd weui_cell_primary">
                                    <input id="realnameID" class="weui_input" type="text" placeholder="您的真实姓名"/>
                                </div>
                                <div class="weui_cell_ft">
                                    <i class="weui_icon_warn"></i>
                                </div>
                            </div>
                            <div class="weui_cell weui_cell_select" id="cert_type_selectID">
                                <div class="weui_cell_bd weui_cell_primary">
                                    <select class="weui_select" name="cert_type">
                                        <option selected="" value="0">身份证</option>
                                        <option value="1" disabled>护照</option>
                                    </select>
                                </div>
                            </div>
                            <div class="weui_cell">
                                <div class="weui_cell_hd"><label class="weui_label">证件号码</label></div>
                                <div class="weui_cell_bd weui_cell_primary">
                                    <input id="cert_numberID" name="cert_number" class="weui_input" type="text" placeholder="您的证件号码"/>
                                </div>
                                <div class="weui_cell_ft">
                                    <i class="weui_icon_warn"></i>
                                </div>
                            </div>
                            <div class="weui_cell">
                                <div class="weui_cell-bd weui_cell_primary">
                                    <input id="verify_mobID" type="tel" class="weui_input" placeholder="请输入验证码">
                                </div>
                                <div class="weui_cell_ft">
                                    <i class="weui_icon_warn"></i>
                                </div>
                                <a href="javascript:;" id="send_mob_verifyID" class="weui_btn weui_btn_mini weui_btn_primary">获取验证码</a>
                            </div>
                        </div>
                        <div class="weui_btn_area">
                            <a href="#step3" class="weui_btn weui_btn_primary" id="btn_pw2_next">提交申请</a>
                        </div>
                    </form>
                </div>
                <div class="step" id="step3" >
                    <div class="weui_cells weui_cells_form big_em">
                        <div class="weui_cell">
                            <div class="weui_cell-hd">
                                <label class="weui_label">新密码</label>
                            </div>
                            <div class="weui_cell-bd weui_cell_primary">
                                <input id="passwordID" name="password"  type="password" class="weui_input" placeholder="请输入密码">
                            </div>
                            <div class="weui_cell_ft">
                                <i class="weui_icon_warn"></i>
                            </div>
                        </div>
                        <div class="weui_cell">
                            <div class="weui_cell-hd">
                                <label class="weui_label">确认密码</label>
                            </div>
                            <div class="weui_cell-bd weui_cell_primary">
                                <input id="repeatID" name="repeat" type="password" class="weui_input" placeholder="请输入密码">
                            </div>
                            <div class="weui_cell_ft">
                                <i class="weui_icon_warn"></i>
                            </div>
                        </div>
                    </div>
                    <div class="weui_btn_area">
                        <a href="javascript:;" class="weui_btn weui_btn_primary" id="btn_pw3_next">确认修改</a>
                    </div>
                </div>
                <div class="weui_toptips weui_warn js_tooltips"></div>
                <div class="step weui_msg" id="step4">
                    <div class="weui_icon_area"><i class="weui_icon_success weui_icon_msg"></i></div>
                    <div class="weui_text_area">
                        <h2 class="weui_msg_title">修改成功</h2>
                        <!--<p class="weui_msg_desc">内容详情，可根据实际需要安排</p>-->
                    </div>
                    <div class="weui_opr_area">
                        <p class="weui_btn_area">
                            <a href="http://www.insgeek.com/Login/index" class="weui_btn weui_btn_primary login_now">立即登录</a>
                        </p>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- loading toast -->
    <div id="loadingToast" class="weui_loading_toast" style="display:none;">
        <div class="weui_mask_transparent"></div>
        <div class="weui_toast">
            <div class="weui_loading">
                <div class="weui_loading_leaf weui_loading_leaf_0"></div>
                <div class="weui_loading_leaf weui_loading_leaf_1"></div>
                <div class="weui_loading_leaf weui_loading_leaf_2"></div>
                <div class="weui_loading_leaf weui_loading_leaf_3"></div>
                <div class="weui_loading_leaf weui_loading_leaf_4"></div>
                <div class="weui_loading_leaf weui_loading_leaf_5"></div>
                <div class="weui_loading_leaf weui_loading_leaf_6"></div>
                <div class="weui_loading_leaf weui_loading_leaf_7"></div>
                <div class="weui_loading_leaf weui_loading_leaf_8"></div>
                <div class="weui_loading_leaf weui_loading_leaf_9"></div>
                <div class="weui_loading_leaf weui_loading_leaf_10"></div>
                <div class="weui_loading_leaf weui_loading_leaf_11"></div>
            </div>
            <p class="weui_toast_content">数据加载中</p>
        </div>
    </div>
    <!-- loading toast end -->
    <!--BEGIN dialog1-->
    <div class="weui_dialog_confirm" id="dialog1" style="display: none;">
        <div class="weui_mask"></div>
        <div class="weui_dialog">
            <div class="weui_dialog_hd"><strong class="weui_dialog_title">提示</strong></div>
            <div class="weui_dialog_bd" style="text-align: center">确定修改密码？</div>
            <div class="weui_dialog_ft">
                <a href="javascript:;" class="weui_btn_dialog default abolish">取消</a>
                <a href="#step4" class="weui_btn_dialog primary confirm">确定</a>
            </div>
        </div>
    </div>
    <!--END dialog1-->
    <!--BEGIN dialog2-->
    <div class="weui_dialog_alert" id="dialog2" style="display: none;">
        <div class="weui_mask"></div>
        <div class="weui_dialog">
            <div class="weui_dialog_hd"><strong class="weui_dialog_title">错误</strong></div>
            <div class="weui_dialog_bd"></div>
            <div class="weui_dialog_ft">
                <a href="javascript:;" class="weui_btn_dialog primary confirm2">确定</a>
            </div>
        </div>
    </div>
    <!--END dialog2-->
{/block}

{block name="js"}
    <script src="{#static_path#}/js/igCustom.js"></script>
    <script>
    $(document).ready(function(){
        var root="http://www.insgeek.com";
        var userInputType=0;
        var mobile='';
        var passwordObj=$('#passwordID');
        var repeatObj=$('#repeatID');
        /*step1 验证输入的用户名/身份证/手机号 格式，是否存在，是否绑定手机*/
        var usernameObj=$('#usernameID');
        var pw1_next_btn=$('#btn_pw1_next');
        /*0218新增*/
        var step1=$("#step1"),
                step2=$("#step2"),
                step3=$("#step3"),
                step4=$("#step4");

        var $tooltips=$(".js_tooltips");

        $('input').bind('input propertychange', function() {
            usernameObj.parents(".weui_cell").removeClass('weui_cell_warn');
            realnameObj.parents(".weui_cell").removeClass('weui_cell_warn');
            cert_numberObj.parents(".weui_cell").removeClass('weui_cell_warn');
            mobileVerifyObj.parents(".weui_cell").removeClass('weui_cell_warn');
            passwordObj.parents(".weui_cell").removeClass('weui_cell_warn');
            repeatObj.parents(".weui_cell").removeClass('weui_cell_warn');
        });

        function check_is_id(input)
        {
            return check_id_number_format(input);
        }

        function check_is_mobile(input)
        {
            return check_mobile_format(input, false)==1;
        }

        function check_is_username(input)
        {
            return check_username_format(input, false)==1;
        }

        /*检查输入类型
         * 1：身份证
         * 2：手机号
         * 3：用户名
         * 0：非法
         * */
        function check_type(input)
        {
            if(check_is_id(input))
            {
                return 1;
            }
            else if(check_is_mobile(input))
            {
                return 2;
            }
            else if(check_is_username(input))
            {
                return 3;
            }
            else
            {
                return 0;
            }
        }

        /*检查找回密码的第一步是否可以通过*/
        /*0218修改：替换原来的错误提示方式*/
        function errorShow(obj,errorFont){
            var $dialog = $('#dialog2'),
                    $dialog_bd = $("#dialog2 .weui_dialog_bd");
            obj.parents(".weui_cell").addClass("weui_cell_warn");
            //弹窗展示错误
            $dialog_bd.text(errorFont);
            $dialog.show();
            $dialog.find('.weui_btn_dialog').on('click', function () {
                $dialog.hide();
                obj.focus().val();
            });
        }
        function check_pw1_can_submit()
        {
            /*检查用户名格式--用户名/身份证/手机号*/
            var input=$.trim(usernameObj.val());
            userInputType=check_type(input);
            mobile='';
            if(userInputType==1)
            {
                if(!check_id_number_exist_ajax(input,root))
                {
                    errorShow(usernameObj,"身份证未注册");
                    return false;
                }
                else
                {
                    mobile=get_user_mobile_by_username(input,root);
                    if(mobile.length==0)
                    {
                        errorShow(usernameObj,"该账号未绑定手机，请联系客服找回密码");
                        return false;
                    }
                    else
                    {
                        return true;
                    }
                }
            }
            else if(userInputType==2)
            {
                if(!check_mobile_exist_ajax(input,root))
                {
                    errorShow(usernameObj,"手机号未注册");
                    return false;
                }
                else
                {
                    mobile=input;
                    return true;
                }
            }
            else if(userInputType==3)
            {
                if(!check_username_exist_ajax(input,root))
                {
                    errorShow(usernameObj,"账号不存在");
                    return false;
                }
                else
                {
                    mobile=get_user_mobile_by_username(input,root);
                    if(mobile.length==0)
                    {
                        errorShow(usernameObj,"该账号未绑定手机，请联系客服找回密码");
                        return false;
                    }
                    else
                    {
                        return true;
                    }
                }
            }
            else
            {
                usernameObj.parents(".weui_cell").addClass("weui_cell_warn");
                $tooltips.show();
                setTimeout(function () {
                    $tooltips.hide();
                }, 5000);
                $tooltips.text('用户名格式错误。请使用 "账号/手机号码/身份证" 进行密码找回');
                return false;
            }
        }
        var $loadingToast=$("#loadingToast");
        /*0218修改：替换新的loading动画*/
        pw1_next_btn.on('click',function()
        {
            if ($loadingToast.css('display') != 'none') {
                return;
            }
            $loadingToast.show();//加载loading动画
            var check=check_pw1_can_submit();
            if(check)
            {
                $loadingToast.hide();//关闭loading动画
                step1.hide();
                step2.show();
                setMobileShow();
                userData=getUserDataByMobile(mobile);
                updateFormControls(userData);
            }
            $loadingToast.hide();//关闭loading动画
        });
        /************************************************************************/

        /*step2找回密码第二步，验证用户的实名信息(真实姓名/证件号码/手机验证码)*/

        var hideMobileObj=$('#hideMobileID');
        var userData;
        var has_id_number=false;
        var has_passport=false;
        var has_realname=false;
        var realnameObj=$('#realnameID');
        var cert_typeObj=$("select[name='cert_type']");
        var cert_numberObj=$("#cert_numberID");
        var mobileVerifyObj=$('#verify_mobID');
        var currentCertType=cert_typeObj.val();
//        var currentCertType=$("select[name='cert_type']").val(); 原来

        var send_mob_verifyBtnObj=$('#send_mob_verifyID');
        var pw2_next_btn=$('#btn_pw2_next');

        /*更新找回密码第二步的控件显示*/
        function updateFormControls(userData)
        {
            if(userData['passport']!=null&&userData['passport'].length!=0)
            {
                has_passport=true;
                has_realname=true;
                $('#passportID').prop('checked',true);
            }
            else
            {
                has_passport=false;
            }
            if(userData['id_number']!=null&&userData['id_number'].length!=0)
            {
                has_id_number=true;
                has_realname=true;
                $('#id_numberID').prop('checked',true);
            }
            else
            {
                has_id_number=false;
            }
            if(has_id_number==false&&has_passport==false)
            {
                has_realname=false;
                $('#cert_type_selectID').hide();
                $('#cert_number_parentID').hide();
                $('#realname_parentID').hide();
            }
            if(userInputType==1)
            {
                cert_numberObj.val($.trim(usernameObj.val()));
                cert_numberObj.prop('readonly',true);
                $('#passportID').parent().hide();
            }
            currentCertType=$("select[name='cert_type']").val();
        }

        /*更新证件类型*/
        cert_typeObj.change(function()
        {
            currentCertType=$("select[name='cert_type']").val();
        });

        function replaceAt(str,start,end,t) {
            return str.substring(0, start) + t + str.substring(end+1);
        }
        /*设置要显示的手机号*/
        function setMobileShow()
        {
            var hideMobileVal=mobile;
            hideMobileVal=replaceAt(hideMobileVal,3,6,'****');
            $("#hideMobileID").html(hideMobileVal).css("color","#ff0000");
        }

        /*获的用户信息*/
        function getUserDataByMobile(mobile)
        {
            return get_userdata_by_mobile(mobile,root);
        }

        var verify_mob_try_count=3;
        /*获取验证码*/
        var number=1;
        var send=true;

        send_mob_verifyBtnObj.on('click',function()
        {

            if(send&&(number>0)&&(number<6))
            {
                if (set_mobile_verify_mob(mobile, root))
                {
                    number++;
                    send=false;
                    verify_mob_try_count=3;
                    $(this).html('<font style="color:#FFFFFF;">已经发送</font>');
                    setTimeout(timing_begin, 3000);
                    /*到时删除正确的手机验证码*/
                    setTimeout(del_mob_verify, 123000);
                }
                else
                {
                    $(this).html('<font style="color:#FFFFFF;">发送失败</font>');
                }
            }
            else if(!send)
                    {}
            else
            {
                $(this).html('<font style="color:#FFFFFF;">最多获取5次</font>');
            }
        });

        /*删除当前mobile的有效验证码*/
        function del_mob_verify()
        {
            del_mobile_verify_mob(mobile,root);
            //结束倒计时
            var obj = $("#show_time");
            var num=0;
            obj.html(num);
        }

        function timing_begin()
        {
            send_mob_verifyBtnObj.html('<font style="color:#FFFFFF;">倒计时<em style="font-style:normal;color:#FFFFFF;" id="show_time">120</em> 秒</font>');
            autoTime();
        }
        function autoTime() {
            var obj = $("#show_time");
            var num = parseInt(obj.html());
            num--;
            obj.html(num);
            if (num <= 0) {
                number = 1;
                send = true;
                send_mob_verifyBtnObj.html('<font style="color:#FFFFFF;">重新发送</font>');
                clearTimeout(setT);
                return;
            }
            var setT = setTimeout(autoTime, 1000);
        }
        /*检查输入的证件号码是否正确*/

        function check_cert_number(cert_number,type)
        {
            if(type==0)/*身份证*/
            {
                if(check_id_number_format(cert_number))
                {
                    return true;
                }
                else
                {
                    return false;
                }
            }
            else if(type==1)/*护照*/
            {
                if(check_passport_format(cert_number)==1)
                {
                    return true;
                }
                else
                {
                    return false;
                }
            }
            else
            {
                return false;
            }
        }

        function check_cert_number_match(number,type)
        {
            if(type==0)
            {
                if(check_id_number_match_user_ajax(number,userData['uid'],root))
                {
                    return true;
                }
                else
                {
                    return false;
                }
            }
            else if(type==1)
            {
                if(check_passport_match_user_ajax(number,userData['uid'],root))
                {
                    return true;
                }
                else
                {
                    return false;
                }
            }
            else
            {
                return false;
            }
        }
        /*0218修改错误提示方式*/
        function check_all_inputs_pw2()
        {
            //real name
            if(has_realname)
            {
                var realname=$.trim(realnameObj.val());
                if(check_realnameE_format(realname)!=1)
                {
                    errorShow(realnameObj,'真实姓名格式输入错误，姓名格式应满足2-15个中文字符或者3-15个英文字符');
                    return false;
                }
                else
                {
                    if(!check_realname_match_user_ajax(realname,userData['uid'],root))
                    {
                        errorShow(realnameObj,"真实姓名输入的与预留不符，请检查真实姓名");
                        return false;
                    }
                }
            }
            //cert number according to cert type
            var cert_number=$.trim(cert_numberObj.val());

            if(has_id_number||has_passport)
            {
                if (!check_cert_number(cert_number, currentCertType))
                {
                    cert_numberObj.parents(".weui_cell").addClass("weui_cell_warn");
                    $tooltips.show();
                    setTimeout(function () {
                        $tooltips.hide();
                    }, 5000);
                    $tooltips.text('证件号码格式输入错误:请输入18位身份证'); //或者9位的护照号码
                    return false;
                }
                else
                {
                    if (!check_cert_number_match(cert_number, currentCertType))
                    {
                        errorShow(cert_numberObj,"输入的证件号码与预留的不匹配");
                        return false;
                    }
                }
            }
            //mobile verify code
            var mobile_verify=$.trim(mobileVerifyObj.val());
            if(check_verify_mob(mobile,mobile_verify,root)!=1)
            {
                verify_mob_try_count--;
                if(verify_mob_try_count<1)
                {
                    del_mob_verify();
                }
                errorShow(mobileVerifyObj,"验证码与手机号不匹配");
                return false;
            }
            if(!check_can_update_password_ajax(userData['uid'],realname,cert_number,currentCertType,mobile,mobile_verify,root))
            {
                errorShow(mobileVerifyObj,"验证失败，不能找回密码，请检查输入");
                return false;
            }
            return true;
        }


        /*关于更新密码的动作*/


        function check_all_inputs_pw3()
        {
            var password=$.trim(passwordObj.val());
            var repeat=$.trim(repeatObj.val());
            var $dialog = $('#dialog2');
            var $dialog_bd = $(".weui_dialog_bd");
            if(check_password_format(password)!=1)
            {
                passwordObj.parents(".weui_cell").addClass("weui_cell_warn");
                repeatObj.parents(".weui_cell").addClass("weui_cell_warn");
                $tooltips.show();
                setTimeout(function () {
                    $tooltips.hide();
                }, 5000);
                $tooltips.text('新密码格式错误，请输入8-20位字符（要同时包含数字和字母）');
                return false;
            }
            else
            {
                if(repeat!=""&&repeat!=password)
                {
                    passwordObj.parents(".weui_cell").addClass("weui_cell_warn");
                    repeatObj.parents(".weui_cell").addClass("weui_cell_warn");
                    $tooltips.show();
                    setTimeout(function () {
                        $tooltips.hide();
                    }, 5000);
                    $tooltips.text('两次密码不一致');
                    return false;
                }
                else
                {
                    return true;
                }
            }
        }

        pw2_next_btn.on('click',function() {
            if ($loadingToast.css('display') != 'none') {
                return;
            }
            $loadingToast.show();//加载loading动画
            if(check_all_inputs_pw2()) {
                $loadingToast.hide();
                step2.hide();
                step3.show();
                var pw3_next_btn=$("#btn_pw3_next");
                var $dialog1=$("#dialog1");
                pw3_next_btn.on("click", function() {
                    if(check_all_inputs_pw3()) {
                        var passwordObj=$('#passwordID');
                        var repeatObj=$('#repeatID');
                        var password=$.trim(passwordObj.val());
                        var repeat=$.trim(repeatObj.val());
                        $dialog1.show();
                        $(".confirm").on("click", function () {
                            if(find_password_do_ajax(userData['uid'],password,repeat,root)){
                                send_mob_verifyBtnObj.html('<font style="color:#FFFFFF;">重新发送</font>');
                                $dialog1.hide();
                                step3.hide();
                                step4.show();
                            }else {
                                $dialog1.hide();
                                step3.hide();
                                step4.show();
                                step4.find(".weui_icon_msg").addClass("weui_icon_msg weui_icon_warn");
                                step4.find(".weui_msg_title").text("修改失败");
                                step4.find(".login_now").hide();
                                send_mob_verifyBtnObj.html('<font style="color:#FFFFFF;">重新发送</font>');
                            }
                        });
                        $(".abolish").on("click", function () {
                            $dialog1.hide();
                        });
                    }
                });
            }
            $loadingToast.hide();
        });
    });
    </script>
{/block}