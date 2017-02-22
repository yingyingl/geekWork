var share = {
    init: function() {
        this.start();
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
    }
};


var tool = {
    dom: {
        accountIdObj: '#groupReg #mainAccountID',
        pwdObj: '#groupReg .password',
        pwdInput: '#passwordID',
        tips: '.js_tooltips'
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

    check: {},

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