var statistical = {
    init: function() {
        this.chart();
        $('#side-menu').metisMenu();
        tool.list.load('.iboxlist', $('.iboxlist').attr('data-type'));
    },

    chart: function() {
        var monthArr = tool.setMonthArr(),
            AddUserNumArr = tool.setUserNumArrWithType(monthArr, '1'),
            RemoveUserNumArr = tool.setUserNumArrWithType(monthArr, '5'),
            userArr = tool.setUserNumArr(monthArr),
            flag = $('.iboxlist').attr('data-type');

        monthArr = tool.formatMonth(monthArr);

        var barData = {
            labels: monthArr,
            datasets: [
                {
                    label: flag == 1 ? "My Second dataset" : "添加成员",
                    fillColor: "rgba(26,179,148,0.5)",
                    strokeColor: "rgba(26,179,148,0.8)",
                    highlightFill: "rgba(26,179,148,0.75)",
                    pointColor : "#00ab9f",
                    highlightStroke: "#00ab9f",
                    data: flag == 1 ? userArr : AddUserNumArr
                }
            ]
        };

        if(!flag) {
            barData.datasets.push({
                label: "删除成员",
                fillColor: "rgba(70,79,136,0.5)",
                strokeColor: "rgba(70,79,136,0.8)",
                highlightFill: "rgba(70,79,136,0.75)",
                pointColor : "#464f88",
                highlightStroke: "#464f88",
                data: RemoveUserNumArr
            });
        }

        var barOptions = {
            scaleBeginAtZero: true,
            scaleShowGridLines: true,
            scaleGridLineColor: "rgba(0,0,0,.05)",
            scaleGridLineWidth: 1,
            scaleFontSize: 12,
            responsive: true,
            pointDot: false,
            datasetStrokeWidth: 1
        };
        var ctx = document.getElementById(flag == 1 ? "linkChart" : "barChart").getContext("2d");
        var myNewChart = new Chart(ctx).Line(barData, barOptions);
    }
};

var tool = {
    datas: charData && charData != '' ? $.parseJSON(charData) : 0,

    list: {
        load: function(obj, type) {
            var id = $(obj).attr('data-id'),
                page = $(obj).attr('data-page') ? $(obj).attr('data-page') : 1,
                first = $(obj).attr('data-first'),
                loading = $(obj).find('.ajax-loading'),
                tbody = $(obj).find('.table tbody'),
                lists = tbody.find('tr').length,
                url = '',
                dataJson = {};

            if(type == 1) {
                url = '/statistics/userLog';
            } else {
                url = '/statistics/lipeiLog';
            }

            if($(obj).attr('data-load') == 'false') {
                return;
            }

            $(obj).attr('data-load', 'false');
            loading.show();

            var param = {
                url: url,
                type: 'GET',
                data: { page: page },
                success: function(data) {
                    var datas = data.list,
                        html = '';

                    loading.hide();

                    if(datas != '') {
                        for(var i = 0; i < datas.length; i++) {

                            var status = type == 1 ? datas[i].operation : datas[i].status_text;

                            html += '<tr><td >'+ datas[i].text +'</td><td class="text-navy">'+ status +'</td><td>'+ datas[i].create_time +'</td></tr>';
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
    },

    setMonthArr: function() {
        var monthArr = new Array(),
            today = new Date(),
            currentMonth = today.getMonth() + 1,
            currentYear = today.getFullYear();

        for(var i = 1; i <= 13; i++) {
            var month = currentMonth - (7 - i),
                year = currentYear;

            if(month <= 0) {
                month = 12 + month;
                year = currentYear - 1;
            } else if(month > 12 ) {
                month = month - 12;
                year = currentYear + 1;
            }

            var Arr = new Array(year,month,0);
            monthArr.push(Arr);
        }

        return monthArr;
    },

    formatMonth: function(monthArr) {
        var newMonthArr = new Array();

        for(var i = 0; i < monthArr.length; i++) {
            newMonthArr[i] = monthArr[i][0] + '/' + monthArr[i][1];
        }

        return newMonthArr;
    },

    setUserNumArr: function(monthArr) {
        var userNumArr = new Array();

        for(var i = 0; i < tool.datas.length; i++) {
            for(var j = 0; j < monthArr.length; j++) {
                if(tool.datas[i]['year'] == monthArr[j][0] && tool.datas[i]['month'] == monthArr[j][1]) {
                    monthArr[j][2] = statistical.datas[i]['usernum'];
                }
            }
        }

        for(var j = 0; j < monthArr.length; j++) {
            userNumArr[j] = monthArr[j][2];
        }

        return userNumArr;
    },

    setUserNumArrWithType: function(monthArr, type) {
        var tmpArr = $.extend(true, [], monthArr),
            userNumArr = new Array();

        for(var i = 0; i < tool.datas.length; i++) {
            for(var j = 0; j < tmpArr.length; j++) {
                if(tool.datas[i]['year'] == tmpArr[j][0] && tool.datas[i]['month'] == tmpArr[j][1] && tool.datas[i]['type'] == type) {
                    tmpArr[j][2] = tool.datas[i]['usernum'];
                }
            }
        }

        for(var j = 0; j < tmpArr.length; j++) {
            userNumArr[j] = tmpArr[j][2];
        }

        return userNumArr;
    }
};

statistical.init();