var login = {
    init: function() {
        this.start();
        this.companyLogin();
        this.userLogin();
        this.register();
    },

    start: function() {
        //两个拖动插件调用
        $('#drag').drag();    //企业登陆拖拽
        $('#drag2').drag();   //用户登陆拖拽

        //点击切换背景图片
        var insTabsLi = $("#ins_tabs").find("li"),
            bgImg = $(".bg-img"),
            preNum = 0;

        insTabsLi.on("click", function() {
            var liNum = $(this).index();

            if(preNum != liNum) {
                bgImg.eq(preNum).animate({
                    opacity:0
                });
                bgImg.eq(liNum).finish();
                bgImg.eq(liNum).animate({
                    opacity:1
                });
            }

            preNum = liNum;
        });

        $('.form-control').focus(function() {
            tool.ajax.errorHide();
            $(this).parent().removeClass('has-error');
        });

        $(document).on("keydown", function (event) {
            var e = event || window.event;
            if(e && e.keyCode == 13) {
                var num = $("#ins_tabs").find("li.active").index();
                if(num == 0) {
                    $('#company_submit').click();
                }else if(num==1){
                    $('#user_submit').click();
                } else {
                    tool.reg.load(this, 0);
                }
            }
        });

        var nowUrl = location.href;
        if(nowUrl.indexOf('person') != -1) {
            $('#puser').addClass('active').siblings().removeClass('active');
            $('#tab-2').addClass('active').siblings().removeClass('active');
            $('.bg-img').eq(0).css({opacity: 0});
            $('.bg-img').eq(1).css({opacity:1});
        }
    },

    //企业登录相关
    companyLogin: function() {
        //校验企业账号失去焦点
        $('#company_userID').blur(function() {
            tool.check.userId(this, 1);
        });

        //校验企业密码失去焦点
        $('#company_pwdID').blur(function() {
            tool.check.userPwd(this, 1);
        });

        //企业用户登录按钮
        $('#company_submit').click(function() {
           tool.company.load(this, 1);
        });
    },

    //个人用户登录
    userLogin: function() {
        //校验用户账号失去焦点
        $('#userID').blur(function() {
            tool.check.userId(this, 2);
        });

        //校验用户密码失去焦点
        $('#passwordID').blur(function() {
            tool.check.userPwd(this, 2);
        });

        //个人用户登录按钮
        $('#user_submit').click(function() {
            tool.user.load(this, 2);
        });
    },

    //注册
    register: function() {
        //改变图形验证码
        $('#changeCode').click(function() {
            var flag = $(this).data('flag'),
                dates = (new Date()).getTime();

            $(this).attr('src', flag + '&v=' + dates);
        });

        //发送短信验证码
        $('#setMobileVerifyID').click(function() {
            tool.reg.code(this, 0);
        });

        //校验用户账号失去焦点
        $('#groupAccountIDEnterprise').blur(function() {
            tool.check.userId(this, 0);
        });

        $('#imgCodeID').blur(function() {
            tool.check.imgCode(this, 0);
        });

        $('#mobileID').blur(function() {
            tool.check.mobile(this, 0);
        });

        $('#codeID').blur(function() {
            tool.check.code(this, 0);
        });

        //校验用户密码失去焦点
        $('#passwordIDEnterprise').blur(function() {
            tool.check.userPwd(this, 0);
        });
        $('#repeatIDEnterprise').blur(function() {
            tool.check.repeatPwd(this, 0);
        });

        //个人用户注册
        $('#register_submit').click(function() {
            tool.reg.load(this, 0);
        });
    }
};


var tool = {
    company: {
        indenty: function(obj, flag) {
            if($(obj).hasClass('on')) {
                return false;
            }

            if(!tool.check.userId('#company_userID', flag) || !tool.check.userPwd('#company_pwdID', flag)) {
                $('#drag').reset();
                return false;
            }

            if(!tool.check.drag('#drag', flag)) {
                return false;
            }

            return true;
        },

        load: function(obj, flag) {
            if(!tool.company.indenty(obj, flag)) {
                return;
            }

            var options = {
                id: obj,
                flag: flag,
                url: '/login/postEnterpriseLogin',
                data: {
                    username: $.trim($('#company_userID').val()),
                    password: $.trim($('#company_pwdID').val())
                },
                success: function() {
                    location.href = $('#redirect').val();
                },
                error: function() {
                    $('#company_pwdID').val('');
                    $('#drag').reset();
                }
            };

            tool.ajax.callAjax(options);

        }
    },

    user: {
        indenty: function(obj, flag) {
            if($(obj).hasClass('on')) {
                return false;
            }

            if(!tool.check.userId('#userID', flag) || !tool.check.userPwd('#passwordID', flag)) {
                $('#drag2').reset();
                return false;
            }

            if(!tool.check.drag('#drag2', flag)) {
                return false;
            }

            return true;
        },

        load: function(obj, flag) {
            if(!tool.user.indenty(obj, flag)) {
                return;
            }

            var options = {
                id: obj,
                flag: flag,
                url: '/login/postPersonLogin',
                data: {
                    username: $.trim($('#userID').val()),
                    password: $.trim($('#passwordID').val())
                },
                success: function() {
                    location.href = $('#redirect').val();
                },
                error: function() {
                    $('#passwordID').val('');
                    $('#drag2').reset();
                }
            };

            tool.ajax.callAjax(options);

        }
    },

    reg: {
        indenty: function(obj, flag) {
            if($(obj).hasClass('on')) {
                return false;
            }

            if(!$('#checkAgree').is(':checked')) {
                tool.ajax.error('请输入阅读并同意条款', flag);
                return false;
            }

            if(!tool.check.userId('#groupAccountIDEnterprise', flag) || !tool.check.imgCode('#imgCodeID', flag)
                || !tool.check.mobile('#mobileID', flag) || !tool.check.code('#codeID', flag)
                || !tool.check.userPwd('#passwordIDEnterprise', flag) || !tool.check.repeatPwd('#repeatIDEnterprise', flag)) {
                return false;
            }

            return true;
        },

        load: function(obj, flag) {
            if(!tool.reg.indenty(obj, flag)) {
                return;
            }

            var options = {
                id: obj,
                flag: flag,
                url: '/login/postReg',
                data: {
                    username: $.trim($('#groupAccountIDEnterprise').val()),
                    mobile: $.trim($('#mobileID').val()),
                    smscode: $.trim($('#codeID').val()),
                    password: $.trim($('#passwordIDEnterprise').val())
                },
                success: function() {
                    location.href = $('#redirect').val();
                }
            };

            tool.ajax.callAjax(options);
        },

        code: function(obj, flag) {
            if($(obj).hasClass('on') || !tool.check.mobile('#mobileID', flag) || !tool.check.imgCode('#imgCodeID', flag)) {
                return false;
            }

            var options = {
                id: obj,
                flag: flag,
                url: '/util/postsms',
                data: {
                    flag: 'reg',
                    captcha: $.trim($('#imgCodeID').val()),
                    mobile: $.trim($('#mobileID').val())
                },
                success: function() {
                    var count = 60,
                        timer = null;

                    timer = setInterval(function () {
                        if (count > 0) {
                            $(obj).text(count + 's重新获取');
                            count--;
                        } else {
                            clearInterval(timer);
                            $(obj).removeClass('on').text('获取验证码');
                        }
                    }, 1000);
                },
                error: function() {
                    $(obj).removeClass('on').text('获取验证码');
                }
            };

            tool.ajax.callAjax(options);
        }
    },

    check: {
        //账号
        userId: function(obj, flag) {
            var v = $.trim($(obj).val()),
                txt = ['企业账号', '企业账号', '登陆名称'];

            if(v == '') {
                tool.ajax.error('请输入' + txt[flag], flag);
                $(obj).parent().addClass('has-error');
                return false;
            }

            tool.ajax.errorHide(flag);
            $(obj).parent().removeClass('has-error');
            return true;
        },

        //密码
        userPwd: function(obj, flag) {
            var v = $.trim($(obj).val());

            if(v == '') {
                tool.ajax.error('请输入登陆密码', flag);
                $(obj).parent().addClass('has-error');
                return false;
            }

            if(v.length < 6 || v.length > 12) {
                tool.ajax.error('请输入正确的登陆密码', flag);
                $(obj).parent().addClass('has-error');
                return false;
            }

            tool.ajax.errorHide(flag);
            $(obj).parent().removeClass('has-error');
            return true;
        },

        repeatPwd: function(obj, flag) {
            var v = $.trim($(obj).val()),
                pwd = $.trim($('#passwordIDEnterprise').val());

            if(v == pwd) {
                tool.ajax.error('请输入确认密码', flag);
                $(obj).parent().addClass('has-error');
                return false;
            }

            if(v != pwd) {
                tool.ajax.error('请输入正确的确认密码', flag);
                $(obj).parent().addClass('has-error');
                return false;
            }

            tool.ajax.errorHide(flag);
            $(obj).parent().removeClass('has-error');
            return true;
        },

        //手机号
        mobile: function(obj, flag) {
            var v = $.trim($(obj).val()),
                b = /^1[3-9][0-9]\d{8}$/;

            if(v == '') {
                tool.ajax.error('请输入手机号码', flag);
                $(obj).parent().addClass('has-error');
                return false;
            }

            if(!b.test(v)) {
                tool.ajax.error('手机号码格式不对', flag);
                $(obj).parent().addClass('has-error');
                return false;
            }

            tool.ajax.errorHide(flag);
            $(obj).parent().removeClass('has-error');
            return true;
        },

        //验证码
        code: function(obj, flag) {
            var v = $.trim($(obj).val());

            if(v == '') {
                tool.ajax.error('请输入验证码', flag);
                $(obj).parent().addClass('has-error');
                return false;
            }

            if(v.length != 6) {
                tool.ajax.error('验证码错误', flag);
                $(obj).parent().addClass('has-error');
                return false;
            }

            tool.ajax.errorHide(flag);
            $(obj).parent().removeClass('has-error');
            return true;
        },

        imgCode: function(obj, flag) {
            var v = $.trim($(obj).val());

            if(v == '') {
                tool.ajax.error('请输入验证码', flag);
                $(obj).parent().addClass('has-error');
                return false;
            }

            tool.ajax.errorHide(flag);
            $(obj).parent().removeClass('has-error');
            return true;
        },

        drag: function(obj, flag) {
            if(!$(obj).isOk()){
                tool.ajax.error('请拖动滑块进行验证', flag);

                return;
            }

            tool.ajax.errorHide(flag);
            return true;
        }
    },

    ajax: {
        callAjax: function(options) {
            if(options.id) {
                $(options.id).addClass('on');
            }

            $.ajax({
                url: options.url,
                data: options.data,
                type: options.type ? options.type : 'POST',
                dataType: "json",
                success: function(data) {
                    if (data.success == 1) {
                        options.success();
                    }  else {
                        tool.ajax.error(data.message, options.flag);

                        options.error();
                    }
                },
                error: function() {
                    tool.ajax.error('网络异常' , options.flag);

                    options.error();
                }
            });
        },

        error: function(message, flag, obj) {
            var errorid = ['#errorMsgIDEnterprise', '#companyErrorMsgID', '#errorMsgID'];
            $(errorid[flag]).html(message).parent().show();

            if(obj) {
                $(obj).removeClass('on');
            }
        },

        errorHide: function(flag) {
            var errorid = ['#errorMsgIDEnterprise', '#companyErrorMsgID', '#errorMsgID'];

            if(typeof(flag) == 'undefined') {
                for(var i = 0; i < errorid.length; i++) {
                    $(errorid[i]).html('').parent().hide();
                }
            } else {
                $(errorid[flag]).html('').parent().hide();
            }
        }
    }
};

login.init();