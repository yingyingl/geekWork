/*
* vm:JXU3MjQ4JXU2NzJDJXU1M0Y3JTIwJTNBJTIwMi4yLjIlMEEldTRGRUUldTY1MzkldTY1RjYldTk1RjQlMjAlM0ElMjAyMDE2LzAzLzI0JTBBJXU0RkVFJXU2NTM5JXU0RUJBJXU1NDU4JTIwJTNBJTIwJXU1RjIwJXU2QkM1JTBBJXU0RkVFJXU2NTM5JXU1MTg1JXU1QkI5JTIwJTNBJTIwJXU3OTg1JXU5MDUzJTIwLSUyMFRBU0slMjMzNjElNUIldTUyNEQldTdBRUYldTVGMDAldTUzRDElNUQlMjAldTY4MDcldTUxQzYldTUzMTYldTRFQTcldTU0QzEldTc2ODQldThEMkQldTRFNzAldTk4NzUldTk3NjIldThCQkUldThCQTE=
* */
$(function () {
    /*产品购买鼠标事件*/
    /*1.mouseenter,leave*/
    var $purchaseItemObj=$('.purchase-item');
    $purchaseItemObj.on('mouseenter', function () {
        $(this).css({
            border:'1px solid #ed5565',
            boxShadow:'2px 2px 10px #ccc'
        });
    });
    $purchaseItemObj.on('mouseleave', function () {
        $(this).css({
            border:'1px solid #e5e5e5',
            boxShadow:'none'
        });
    });
    /*2.缴费按钮*/
    var $btnObj=$('#purchase').find('.btn');
    $btnObj.on('click', function () {
        var $thisBtn=$(this).parent('.btn-group').find('.btn');
        $thisBtn.removeClass('active');
        $(this).addClass('active');
    });
    /*客户案例*/
    var last=0;
    $('#solutions li').hover(function(){
        $('#solutions .solutit2').stop().animate({
            height:'0'

        },600);
        if(last==$(this).attr('class')){
            if($(this).find('.solutit2').css('height')!='5px'){
                $(this).find('.solutit2').stop().animate({
                    height:'0'

                },600);
            }else {
                $(this).find('.solutit2').stop().animate({
                    height:'380'

                },600);
            }


        }else {
            $(this).find('.solutit2').stop().animate({
                height:'380'

            },600);

        }
        last=$(this).attr('class');
    });
});
