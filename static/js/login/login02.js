var login = {
    init: function() {
        this.start();
        this.companyLogin();
        this.userLogin();
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
                }
            }
        });
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

    check: {
        //账号
        userId: function(obj, flag) {
            var v = $.trim($(obj).val());

            if(v == '') {
                tool.ajax.error('请输入' + (flag == 2 ? '登陆名称' : '企业账号'), flag);
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
            $(flag == 1 ? '#companyErrorMsgID' : '#errorMsgID').html(message).parent().show();

            if(obj) {
                $(obj).removeClass('on');
            }
        },

        errorHide: function(flag) {
            $(flag == 1 ? '#companyErrorMsgID' : '#errorMsgID').html('').parent().hide();
        }
    }
};

login.init();