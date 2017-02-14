var group = {
    init: function() {
        this.start();                 //首页，保障方案，成员管理
        this.dataList();             //首页
        this.ewmCode();              //首页，保障方案，成员管理
        this.dataDel();             //首页，保障方案，成员管理
        this.dataAddEdit();        //首页，保障方案，成员管理
        this.userList();           //成员管理
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

        $('#side-menu').metisMenu();
    },

    //数据列表
    dataList: function() {
        $('.iboxIndex').each(function() {
            if(!$(this).hasClass('add-null')) {
                tool.list.load(this);
            }
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

    //删除
    dataDel: function() {
        //批量删除
        $(document).on("click",".del_user_all",function() {
           tool.list.delAll(this);
        });

        //单个删除
        $(document).on("click",'.del_user',function () {
            var lines = $(this).closest('tr'),
                memberIdArr = [lines.attr('data-id')];

            tool.list.del(memberIdArr, lines);
        });
    },

    //添加修改
    dataAddEdit: function() {
        var box = tool.dom.addDialog;

        //新增成员, 修改成员
        $(document).on('click', '.editor_user, .add_user', function() {
            var insuranceId = $(this).closest('.iboxlist').attr('data-id'),
                memberId = 0;

            if($(this).hasClass('add_user')) {
                memberId = 0;
                $(box).removeClass('edit-user');
                $(box + ' .select-fangan option[value="'+ insuranceId +'"]').attr('selected', true);

                //添加时姓名和证件可修改
                $(box).find('select[name="relType"], select[name="certType"]').attr('disabled', 'disabled');
                $(box).find('input[name="realname"], input[name="id_number"]').attr('readonly', 'readonly');
            } else {
                memberId = $(this).closest('tr').attr('data-id');
                $(box).addClass('edit-user');

                //编辑时姓名和证件不可修改
                $(box).find('select[name="relType"], select[name="certType"]').attr('disabled', 'disabled');
                $(box).find('input[name="realname"], input[name="id_number"]').attr('readonly', 'readonly');
            }

            $(box).attr('data-insuranceId', insuranceId).attr('data-memberId', memberId);
            $(box).modal();

            tool.addEdit.startLoad(insuranceId, memberId);
        });

        //切换方案
        $(box + ' .form-fangan select').change(function() {
            var insuranceId = $(this).val(),
                memberId = $(box).attr('data-memberId');

            tool.addEdit.startLoad(insuranceId, memberId);
        });

        //地址设置
        $(box + ' .health_insurance_address').click(function (e) {
            SelCity(this, e);
        });

        //输入框校验
        $(box + ' .form-name').blur(function() {
            tool.check.realName(this);
        });
        $(box + ' .form-idnum').blur(function() {
            tool.check.idNum(this);
        });
        $(box + ' .form-mobile').blur(function() {
            tool.check.mobile(this);
        });

        //切换证件类型
        $('#certTypeId').change(function() {
            var type = $(this).val();

            tool.all.showBirthDiv(type);
        });

        //提交
        $('#userForm').click(function() {
            var flag =  $(box).hasClass('edit-user') ? 'edit' : 'add';

            if($(box).hasClass('add-null')) {
                flag = '';
            }

            tool.addEdit.submits(this, flag);
        });
    },

    userList: function() {
        if($('#userContent')[0]) {
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
    }
};


var tool = {
    dom: {
        addDialog: '#add_user'
    },

    all: {
        allOpen: function(obj){
            if($(obj).attr('data-all') == 'true') {
                $('.ibox-content').css('display', 'none');
                $(obj).text('全部打开').attr('data-all','false');
                $('.updown').removeClass('fa-chevron-up');
                $('.updown').addClass('fa-chevron-down');
            } else {
                $('.ibox-content').css('display', 'block');
                $('#all').text('全部收起');
                $('#all').attr('data-all','true');
                $('.updown').removeClass('fa-chevron-down');
                $('.updown').addClass('fa-chevron-up');
            }
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
        },

        //设定日期的选择范围
        setsDateRange: function(obj, startDate, endDate, defaultDate) {
            obj.datepicker({
                format: 'yyyy-mm-dd',
                keyboardNavigation: false,
                forceParse: false,
                autoclose: true,
                startDate: startDate,
                endDate: endDate
            });
            obj.datepicker("setStartDate", startDate);
            obj.datepicker("setEndDate", endDate);

            if (defaultDate) {
                obj.datepicker("setDate", defaultDate);
            }
        },

        loading: function(status) {
            eval("$('._loading')." + status + '()');
        },

        showBirthDiv: function(flag) {
            if (flag == 0) {
                //身份证
                $('#relBirthDiv').hide();
            } else if (flag == 1) {
                //出生证
                $('#relBirthDiv').show();
            }
        }
    },

    check: {
        realName: function(obj) {
            var v = $.trim($(obj).val()),
                realnameReg=/^[\u4e00-\u9fa5·]{2,15}$/;

            if(v == '') {
                tool.check.error(obj, '请填写真实姓名', true);
                return false;
            }

            if(!realnameReg.test(v)) {
                tool.check.error(obj, '真实姓名只能是汉字', true);
                return false;
            }

            tool.check.error(obj, '', false);
            return true;
        },

        idNum: function(obj) {
            var id_number = $.trim($(obj).val()),
                relType = $('#relTypeId').val(),
                certType = $('#certTypeId').val();

            if ((relType == 1 && !check_id_number_format(id_number)) || (relType != 1 && certType == 0 && !check_id_number_format(id_number)) || (relType != 1 && certType == 1 && !checkBirthCertFormat(id_number))) {
                tool.check.error(obj, '证件号码有误', true);

                return false;
            }

            tool.check.error(obj, '', false);
            return true;
        },

        //手机号
        mobile: function(obj, flag) {
            var v = $.trim($(obj).val()),
                b = /^1[3-9][0-9]\d{8}$/;

            if(v == '') {
                tool.check.error(obj, '请输入手机号码', true);
                return false;
            }

            if(!b.test(v)) {
                tool.check.error(obj, '手机号码格式不对', true);
                return false;
            }

            tool.check.error(obj, '', false);
            return true;
        },

        error: function(inputObj, msg, show) {
            var msgObj = $("#add_user .msg");

            if (show) {
                $(inputObj).css({"border-color": "red"});
                msgObj.html(msg);
            }
            else {
                $(inputObj).css({"border-color": "#eeeeee"});
                msgObj.html('');
            }
        }
    },

    list: {
        load: function(obj, type) {
            var id = $(obj).attr('data-id'),
                page = $(obj).attr('data-page') ? $(obj).attr('data-page') : 1,
                first = $(obj).attr('data-first'),
                loading = $(obj).find('.ajax-loading'),
                tbody = $(obj).find('.table tbody'),
                lists = tbody.find('tr').length,
                dataJson = {};

            if(type) {
                dataJson.type = type;
            } else {
                dataJson.insurance_id = id;
                dataJson.page = page;
            }

            if($(obj).attr('data-load') == 'false') {
                return;
            }

            $(obj).attr('data-load', 'false');
            loading.show();

            var param = {
                url: '/group/memberList',
                type: 'GET',
                data: dataJson,
                success: function(data) {
                    var datas = data.list,
                        html = '';

                    loading.hide();

                    if(datas != '') {
                        for(var i = 0; i < datas.length; i++) {
                            if(datas[i].mobile == '') {
                                datas[i].mobile = '<i class="fa fa-exclamation-triangle text-navy editor_user" style="cursor: pointer" data-toggle="modal" data-medicare-type="0" data-medicare-address="" data-is-medicare="0" title="手机号为重要信息，为空可能影响成员的保障方案，请点击填写"></i>';
                            }

                            switch(type) {
                                case 'effect':  //在保成员列表
                                    html += '<tr data-id="'+ datas[i].id +'">' +
                                        '<td><input type="checkbox" name="idArr[]" value="'+ datas[i].id +'" class="form-control"></td>' +
                                        '<td><div class="table-h table-name" style="width: 70px" title="'+ datas[i].name +'">'+ datas[i].name +'</div></td>' +
                                        '<td><div class="table-h">'+ datas[i].id_number +'</div></td>' +
                                        '<td><div class="table-h text-left">'+ datas[i].mobile +'</div></td>' +
                                        '<td><div class="table-h table-name" style="width:100px;margin:auto;text-align: center" title="'+ datas[i].product_name +'">'+ datas[i].product_name +'</div></td>' +
                                        '<td><div class="table-h text-center">'+ datas[i].begin_date +'</div></td>' +
                                        '<td><div class="table-h text-center">'+ datas[i].end_date +'</div></td>' +
                                        '<td><div class="btn-group"><button class="btn-white btn btn-bitbucket editor_user" data-toggle="modal" data-medicare-type="'+ datas[i].medical_insurance_type +'" data-medicare-province="'+ datas[i].medical_insurance_province +'" data-medicare-city="'+ datas[i].medical_insurance_city +'" data-is-medicare="0" title="修改成员信息"><i class="fa fa-edit text-navy"></i></button>                                            <input type="hidden" value="1485273600"><button class="btn-white btn btn-bitbucket del_user" title="删减"><i class="fa fa-trash-o text-navy"></i></button></div></td></tr>';

                                    break;
                                case 'wait':    //待核成员列表
                                    html += '<tr data-id="'+ datas[i].id +'">' +
                                        '<td><input type="checkbox" name="idArr[]" value="'+ datas[i].id +'" class="form-control"></td>' +
                                        '<td><div class="table-h table-name" style="width: 70px" title="'+ datas[i].name +'">'+ datas[i].name +'</div></td>' +
                                        '<td><div class="table-h">'+ datas[i].id_number +'</div></td>' +
                                        '<td><div class="table-h text-left">'+ datas[i].mobile +'</div></td>' +
                                        '<td><div class="table-h text-center">'+ datas[i].create_time +'</div></td>' +
                                        '<td><div class="table-h table-name" style="width:100px;margin:auto;text-align: center" title="'+ datas[i].product_name +'">'+ datas[i].product_name +'</div></td>' +
                                        '<td><div class="table-h text-center">'+ datas[i].begin_date +'</div></td>' +
                                        '<td><div class="table-h text-center">'+ datas[i].end_date +'</div></td>' +
                                        '</tr>';

                                    break;
                                case 'reject':    //已拒成员列表
                                    html += '<tr data-id="'+ datas[i].id +'">' +
                                        '<td><input type="checkbox" name="idArr[]" value="'+ datas[i].id +'" class="form-control"/></td>' +
                                        '<td><div class="table-h table-name" style="width: 60px" title="'+ datas[i].name +'">'+ datas[i].name +'</div></td>' +
                                        '<td><div class="table-h">'+ datas[i].id_number +'</div></td>' +
                                        '<td><div class="table-h text-center" style="width: 80px">'+ datas[i].create_time +'</div></td>' +
                                        '<td><div class="table-h text-center" style="width: 80px">'+ datas[i].update_time +'</div></td>' +
                                        '<td><div class="table-h table-name text-center" style="width:70px;margin: auto" title="'+ datas[i].product_name +'">'+ datas[i].product_name +'</div></td>' +
                                        '<td><div class="table-h text-center" style="width: 80px">'+ datas[i].begin_date +'</div></td>' +
                                        '<td><div class="table-h text-center" style="width: 80px">'+ datas[i].end_date +'</div></td>' +
                                        '<td><div class="btn-group"><button data-request="'+ datas[i].create_time +'" data-start="'+ datas[i].begin_date +'" class="btn btn-white btn-bitbucket yes" title="审核通过"><i class="fa fa-check text-navy"></i></button></div></td>' +
                                        '</tr>';

                                    break;
                                case 'uneffect':    //已失效成员列表
                                    html += '<tr>' +
                                        '<td><div class="table-h table-name" style="width: 100px" title="'+ datas[i].name +'">'+ datas[i].name +'</div></td>' +
                                        '<td><div class="table-h">'+ datas[i].id_number +'</div></td>' +
                                        '<td><div class="table-h table-name text-center" style="width:220px;margin: auto" title="'+ datas[i].product_name +'">'+ datas[i].product_name +'</div></td>' +
                                        '<td><div class="table-h text-center">'+ datas[i].begin_date +'</div></td>' +
                                        '<td><div class="table-h text-center">'+ datas[i].end_date +'</div></td>' +
                                        '<td><div class="table-h text-center">失效</div></td>' +
                                        '</tr>';

                                    break;
                                default:
                                    html += '<tr data-id="'+ datas[i].id +'">' +
                                        '<td><input type="checkbox" name="idArr[]" value="'+ datas[i].id +'" class="form-control"></td>' +
                                        '<td><div class="table-h table-name" style="width: 70px" title="'+ datas[i].name +'">'+ datas[i].name +'</div></td>' +
                                        '<td><div class="table-h">'+ datas[i].id_number +'</div></td>' +
                                        '<td><div class="table-h text-left">'+ datas[i].mobile +'</div></td>' +
                                        '<td><div class="table-h text-center">'+ datas[i].begin_date +'</div></td>' +
                                        '<td><div class="table-h text-center">'+ datas[i].end_date +'</div></td>' +
                                        '<td><div class="table-h text-center"><i class="fa fa-check text-navy" title="保障中"></i></div></td>' +
                                        '<td><div class="btn-group">' +
                                        '<button class="btn-white btn btn-bitbucket editor_user" data-toggle="modal" data-medicare-type="0" title="编辑" data-medicare-address="" data-is-medicare="0"><i class="fa fa-edit text-navy"></i></button>' +
                                        '<button class="btn-white btn btn-bitbucket del_user" title="删减"><i class="fa fa-trash-o text-navy"></i></button></div>' +
                                        '</td></tr>';
                                    break;
                            }
                        }

                        $(obj).attr('data-load', 'true');
                        tbody.html(html);

                        //第一次加载添加分页
                        if(typeof first == 'undefined' || first == 'true') {
                            tool.all.pagination($('#pagination' + id), data.total, data.pageSize, tool.list.pageCallback);

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

        delAll: function(obj) {
            var checkAll = $(obj).parent('.btn-group').siblings('.m-t-35').find("input[name='idArr[]']:checked"),
                lines = checkAll.parents('tr'),
                len = checkAll.length,
                memberIdArr = [];

            for(var i = 0; i < len; i++) {
                memberIdArr.push(checkAll.eq(i).closest('tr').attr('data-id'));
            }

            if(memberIdArr == "") {
                swal({
                    title: "提示！",
                    type: "warning",
                    text: "您是不是忘了勾选需要解除保障的成员？",
                    confirmButtonText: "确认"
                });
                return;
            }

            tool.list.del(memberIdArr, lines);
        },

        del: function(dataArr, lines) {
            var todayDate = new Date(),
                tipDate = new Date(todayDate.getFullYear() + '-' + (todayDate.getMonth() - 0 + 1) + '-' + (todayDate.getDate() - 0 + 1)),
                nextDate = tipDate.getFullYear() + '-' + (tipDate.getMonth() - 0 + 1) + '-' + tipDate.getDate(),
                txt = dataArr.length == 1 ? '此人' : '';

            swal({
                title : '您确定要删减'+ txt +'吗？',
                text  : '所选人员的保单将从 '+ nextDate +' 失效。',
                type  : 'warning',
                showCancelButton   : true,
                confirmButtonColor : '#DD6B55',
                confirmButtonText  : '确认删减',
                cancelButtonText   : '取消删减',
                closeOnConfirm: false
            }, function (isConfirm) {
                if(isConfirm) {
                    var param = {
                        url: '/group/delMember',
                        data: {
                            member_id: dataArr,
                            insurance_id: lines.attr('data-id')
                        },
                        success: function() {
                            swal({
                                title: '删除成功',
                                type: "success",
                                confirmButtonColor: "#DD6B55",
                                confirmButtonText: "确认",
                                closeOnConfirm: true
                            });

                            lines.each(function() {
                                $(this).slideUp(function() {
                                    $(this).remove();
                                });
                            });
                        }
                    };

                    tool.ajax.callAjax(param);
                }
            });
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

    addEdit: {
        startLoad: function(insuranceId, memberId, flag) {
            var param = {
                url: '/group/memberInfo',
                type: 'GET',
                data: {
                    member_id: memberId,
                    insurance_id: insuranceId
                },
                success: function(data) {
                    var datas = data.data,
                        box = $(tool.dom.addDialog),
                        nameBox = box.find('.form-name'),
                        idNumBox = box.find('.form-idnum'),
                        mobileBox = box.find('.form-mobile'),
                        healthInsurance = box.find('.health_insurance'),
                        startTimeBox = box.find('.startTimeBox'),
                        endTimeBox = box.find('.endTimeBox');

                    if($.trim(nameBox.val()) == '') {
                        nameBox.val(datas.name);
                    }

                    if($.trim(idNumBox.val()) == '') {
                        idNumBox.val(datas.id_number);
                    }

                    if($.trim(mobileBox.val()) == '') {
                        mobileBox.val(datas.mobile);
                    }

                    //是否需要医保信息
                    if(datas.need_medical_insurance == 1) {
                        healthInsurance.show();
                        box.attr('data-medical', datas.need_medical_insurance);
                        healthInsurance.find('option[value="'+ datas.insurance_type +'"]').attr('selected', true);
                    } else {
                        box.attr('data-medical', 0);
                        healthInsurance.hide();
                    }

                    //生效日期
                    tool.all.setsDateRange(startTimeBox, datas.min_begin_date, datas.max_begin_date);
                    tool.all.setsDateRange(endTimeBox, datas.min_end_date, datas.max_end_date);

                    if(startTimeBox.find('input').val() == '') {
                        startTimeBox.attr('data-date', datas.min_begin_date).find('input').val(datas.min_begin_date);
                    }

                    if(endTimeBox.find('input').val() == '') {
                        endTimeBox.attr('data-date', datas.max_end_date).find('input').val(datas.max_end_date);
                    }

                }
            };

            tool.ajax.callAjax(param);
        },

        indenty: function(obj) {
            var box = tool.dom.addDialog;

            if($(obj).hasClass('on')) {
                return false;
            }

            if(!tool.check.realName(box + ' .form-name') || !tool.check.idNum(box + ' .form-idnum')
                || !tool.check.mobile(box + ' .form-mobile')) {
                return false;
            }

            //有医保的，对医保进行校验
            if($(box + ' .health_insurance:visible').length != 0
                && ($(box + ' .health_insurance_address').val() == '' || $(box + ' .health_insurance_address').val().indexOf('/') == -1)) {
                tool.check.error(obj, '请选择医保所在地', true);
                return false;
            }

            return true;
        },

        submits: function(obj, flag) {
            var box = $(tool.dom.addDialog),
                sid = box.attr('data-insuranceId'),
                mid = box.attr('data-memberId'),
                name = $.trim(box.find('.form-name').val()),
                idNum = $.trim(box.find('.form-idnum').val()),
                mobile = $.trim(box.find('.form-mobile').val()),
                healthInsurance = box.find('.health_insurance'),
                startTime = box.find('.startTimeBox input').val(),
                endTime = box.find('.endTimeBox input').val(),
                insuranceType = box.find('select[name="medicare_type"]').val(),
                prov = box.find('#edit_prov').val(),
                city = box.find('#edit_city').val(),
                url = flag == 'add' ? '/group/postAddMember' : '/group/postUpdateMember',
                datas = {
                    insurance_id: sid,
                    mobile: mobile,
                    begin_date: startTime,
                    end_date: endTime
                };

            if(!tool.addEdit.indenty(obj)) {
                return false;
            }

            tool.all.loading('show');

            //need_medical_insurance为1时需要医保信息
            if(box.attr('data-medical') == 1) {
                datas.province = prov;
                datas.city = city;
                datas.insurance_type = insuranceType;
            }

            if(flag == 'add') {
                datas.name = name;
                datas.id_number = idNum;
            } else {
                datas.id = mid;
            }

            var param = {
                id: obj,
                url: url,
                data: datas,
                success: function(data) {
                    tool.all.loading('hide');
                    box.find('input').val('');
                    box.modal('hide');

                    var listBox = $('.iboxlist' + sid).length > 0 ? $('.iboxlist' + sid) : $('.iboxlist'),
                        trbox = listBox.find('tr[data-id="'+ mid +'"]');

                    if(flag == 'add') {
                        var html = '<tr data-id="'+ data.id +'" class="odd">' +
                            '<td><input type="checkbox" name="idArr[]" value="'+ data.id +'" class="form-control"></td>' +
                            '<td><div class="table-h table-name" style="width: 70px" title="'+ name +'">'+ name +'</div></td>' +
                            '<td><div class="table-h table-num">'+ idNum +'</div></td>' +
                            '<td><div class="table-h text-left table-mobile">'+ mobile +'</div></td>' +
                            '<td><div class="table-h text-center table-start">'+ startTime +'</div></td>' +
                            '<td><div class="table-h text-center table-end">'+ endTime +'</div></td>' +
                            '<td><div class="table-h text-center"><i class="fa fa-check text-navy" title="保障中"></i></div></td>' +
                            '<td><div class="btn-group">' +
                            '<button class="btn-white btn btn-bitbucket editor_user" data-toggle="modal" data-medicare-type="0" title="编辑" data-medicare-address="" data-is-medicare="0"><i class="fa fa-edit text-navy"></i></button>' +
                            '<button class="btn-white btn btn-bitbucket del_user" title="删减"><i class="fa fa-trash-o text-navy"></i></button></div>' +
                            '</td></tr>';

                        listBox.find('.table tbody').prepend(html);
                        listBox.find('.dataTables_empty').parent().hide();
                    } else if(flag == 'edit') {
                        trbox.find('.table-name').attr('title', name).text(name);
                        trbox.find('.table-num').text(idNum);
                        trbox.find('.table-mobile').text(mobile);
                        trbox.find('.table-start').text(startTime);
                        trbox.find('.table-end').text(endTime);
                    }

                },
                error: function() {
                    tool.all.loading('hide');
                }
            };

            if(box.attr('data-medical') != 0) {
                param.data.province = box.find('.health_insurance #add_prov').attr('data-name');
                param.data.city = box.find('.health_insurance #add_city').attr('data-name');
                param.data.insurance_type = box.find('.health_insurance select').val();
            }

            tool.ajax.callAjax(param);
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


group.init();