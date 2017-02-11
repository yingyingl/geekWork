var group = {
    init: function() {
        this.start();
        this.ewmCode();
        this.dataList();
    },

    start: function() {
        //收起效果
        $('.collapse-link').click( function() {
            var ibox = $(this).closest('div.ibox');
            var button = $(this).find('i');
            var content = ibox.find('div.ibox-content');
            content.slideToggle(200);
            button.toggleClass('fa-chevron-up').toggleClass('fa-chevron-down');
            ibox.toggleClass('').toggleClass('border-bottom');
            setTimeout(function () {
                ibox.resize();
                ibox.find('[id^=map-]').resize();
            }, 50);
        });

        // 计算中鼠标经过效果
        $('.tooltip-demo').tooltip({
            selector: "[data-toggle=tooltip]",
            container: "body"
        });

        //选择全部checkbox
        $('.checkboxAll').on('change',function(){
            var objTable=$(this).parents('.table');
            var obj=objTable.find("input[name='idArr[]']");
            obj.prop('checked',$(this).is(':checked'));
        });

        //全部展开
        $('#all').click(function() {
            tool.all.allOpen(this);
        });
    },

    //加入推送点击
    ewmCode: function() {
        $(document).on("click", ".two_code", function() {
            var eid = $(this).parent().siblings("input[name='eid']").val(),
                imgObj = '#qrcodePic';

            $(imgObj).attr('data-eid', eid);

            tool.ewmCode.load(this);
        });

        //刷新二维码
        $('#refreshEwm').click(function() {
            tool.ewmCode.refreshs(this);
        });
    },

    //数据列表
    dataList: function() {
        $('.iboxlist').each(function() {
            tool.list.load(this);
        });
    }
};


var tool = {
    all: {
        allOpen: function(obj){
            if($(obj).attr('data-all') == 'true') {
                $('.ibox-content').css('display', 'none');
                $(obj).text('全部打开').attr('data-all','false');
            } else {
                $('.ibox-content').css('display', 'block');
                $('#all').text('全部收起');
                $('#all').attr('data-all','true');
            }

            $('.updown').removeClass('fa-chevron-down');
            $('.updown').addClass('fa-chevron-up');
        },

        //分页
        pagination: function(obj, count, pageSize, callbackLoadList) {
            //调用分页插件
            $(obj).pagination(count, {
                num_edge_entries: 2,
                num_display_entries: 8,
                items_per_page: pageSize,
                prev_text: '上一页',
                next_text: '下一页',
                link_to: 'javascript:void(0)',
                callback: callbackLoadList  //回调函数
            });
        }
    },

    list: {
        load: function(obj) {
            var id = $(obj).attr('data-id'),
                page = $(obj).attr('data-page') ? $(obj).attr('data-page') : 1,
                first = $(obj).attr('data-first'),
                tbody = $(obj).find('.table tbody'),
                lists = tbody.find('tr').length;

            if($(obj).attr('data-load') == 'false') {
                return;
            }

            $(obj).attr('data-load', 'false');

            var param = {
                url: '/group/memberList',
                data: {
                    insurance_id: id,
                    page: page
                },
                success: function(data) {
                    var datas = data.list,
                        html = '';

                    if(datas.length != 0) {
                        for(var i = 0; i < datas.length; i++) {
                            if(datas[i].mobile == '') {
                                datas[i].mobile = '<i class="fa fa-exclamation-triangle text-navy editor_user" style="cursor: pointer" data-toggle="modal" data-medicare-type="0" data-target="#edit_user" data-medicare-address="" data-is-medicare="0" title="手机号为重要信息，为空可能影响成员的保障方案，请点击填写"></i>';
                            }

                            html += '<tr id="'+ datas[i].id +'" class="odd">' +
                                '<td><input type="checkbox" name="idArr[]" value="'+ datas[i].id +'" class="form-control"></td>' +
                                '<td><div class="table-h table-name" style="width: 70px" title="'+ datas[i].name +'">'+ datas[i].name +'</div></td>' +
                                '<td><div class="table-h">'+ datas[i].id_number +'</div></td>' +
                                '<td><div class="table-h text-left">'+ datas[i].mobile +'</div></td>' +
                                '<td><div class="table-h text-center">'+ datas[i].begin_date +'</div></td>' +
                                '<td><div class="table-h text-center">'+ datas[i].end_date +'</div></td>' +
                                '<td><div class="table-h text-center"><i class="fa fa-check text-navy" title="保障中"></i></div></td>' +
                                '<td><div class="btn-group">' +
                                '<button class="btn-white btn btn-bitbucket editor_user" data-toggle="modal" data-medicare-type="0" data-target="#edit_user" title="编辑" data-medicare-address="" data-is-medicare="0"><i class="fa fa-edit text-navy"></i></button>' +
                                '<button class="btn-white btn btn-bitbucket del_user" title="删减"><i class="fa fa-trash-o text-navy"></i></button></div>' +
                                '</td></tr>';
                        }

                        $(obj).attr('data-load', 'true');
                        tbody.html(html);

                        //第一次加载添加分页
                        if(typeof first == 'undefined' || first == 'true') {
                            tool.all.pagination($('#pagination' + id), data.total, data.pageSize, tool.list.pageCallback);

                            $(obj).attr('data-first', 'false');
                        }
                    } else {
                        if(lists.length == 0) {
                            tbody.html('<tr class="odd"><td valign="top" colspan="8" class="dataTables_empty">没有数据</td></tr>');
                        }
                    }
                },
                error: function(message) {
                    if(lists.length == 0) {
                        tbody.html('<tr class="odd"><td valign="top" colspan="8" class="dataTables_empty">'+ message +'</td></tr>');
                    }
                }
            };

            tool.ajax.callAjax(param);
        },

        pageCallback: function(page_id, jq) {
            var box = jq.closest('.iboxlist'),
                page = page_id - 0 + 1;

            box.attr('data-page', page);

            tool.list.load(box);
        }
    },

    ewmCode: {
        load: function(obj, flag) {
            var param = {
                url: '',
                data: {
                    eid: $('#qrcodePic').data('eid')
                },
                success: function() {
                    $('#qrcodePic').attr('src', response.picurl);
                    $("#regURl").html('<span style="font-weight: bold">或分享链接，引导成员申请：</span><a href="'+ response.shortUrl+'" target="_balnk">'+ response.shortUrl+'</a>');
                }
            };

            if(flag == 'refresh') {
                param.data.mode = 1;
            }

            tool.ajax.callAjax(param);
        },

        refreshs: function(obj) {
            swal({
                    cancelButtonText : '取消',
                    closeOnConfirm : true,
                    confirmButtonColor : '#DD6B55',
                    confirmButtonText : '确认',
                    showCancelButton : true,
                    text : '您的员工将不能够再通过刷新之前的二维码和链接申请保障。',
                    title : '是否刷新二维码？',
                    type : 'warning'
                },
                function ( isConfirm ){
                    if ( isConfirm ){
                        tool.ewmCode.load(obj, 'refresh');
                    }
                }
            ) ;
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
                        tool.ajax.error(data.message);

                        options.error(data.message);
                    }
                },
                error: function() {
                    tool.ajax.error('网络异常');

                    options.error('网络异常');
                }
            });
        },

        error: function(message, flag, obj) {

        },

        errorHide: function(flag) {

        }
    }
};


group.init();