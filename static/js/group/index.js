var group = {
    init: function() {
        this.start();
        this.ewmCode();
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

        //表格显示多少行
        $('.table-hover').dataTable({
            ordering:false,
            "searching": true,
            "bStateSave": true,
            "lengthMenu": [10, 20, 50, 100, 200, 500]
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
                        options.success();
                    }  else {
                        tool.ajax.error(data.message, options.flag);

                        options.error();
                    }
                },
                error: function() {
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