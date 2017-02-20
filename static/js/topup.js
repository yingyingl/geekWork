$("#rightButton").css("right", "0px");
var tip = 'url(http://www.insgeek.com/public/insgeek2.0/img/right-nav/bg_01.png) no-repeat';
var erweima = 'url(http://www.insgeek.com/public/insgeek2.0/img/right-nav/erweima.png) no-repeat right';
var button_toggle = true;
$(".right_ico").on("mouseover", function(){
    var tip_top;
    var show= $(this).attr('show');
    var hide= $(this).attr('hide');
    var hide1= $(this).attr('hide1');
    if(show == 'online'){
        tip_top = -5;
        $("#right_tip").css("background" , tip);
    }else if(show == 'weixin'){
        tip_top = 0;
        $("#right_tip").css("background" , erweima).css("height" , 180);
    }else if(show == 'tel'){
        tip_top = 79;
        $("#right_tip").css("background" , tip);
    }
    button_toggle = false;
    $("#right_tip").css("top" , tip_top).show().find(".flag_"+show).show();
    $(".flag_"+hide).hide();
    $(".flag_"+hide1).hide();

}).on("mouseout", function(){
        button_toggle = true;
        hideRightTip();
    });


$("#right_tip").on("mouseover", function(){
    button_toggle = false;
    $(this).show();
}).on("mouseout", function(){
        button_toggle = true;
        hideRightTip();
    });

function hideRightTip(){
    setTimeout(function(){
        if( button_toggle ) $("#right_tip").hide();
    }, 500);
}

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