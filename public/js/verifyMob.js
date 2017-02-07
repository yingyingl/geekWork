/**
 * Created by INS-AZH on 2016/6/17.
 *
 * 使用 verifyMob 方法需要在此前引入 \public\js\common_ajax.js、\public\insgeek2.0\js\igCustom.js
 *
 * 版本编号：2.3.7
 * 修改日期：2017/01/04
 * 修改人员：卢浩
 * 修改内容：禅道 - TASK#624 : [后端开发] 修改企业用户信息页面
 */
(function ($) {
    const FORMAT_ERROR = 1;  //手机号格式错误
    const NEW_OLD_PHONE_SAME_ERROR = 2; //新旧手机号码一致
    var options = {
        /**
         * 错误回调函数
         * @param code  1   手机号码错误
         */
        error: function (code) {
            console.log('error code -> ' + code);
        },
        /**
         * 手机验证码验证的回调函数 (暂时没用到，先占位。。。。)
         * @param response  0验证码不匹配；1验证码正确；2验证码格式错误
         */
        verify: function (response) {
            console.log(response);
        }
    };       //暂时还没有想到有什么其他扩展选项

    /*获取验证码*/
    var old_verify_mob_try_count = 3;
    var old_number = 1;
    var old_send = true;
    var REG = /^[0-9]{4}$/;
    var mob_status;
    var url_path;
    var old_mobile;

    $.fn.verifyMob = function (option) {

        options.this = this;

        if (typeof option == 'object') {
            $.extend(options, option);
        } else {
            //非object类型时，该参数代表mobile input
            $.extend(options, {mobile: option});
        }
        //添加监听事件
        this.on('click', clickEvent);

        //初始化json的赋值
        (typeof(options.none_mob) == "undefined"  || !options.none_mob.valueOf()) ? mob_status=false :  mob_status = true;
        url_path = (typeof(options.check_path) == "undefined") ? '/verify/check_mob_verify_ajax/' : options.check_path;
        old_mobile = (typeof(options.old_mobile) == "undefined") ? true : options.old_mobile;
        return {
            /**
             * 验证手机验证码的正确性
             * @returns {number}    0验证码不匹配；1验证码正确；2验证码格式错误；3手机号码格式错误；4 新旧手机号一致
             */
            verifyAjax: function () {
                var flag = 0;
                if(check_mobile_format(options.mobile.val(), mob_status)!=1){
                    flag = 3;
                } else if (REG.test(options.code.val())) {

                    callAjax({mobile: options.mobile.val(), verify_mob: options.code.val()}, PRD, function (response) {
                        flag = response;
                    }, options.domain + url_path + Math.random());
                } else {
                    flag = 2;
                }

                return flag;
            },



            /**
             * 验证手机验证码的格式
             * @returns {number}    1验证码正确；2验证码格式错误
             */
            verifyFormat: function () {
                if (REG.test(options.code.val())) {
                    return 1;
                } else {
                    return 2;
                }
            }
        };
    }

    var clickEvent = function () {
        if (old_send && (old_number > 0) && (old_number < 6)) {
            /*手机号错误，不进行验证码的获取*/

            //alert(mob_status);
            if (check_mobile_format(options.mobile.val(), mob_status)!=1) {
                //手机号码格式错误  error code = 1;
                options.error(FORMAT_ERROR);
            }else if(old_mobile==options.mobile.val()){
                options.error(NEW_OLD_PHONE_SAME_ERROR);
            }else {
                //把uid当mobile以post方式获取验证码
                var mob_val = options.mobile.val() ? options.mobile.val() : options.uid;
                if (set_mobile_verify_mob(mob_val, options.domain)) {
                    old_number++;
                    old_send = false;
                    old_verify_mob_try_count = 3;
                    $(this).html('已经发送').prop('disabled', true);
                    setTimeout(timing_begin, 3000);
                    /*到时删除正确的手机验证码*/
                    setTimeout(del_old_mob_verify, 123000);
                }
                else {
                    $(this).html('发送失败');
                }
            }
        }
        else if (!old_send) {
        }
        else {
            $(this).html('最多获取5次').prop('disabled', true);
        }
    }

    /*删除该手机号有效的验证码*/
    function del_old_mob_verify() {
        var mob_val = options.mobile.val() ? options.mobile.val() : options.uid;
        del_mobile_verify_mob(mob_val, options.domain);
        //结束倒计时
        var obj = $("#show_time_old");
        var num = 0;
        obj.html(num);
    }

    //执行倒计时
    function timing_begin() {
        $(options.this).html('<span style="color:#FFFFFF;">倒计时<em style="font-style:normal;color:#ee3300;" id="show_time_old">120</em> 秒</span>');
        autoTime();
    }

    //改变倒计时
    function autoTime() {
        var obj = $("#show_time_old");
        var num = parseInt(obj.html());
        num--;
        obj.html(num);
        if (num < 0) {
            old_number = 1;
            old_send = true;
            $(options.this).html('重新发送').prop('disabled', false);
            clearTimeout(setT);
            return;
        }
        var setT = setTimeout(autoTime, 1000);
    }


})(jQuery);
