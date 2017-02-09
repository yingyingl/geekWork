/*
* VM:JXU3MjQ4JXU2NzJDJXU1M0Y3JTIwJTNBJTIwMi4yLjIlMEEldTRGRUUldTY1MzkldTY1RjYldTk1RjQlMjAlM0ElMjAyMDE2LzAzLzI1JTBBJXU0RkVFJXU2NTM5JXU0RUJBJXU1NDU4JTIwJTNBJTIwJXU1RjIwJXU2QkM1JTBBJXU0RkVFJXU2NTM5JXU1MTg1JXU1QkI5JTIwJTNBJTIwJXU3OTg1JXU5MDUzJTIwLSUyMFRBU0slMjMzNjElNUIldTUyNEQldTdBRUYldTVGMDAldTUzRDElNUQlMjAldTY4MDcldTUxQzYldTUzMTYldTRFQTcldTU0QzEldTc2ODQldThEMkQldTRFNzAldTk4NzUldTk3NjIldThCQkUldThCQTE=
* */
(function ($) {
    $(function () {
        nav();
    });

    function nav() {
        var url = window.location.href.toLowerCase();
        $('#navbar ul li a').each(function (i, val)
        {
            if (url.indexOf(val.href)>= 0)
            {
                $('#index').addClass("active");
                $('#index').siblings().removeClass("active");
            }
        });
        if (url.indexOf('/group/') >= 0)
        {

            $('#user').siblings().removeClass("active");
            $('#user').addClass("active");

        }
        else if (url.indexOf('/insurancetemplate/') >= 0)
        {
            $('#insurancetemplate').addClass("active");
            $('#insurancetemplate').siblings().removeClass("active");
        }
        else if (url.indexOf('/group_content') >= 0)
        {
            $('#group_content').addClass("active");
            $('#group_content').siblings().removeClass("active");
        }
        else if (url.indexOf('/shop/') >= 0)
        {
            $('#shop').addClass("active");
            $('#shop').siblings().removeClass("active");
        }
        else if (url.indexOf('/user/') >= 0)
        {
            $('#user').addClass("active");
            $('#user').siblings().removeClass("active");
        }
        else if (url.indexOf('/login/') >= 0)
        {
            $('#index').removeClass("active");

        }else if (url.indexOf('/datastatistics/') >= 0)
        {
            $('#user').addClass("active");
            $('#user').siblings().removeClass("active");

        }
        else if (url.indexOf('/policy/') >= 0)
        {
            $('#shop').addClass("active");
            $('#shop').siblings().removeClass("active");

        }
        else if (url.indexOf('/help/') >= 0)
        {
            $('#no1').addClass("active");
            $('#no1').siblings().removeClass("active");

        }
        else if (url.indexOf('/article/') >= 0)
        {
            $('#portal').addClass("active");
            $('#portal').siblings().removeClass("active");

        }
        else if (url.indexOf('/uploaduserinfo/') >= 0)
        {
            $('#user').addClass("active");
            $('#user').siblings().removeClass("active");

        }
        else if (url.indexOf('/financial/') >= 0)
        {
            $('#user').addClass("active");
            $('#user').siblings().removeClass("active");

        }
    };

})(jQuery);