var share = {
    init: function() {
        this.start();
        this.sure();
    },

    start: function() {
        /*主被保险人的账号输入变更事件：需要验证输入的内容是否合法，且决定是否显示密码框*/
        $(tool.dom.accountIdObj).change(function() {
            tool.checkAccountId(this, 1);
        });

        if($(tool.dom.accountIdObj).val().length != '') {
            tool.checkAccountId(tool.dom.accountIdObj, 1);
        }

        //提交
        $('#nextBtnID').bind('touch click', function() {
            tool.first(this);
        });
    },

    sure: function() {
        //改变图形验证码
        $('#changeCode').click(function() {
            var flag = $(this).attr('data-flag'),
                dates = (new Date()).getTime();

            $(this).attr('src', flag + '&v=' + dates);
        });


        $(tool.dom.realnameObj).change(function() {
            tool.check.name(this);
        });

        $(tool.dom.mobileObj).change(function() {
            tool.check.mobile(this);
        });

        $(tool.dom.imgCodeObj).change(function() {
            tool.check.imgCode(this);
        });

        $(tool.dom.codeObj).change(function() {
            tool.check.code(this);
        });

        //获取验证码
        $('#set_user_mob_verify').bind('touch click', function() {
            tool.second.smsCode(this);
        });

        //提交
        $('#submitId').bind('touch click', function() {
            tool.second.load(this);
        });
    }
};


var tool = {
    dom: {
        accountIdObj: '#groupReg #mainAccountID',
        pwdObj: '#groupReg .password',
        pwdInput: '#passwordID',
        tips: '.js_tooltips',
        realnameObj: '#realname input',
        mobileObj: '#mobileID',
        imgCodeObj: '#verify_imgCode',
        codeObj: '#verify_mobID'
    },

    bool: {
        needPwd: false
    },

    first: function(obj) {
        var pwdVal = $.trim($(tool.dom.pwdInput).val());

        if($(obj).hasClass('on') || !tool.checkAccountId(tool.dom.accountIdObj, 1)) {
            return;
        }

        if(tool.bool.needPwd && pwdVal == '') {
            tool.error.showToastError('请输入密码', 5000, tool.dom.pwdInput);
            return;
        }

        var param = {
            id: obj,
            url: '/invite/postFirst',
            data: {
                insurance_id: $('#insuranceId').val(),
                id_number: $.trim($(tool.dom.accountIdObj).val())
            },
            success: function() {
                location.href = '/invite/second';
            },
            error: function() {
                if(tool.bool.needPwd) {
                    $(tool.dom.pwdInput).val('');
                }
            }
        };

        if(tool.bool.needPwd) {
            param.data.password = pwdVal;
        }

        tool.ajax.callAjax(param);
    },

    second: {
        smsCode: function(obj) {
            if($(obj).hasClass('on') || !tool.check.mobile(tool.dom.mobileObj) || !tool.check.imgCode(tool.dom.imgCodeObj)) {
                return;
            }

            var options = {
                id: obj,
                url: '/util/postsms',
                data: {
                    flag: 'invite',
                    captcha: $.trim($(tool.dom.imgCodeObj).val()),
                    mobile: $.trim($(tool.dom.mobileObj).val())
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
        },


        load: function(obj) {
            if($(obj).hasClass('on')
                || !tool.check.name(tool.dom.realnameObj) || !tool.check.mobile(tool.dom.mobileObj)
                || !tool.check.imgCode(tool.dom.imgCodeObj) || !tool.check.code(tool.dom.codeObj)) {
                return false;
            }

            var options = {
                id: obj,
                url: '/invite/postSecond',
                data: {
                    insurance_id: $('#insuranceId').val(),
                    id_number: $('#idNumber').val(),
                    name: $.trim($(tool.dom.realnameObj).val()),
                    mobile: $.trim($(tool.dom.mobileObj).val()),
                    smscode: $.trim($(tool.dom.codeObj).val()),
                    insurance_type: '',
                    province: '',
                    city: ''
                },
                success: function() {
                    location.href = '／invite/success';
                }
            };

            tool.ajax.callAjax(options);
        }
    },

    check: {
        name: function(obj) {
            var v = $.trim($(obj).val()),
                reg1=/^([\u4e00-\u9fa5·]){2,15}$/,
                reg2=/^([a-zA-Z]){3,15}$/;


            tool.error.removeError($(obj));

            if(v == '') {
                tool.error.showToastError('被保险人的真实姓名不能为空。', 5000, $(obj));

                return false;
            }

            if(!reg1.test(v) && !reg2.test(v)) {
                tool.error.showToastError('被保险人的真实姓名格式错误。', 5000, $(obj));

                return false;
            }

            return true;
        },

        mobile: function(obj) {
            var v = $.trim($(obj).val()),
                reg1=/^1[3-8][0-9]{9}$/;


            tool.error.removeError($(obj));

            if(v == '') {
                tool.error.showToastError('请输入手机号码。', 5000, $(obj));

                return false;
            }

            if(!reg1.test(v)) {
                tool.error.showToastError('手机号码格式错误。', 5000, $(obj));

                return false;
            }

            return true;
        },

        //验证码
        code: function(obj) {
            var v = $.trim($(obj).val());

            if(v == '') {
                tool.error.showToastError('请输入验证码。', 5000, $(obj));

                return false;
            }

            if(v.length != 6) {
                tool.error.showToastError('验证码错误。', 5000, $(obj));

                return false;
            }

            return true;
        },

        imgCode: function(obj) {
            var v = $.trim($(obj).val());

            if(v == '') {
                tool.error.showToastError('请输入图形验证码。', 5000, $(obj));

                return false;
            }

            return true;
        }
    },

    error: {
        showToastError: function(msg,timeout,obj) {
            if(obj!=null){
                obj.parent().next('.weui_cell_ft').find('i').addClass('weui_icon_warn');
            }
            $(tool.dom.tips).show();

            setTimeout(function () {
                $(tool.dom.tips).hide();
            }, timeout);

            $(tool.dom.tips).text(msg);
            return false;
        },

        removeError: function(obj) {
            obj.parent().next('.weui_cell_ft').find('i').removeClass('weui_icon_warn');
        },

        showWindowError: function(title, text) {
            var oneBtDiaObj = $( '#oneBtDia' );
            var oneBtTitleObj = $( '#oneBtDia .weui_dialog_title' );
            var oneBtTextObj = $( '#oneBtDia .weui_dialog_bd' );

            oneBtDiaObj.show();
            oneBtTitleObj.text(title);
            oneBtTextObj.text(text);
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
                        options.success(data);
                    }  else {
                        tool.error.showToastError(data.message, 5000, options.id);

                        options.error(data.message);
                    }
                },
                error: function() {
                    tool.error.showToastError('网络异常', 5000, options.id);

                    options.error('网络异常');
                }
            });
        }
    },

    checkAccountId: function(obj, flag) {
        var accountId = $(obj),
            pwdBox = $(tool.dom.pwdObj),
            needPwd = tool.bool.needPwd,
            idnum = $.trim(accountId.val());

        tool.error.removeError(accountId);

        if(idnum == '') {
            tool.error.showToastError('请输入身份证号来申请加入保障。', 5000, accountId);

            if(flag) {
                pwdBox.hide();
                needPwd = false;
            }

            return false;
        }


        if(!check_id_number_format(idnum)) {
            tool.error.showToastError('身份证号格式错误。', 5000, accountId);

            if(flag) {
                pwdBox.hide();
                needPwd = false;
            }

            return false;
        }

        switch (tool.checkIdExist(idnum)) {
            case 1:  //账户存在并已登陆
                if(flag) {
                    pwdBox.hide();
                    needPwd = false;
                }

                break;
            case 2:      //账户存在未登陆
                tool.error.showToastError('您输入的为身份证，请输入对应的密码进行确认。', 5000);

                if(flag) {
                    pwdBox.show();
                    needPwd = true;
                }

                break;
            default:
                tool.error.showToastError('您输入的为身份证，请输入点击下一步继续操作。',5000);

                if(flag) {
                    pwdBox.hide();
                    needPwd = false;
                }

                break;
        }

        return true;
    },

    checkIdExist: function(num) {
        $.ajax({
            url: '/invite/existUser',
            data: { id_number: num },
            type: 'GET',
            dataType: "json",
            success: function(data) {
                if (data.success == 1) {
                    if(data.exist == 1 && data.login_uid > 0 && (data.uid == data.login_uid)) {
                        return 1;
                    }

                    if(data.exist == 0) {
                        return 0;
                    }

                    return 2;
                }  else {
                    tool.error.showToastError(data.message, 5000, $(tool.dom.accountIdObj));

                    return 0;
                }
            },
            error: function() {
                tool.error.showToastError('网络异常', 5000, $(tool.dom.accountIdObj));

                return 0;
            }
        });
    }
};

share.init();