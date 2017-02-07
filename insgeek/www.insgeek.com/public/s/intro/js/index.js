$(function(){
	var width=$(window).width(),
        html=$("html")[0];
    if(width>=1000){
        width=1000;
        html.style.fontSize=width/20+"px";
        html.style.width=1000+"px";
        html.style.margin="0 auto";
    }else{
        html.style.fontSize=width/20+"px";
    }
    var advantageFont=$(".our-advantage-font"),
        shadow=$(".shadow"),
        flag=true;
    advantageFont.hammer().on("tap", function () {
        if(flag){
            shadow.css("display","block");
            flag=false;
        }
    });

    shadow.hammer().on("tap", function () {
        if(!flag){
            shadow.css("display","none");
            flag=true;
        }
    })
});