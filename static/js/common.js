var common = {
    init: function() {
        this.rightNav();
        this.leftNav();
    },

    //右侧浮动图标
    rightNav: function() {
        var tip = 'url('+ tool.root +'/images/right-nav/bg_01.png) no-repeat',
            erweima = 'url('+ tool.root +'/images/right-nav/erweima.png) no-repeat right';

        $("#rightButton").css("right", "0px");

        $(".right_ico").on("mouseover", function() {
            var tip_top,
                show = $(this).attr('show'),
                hide = $(this).attr('hide'),
                hide1 = $(this).attr('hide1');

            if(show == 'online'){
                tip_top = -5;
                $("#right_tip").css("background" , tip);
            }else if(show == 'weixin') {
                tip_top = 0;
                $("#right_tip").css("background" , erweima).css("height" , 180);
            }else if(show == 'tel') {
                tip_top = 79;
                $("#right_tip").css("background" , tip);
            }

            tool.buttonToggle = false;

            $("#right_tip").css("top" , tip_top).show().find(".flag_"+show).show();
            $(".flag_"+hide).hide();
            $(".flag_"+hide1).hide();

        }).on("mouseout", function(){
            tool.buttonToggle = true;
            tool.hideRightTip();
        });

        //客服
        $("#right_tip").on("mouseover", function() {
            tool.buttonToggle = false;
            $(this).show();
        }).on("mouseout", function(){
            tool.buttonToggle = true;
            tool.hideRightTip();
        });

        //返回顶部
        $("#backToTop").on("click", function(){
            var _this = $(this);
            $('html,body').animate({ scrollTop: 0 }, 500 ,function(){
                _this.hide();
            });
        });

        $(window).scroll(function(){
            var htmlTop = $(document).scrollTop();
            if( htmlTop > 0){
                $("#backToTop").fadeIn();
            }else{
                $("#backToTop").fadeOut();
            }
        });
    },

    //左侧
    leftNav: function() {
        var page= "#"+ $("#page").attr("data-page");
        $(page).addClass("active");
        $(page).parent().addClass("in");
        $(page).parent().parent().addClass("active");
    }
};

var tool = {
    root: $('#staticPath').val(),
    buttonToggle: true,

    hideRightTip: function() {
        setTimeout(function(){
            if( tool.buttonToggle ){
                $("#right_tip").hide();
            }
        }, 500);
    }
};

common.init();