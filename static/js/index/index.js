$(function () {
    /*ads-shadow-click*/
    var close=$(".quit"),
        shadow=$("#shadow"),
        redPackage=$("#red-package");
    var browser=navigator.appName,
        mark=0;
    if(browser=="Microsoft Internet Explorer"){
        var b_version=navigator.appVersion;
        var version=b_version.split(";");
        var trim_Version=version[1].replace(/[ ]/g,"");
        if( trim_Version=="MSIE9.0"){
            close.on("click",closeFunIE);
            redPackage.on("click",redPackageFunIE);
            mark=1;
        }else {
            close.on("click",closeFun);
            redPackage.on("click",redPackageFun);
        }
    }else{
        close.on("click",closeFun);
        redPackage.on("click",redPackageFun);
    }
    function closeFunIE(){
        shadow.css("display","none");
        redPackage.css("display","block");
        if(scrollTop + windowHeight != scrollHeight){
            mark=2;
        }
    }
    function redPackageFunIE(){
        shadow.css("display","block");
        redPackage.css("display","none");
        mark=1;
    }
    function closeFun(){
        shadow.removeClass("animate");
        shadow.addClass("animate-back");
        setTimeout(function () {
            shadow.css("display","none");
        },500);
        redPackage.css({
            display:"block"
        });
        if(scrollTop + windowHeight != scrollHeight){
            mark=2;
        }
    }
    function redPackageFun(){
        shadow.removeClass("animate-back");
        shadow.addClass("animate");
        shadow.css("display","block");
        redPackage.css({
            display:"none"
        });
        mark=0;
    }
    var flagNum= 0,
        scrollTop,
        scrollHeight,
        windowHeight;
    $(window).scroll(function () {
        scrollTop = $(this).scrollTop();
        scrollHeight = $(document).height();
        windowHeight = $(this).height();
        //判断是否网页滚动到底部
        //if(scrollTop + windowHeight == scrollHeight){
        //    if(mark==0){
        //        closeFun();
        //    }else if(mark==1){
        //        closeFunIE();
        //    }
        //    flagNum=1;
        //}else if(flagNum==1&&scrollTop<=4500&&mark!=2){
        //    if(mark==0){
        //        redPackageFun();
        //    }else if(mark==1){
        //        redPackageFunIE();
        //    }
        //    flagNum=0;
        //}
    });
    $('.experience-content').slick({
        dots: true
    });
    $('.partner-content-all').slick({
        dots: true
    });
    /*They said*/
    var contentCircle=$(".content-circle");
    var contentCircleParent=contentCircle.parent();
    contentCircle.on("mouseenter", function () {
        contentCircleParent.removeClass();
        $(this).parent().addClass("active");
    });
    contentCircle.on("mouseleave", function () {
        contentCircleParent.removeClass();
        contentCircle.eq(1).parent().addClass("active");
    });
    /*nav click*/
    var evIcon=$(".evIcon");
    function click(obj,scrollTop){
        obj.click(function () {
            $({one:$(window).scrollTop()}).animate({one:scrollTop},{
                duration:500,
                step: function () {
                    $(window).scrollTop(this.one)
                }
            });
        });
    }
    click($(evIcon[0]),975);
    click($(evIcon[1]),1634);
    click($(evIcon[2]),2458);
    /*gain hover*/
    var gainContentLi=$(".gain-content li");
    gainContentLi.hover(function () {
        $(this).addClass("in-left");
    }, function () {
        $(this).removeClass("in-left");
    });
    /*首页视频点击出现*/
    var $window=$(window),
        $body=$('body'),
        $imgObj=$('.video-click-pec'),
        $quitObj=$('.video-quit'),
        $videoBox=$('.vedio-box'),
        $mask=$('.video-mask'),
        $maskBoxObj=$('.video-mask-box');
    $imgObj.on('click',function(){
        $videoBox.html('<OBJECT classid="clsid:D27CDB6E-AE6D-11cf-96B8-444553540000" width="1140" height="640" id="polyvplayer51bf7437bff268e00e3dc47560701880_5"><PARAM NAME=movie VALUE="http://player.polyv.net/videos/player.swf"><param name="allowscriptaccess" value="always"><param name="wmode" value="Transparent"><param name="flashvars" value="vid=51bf7437bff268e00e3dc47560701880_5" /><param name="allowFullScreen" value="true" /><EMBED src="http://player.polyv.net/videos/player.swf" width="1000" height="640"  TYPE="application/x-shockwave-flash" allowscriptaccess="always" wmode="Transparent" name="polyvplayer51bf7437bff268e00e3dc47560701880_5" allowFullScreen="true" flashvars="vid=51bf7437bff268e00e3dc47560701880_5"></OBJECT>');
        var windowHeight = $window.height();
        $body.css({
            'height':windowHeight,
            'overflow':'hidden'
        });
        $maskBoxObj.show();
        $quitObj.on('click',closeVideo);
        $mask.on('click',closeVideo);
    });
    function closeVideo(){
        $maskBoxObj.hide();
        $videoBox.html('');
        $body.css({
            'height':'auto',
            'overflow':'visible'
        })
    };

    //添加查看详情效果
    $("#contentf li").hover(function(){
        $(this).find(".gery_g").show();
    },function(){
        $(this).find(".gery_g").hide();
    });

});