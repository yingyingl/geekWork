var adminLog = {
    init: function() {
        this.start();
        $('#side-menu').metisMenu();
    },

    start: function() {
        var now = 0,
            tabbox = $('#userContent .nav-tabs'),
            conbox = $('#userContent .tab-content');

        if(tabbox.find('.active').length == 0) {
            tabbox.find('li').first().addClass('active');
            now = 0;
        } else {
            now = tabbox.find('.active').index();
        }

        conbox.find('.tab-pane').eq(now).addClass('active').siblings().removeClass('active');

        tool.list.load(conbox.find('.tab-pane.active'), conbox.find('.tab-pane.active').attr('data-type'));


        //切换tab
        tabbox.find('li').click(function() {
            var nowbox = conbox.find('.tab-pane').eq($(this).index()),
                first = nowbox.attr('data-first');

            if(typeof first == 'undefined' || first == 'true') {
                tool.list.load(nowbox, nowbox.attr('data-type'));
            }
        });
    }
};

var tool = {
    list: {
        load: function(obj, type) {
            var id = $(obj).attr('data-id'),
                page = $(obj).attr('data-page') ? $(obj).attr('data-page') : 1,
                first = $(obj).attr('data-first'),
                loading = $(obj).find('.ajax-loading'),
                tbody = $(obj).find('.table tbody'),
                lists = tbody.find('tr').length,
                dataJson = {};


            if($(obj).attr('data-load') == 'false') {
                return;
            }

            $(obj).attr('data-load', 'false');
            loading.show();

            var param = {
                url: '/statistics/adminLog',
                type: 'GET',
                data: { page: page , type: type},
                success: function(data) {
                    var datas = data.list,
                        html = '';

                    loading.hide();

                    if(datas != '') {
                        for(var i = 0; i < datas.length; i++) {
                            var typehtml = '';

                            if(type == 1) {
                                var result = datas[i].result == 1 ? '操作成功' : '操作失败';
                                typehtml = '<td class="text-navy">'+ result +'</td>';
                            }

                            html += '<tr><td>'+ datas[i].description +'</td>'+ typehtml +'<td>'+ datas[i].create_time +'</td></tr>';
                        }

                        $(obj).attr('data-load', 'true');
                        tbody.html(html);

                        //第一次加载添加分页
                        if(typeof first == 'undefined' || first == 'true') {
                            tool.list.pagination($('#pagination' + id), data.total, data.pageSize, tool.list.pageCallback);

                            $(obj).attr('data-first', 'false');
                        }
                    } else {
                        if(lists == 0) {
                            tbody.html('<tr class="odd"><td valign="top" colspan="8" class="dataTables_empty">没有数据</td></tr>');
                        }
                    }
                },
                error: function(message) {
                    loading.hide();

                    if(lists == 0) {
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

adminLog.init();