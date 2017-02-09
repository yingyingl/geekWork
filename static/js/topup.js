/* VM:JXU0RkVFJXU2NTM5JXU2NUY2JXU5NUY0JTIwJTNBJTIwMjAxNi8wMi8wMyUwQSV1NEZFRSV1NjUzOSV1NEVCQSV1NTQ1OCUyMCUzQSUyMCV1NUYyMCV1NkJDNSUwQSV1NEZFRSV1NjUzOSV1NTE4NSV1NUJCOSUyMCUzQSUyMCV1Nzk4NSV1OTA1MyUyMC0lMjBUQVNLJTIzMjg1JTIwJTVCJXU1MjREJXU3QUVGJXU1RjAwJXU1M0QxJTVEJTIwJXU3RjUxJXU3QUQ5JXU1NzI4JXU3RUJGJXU1NEE4JXU4QkUyJXU2MzA5JXU5NEFFJXU1M0VBJXU2NjNFJXU3OTNBJXU0RTBBJXU3M0VEJXU2NUY2JXU5NUY0JXVGRjBDJXU2Q0ExJXU2NzA5JXU2NjBFJXU3ODZFJXU2MzA3JXU3OTNBJXU1NzI4JXU3RUJGJXU1NEE4JXU4QkUy
 * */
$(function(){
	//固定定位效果
	var position_icon_same=$(".position-icon-same"),
		position_icon_spec=$(".position-icon-spec");
	var enterTime,leaveTime,time;
	position_icon_same.on("mouseenter", function () {
		//var myDate= new Date();
		//enterTime=myDate.getTime();
		var iconHover=$(this).find(".icon-hover");
		var hoverWechat=$(this).find(".hover-wechat");
			if(hoverWechat.length==0){
				iconHover.finish();
				iconHover.animate({
					left:-173
				});
			}else {
				iconHover.finish();
				iconHover.animate({
					left:-174
				});
			}
	});
	position_icon_same.on("mouseleave", function () {
		//var myDate= new Date();
		//leaveTime=myDate.getTime();
		//time=leaveTime-enterTime;
		$(this).find(".icon-hover").animate({
			left:36
		});
	});
	position_icon_spec.on("mouseenter", function () {
		$(this).find(".icon-hover").finish();
		$(this).find(".icon-hover").animate({
			left:-295
		})
	});
	position_icon_spec.on("mouseleave", function () {

		$(this).find(".icon-hover").animate({
			left:36
		})
	});
	//回到顶部
	var upTop=position_icon_same.eq(3);
	upTop.on("click", function () {
		$({upNum:$(window).scrollTop()}).animate({upNum:0},{
			duration:500,
			step: function () {
				$(window).scrollTop(this.upNum);
			}
		})
	});
	//滚动到一定高度出现返回顶部
	var scrollTop;
	$(window).scroll(function(){
		scrollTop=$(window).scrollTop();
		if(scrollTop>=20){
			upTop.css({
				right:0
			})
		}else{
			upTop.css({
				right:-36
			})
		}
	});
	/*页面顶部的三个二维码的动画*/
	var headErweiLi=$(".head-erwei li"),now;
	headErweiLi.hover(function () {
		now=$(this).find(".head-hover-show");
		now.addClass("animated  fadeInDown");
		now.css("display","block");
	}, function () {
		now.removeClass("animated  fadeInDown");
		now.css("display","none");
	})
});