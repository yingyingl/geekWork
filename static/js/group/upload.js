var uploads = {
    init: function() {
        this.start();
        $('#side-menu').metisMenu();
    },

    start: function() {
        var canUpload = false;

        $('#upload').on('change', function() {
            canUpload = tool.checkFileType($(this).val());

            $('#viewfile').val($(this).val().substring(12));

            if(canUpload) {
                $('#uploadID').prop('disabled',false).removeClass('btn-default').addClass('btn-primary');
            } else {
                $('#uploadID').prop('disabled',true).removeClass('btn-primary').addClass('btn-default');
            }
        });

        //上传
        $('#uploadID').on('click', function() {
            /*$('#upload').hide();
            $(this).prop('disabled',true).removeClass('btn-primary').addClass('btn-default');
            $(this).text('上传中,请稍后...');

            tool.list(this);*/

            $('#uploadFormID').submit();
            $(this).prop('disabled',true);
            $(this).text('上传中,请稍后...');
        });

        //提交
        $('#uploadList').click(function() {
            tool.uploadSubmit(this);
        });
    }
};


var tool = {
    listData: '',

    checkFileType: function(filename) {
        var _validFileExtensions = [".xlsx",".xls"];

        if(filename.length > 0) {
            var blnValid = false;
            for(var j = 0; j < _validFileExtensions.length; j++) {
                var sCurExtension = _validFileExtensions[j];
                if(filename.substr(filename.length - sCurExtension.length, sCurExtension.length).toLowerCase() == sCurExtension.toLowerCase()) {
                    blnValid = true;
                    break;
                }
            }
            return blnValid;
        }
    },

    list: function(obj) {
        $('#uploadList table').hide().find('tbody').html('');
        $('#uploadList .bottomBtn').hide();
        $('#uploadList .ajax-loading').show();

        var param = {
            url: '/group/postExcel',
            data: { upload:  $('#upload').val()},
            enctype: 'multipart/form-data',
            success: function(data) {
                var lists = data.data.list,
                    errors = data.data.error,
                    html = '',
                    spanHtml = '',
                    spanOver = '';

                if(lists.length > 0) {
                    tool.listData = lists;

                    for(var i = 0; i < lists.length; i++) {

                        html += '<tr>';

                        if($.inArray(1, errors[i]) != -1) {
                            html += '<td class="text-center"><span class="table-error">'+ (i + 1) +'</span></td>';
                        } else {
                            html += '<td class="text-center">'+ (i + 1) +'</td>';
                        }

                        for(var j = 0; j < errors[i].length; j++) {
                            if(j != 5) {
                                if(j != 1 && j != 7) {
                                    html += '<td>';
                                }

                                if(j == 0 || j == 1) {
                                    html += '<p class="'+ (errors[i][j] ? 'table-error' : '') +'" style="'+ (j == 1 ? 'margin-bottom: 0' : '') +'">';
                                } else if(j == 6 || j == 7) {
                                    html += '<p><span class="label" style="padding: 3px">'+ (j == 6 ? '起' : '止') +'</span><span class="'+ (errors[i][j] ? 'table-error' : '') +'">';
                                } else {
                                    html += errors[i][j] ? '<span class="table-error">' : '';
                                }

                                if(j == 4) {
                                    html += lists[i][5] == '' ? '不需要' : (lists[i][j] == '' ? '无效' : lists[i][j]);
                                } else {
                                    html += lists[i][j] == '' ? '无效' : lists[i][j];
                                }

                                if(j == 0 || j == 1) {
                                    html += '</p>';
                                } else if(j == 6 || j == 7) {
                                    html += '</span></p>';
                                } else {
                                    html += errors[i][j] ? '</span>' : '';
                                }

                                if(j != 0 && j != 6) {
                                    html += '</td>';
                                }
                            }
                        }

                        html += '</tr>';
                    }

                    $('#uploadList table').show();
                    $('#uploadList tbody').html(html);
                    $('#uploadList thead .text-info').text(lists.length);
                    $('#uploadList thead .table-error').text(data.data.has_error);
                    $('#uploadList .ajax-loading').hide();

                    if(data.data.has_error > 0) {
                        $('#uploadList tfoot').show();
                        $('#uploadList .bottomBtn').show().find('a').addClass('uploadBtn').text('重新上传');
                    } else {
                        $('#uploadList tfoot').hide();
                        $('#uploadList .bottomBtn').show().find('a').removeClass('uploadBtn').text('提交');
                    }
                }

                $('#upload').show();
                $('#viewfile').val('');
            },
            error: function() {
                $('#uploadList .ajax-loading').hide();
                $('#upload').show();
                $(obj).text('上传文档');
            }
        };

        tool.ajax.callAjax(param);
    },

    uploadSubmit: function(obj) {
        if($(obj).hasClass('on')) {
            return;
        }

        $(obj).addClass('on').text('正在提交...');

        var param = {
            url: '/group/postBatchAddMember',
            data: { member:  listData},
            success: function(data) {
                location.href = '/group/memberListPage';
            },
            error: function() {
                $(obj).removeClass('on');
            }
        };

        tool.ajax.callAjax(param);
    },

    listSubmit: function(obj) {
        if($(obj).hasClass('on')) {
            return;
        }

        $(obj).addClass('on');
        $('#upload').hide();
        $('#uploadID').prop('disabled',false).removeClass('btn-default').addClass('btn-primary');

        var param = {
            url: '/group/postBatchAddMember',
            data: { member:  tool.listData},
            success: function(data) {
                $(obj).removeClass('on');
                $('#uploadID').prop('disabled',true).removeClass('btn-primary').addClass('btn-default');

                $('#uploadList table').hide();
                $('#uploadList tbody').html('');
                $('#uploadList thead .text-info').text('');
                $('#uploadList thead .table-error').text('');

                $('#upload').show();
            },
            error: function() {
                $(obj).removeClass('on');
                $('#upload').show();
                $('#uploadID').prop('disabled',true).removeClass('btn-primary').addClass('btn-default');
            }
        };

        tool.ajax.callAjax(param);
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
                enctype: options.enctype ? options.enctype : '',
                success: function(data) {
                    if(options.id) {
                        $(options.id).removeClass('on');
                    }

                    if (data.success == 1) {
                        options.success(data);
                    }  else {
                        tool.ajax.error(data.message);

                        if(options.error) {
                            options.error(data.message);
                        }
                    }
                },
                error: function() {
                    tool.ajax.error('网络异常');

                    if(options.id) {
                        $(options.id).removeClass('on');
                    }

                    if(options.error) {
                        options.error('网络异常');
                    }
                }
            });
        },

        error: function(message, obj) {
            swal({
                title: "提示！",
                type: "warning",
                text: message,
                confirmButtonText: "确认"
            });
        }
    }
};


uploads.init();