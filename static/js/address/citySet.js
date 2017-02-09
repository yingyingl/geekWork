var ths;
function SelCity(obj, e) {
    ths = obj;
    //var dal = '<div class="_citys"><span title="关闭" id="cColse" >×</span><ul id="_citysheng" class="_citys0"><li class="citySel">省份</li><li>城市</li><li>区县</li></ul><div id="_citys0" class="_citys1"></div><div style="display:none" id="_citys1" class="_citys1"></div><div style="display:none" id="_citys2" class="_citys1"></div></div>';
    var dal = '<div class="_citys"><span title="关闭" id="cColse" >×</span><ul id="_citysheng" class="_citys0"><li class="citySel">省份</li><li>城市</li></ul><div id="_citys0" class="_citys1"></div><div style="display:none" id="_citys1" class="_citys1"></div></div>';
    Iput.show({id: ths, event: e, content: dal, width: "470"});
    $('#cColse').click(function () {
        Iput.colse();
    });

    $('#_citys0').append(Iput.getProv());

    provEvent();

    $('#_citysheng li').click(function () {
        $('#_citysheng li').removeClass('citySel');
        $(this).addClass('citySel');
        var s = $('#_citysheng li').index(this);
        $('._citys1').hide();
        $('._citys1:eq(' + s + ')').show();
    });
    Iput.autoCheck(obj.value, cityEvent);
}

function provEvent () {
    $('#_citys0 a').click(function () {
        $("#_citysheng li").removeClass("citySel");     //点击省之后，将市的tab选中，省的tab取消选中
        $("#_citysheng li:eq(1)").addClass("citySel");
        $('#_citys1 a').remove();   // 删除旧的市的数据
        $('#_citys1').append(Iput.getCity(this));   // 添加新的市数据
        $('._citys1').hide();   // 隐藏省的数据
        $('._citys1:eq(1)').show(); // 显示市的数据
        $('#_citys0 a,#_citys1 a,#_citys2 a').removeClass('AreaS');
        $(this).addClass('AreaS');
        var lev = $(this).data('name');
        ths.value = lev;
        if ($('#' + ths.dataset.prefix + '_prov').length == 0) {
            var hcitys = $('<input>', {
                type: 'hidden',
                name: 'prov',
                'data-name': lev,
                id: ths.dataset.prefix + '_prov',
                val: $(this).data('id')
            });
            $(ths).after(hcitys);
        }
        else {
            $('#' + ths.dataset.prefix + '_prov').val($(this).data('id')).data('name', lev);
        }
        cityEvent();
    });
}

function cityEvent () {
    $("#_citys1 a").click(function () {
        $('#_citys1 a,#_citys2 a').removeClass('AreaS');
        $(this).addClass('AreaS');
        var lev = $(this).data('name');
        if ($('#' + ths.dataset.prefix + '_city').length == 0) {
            var hcitys = $('<input>', {
                type: 'hidden',
                name: 'city',
                'data-name': lev,
                id: ths.dataset.prefix + '_city',
                val: $(this).data('id')
            });
            $(ths).after(hcitys);
        }
        else {
            $('#' + ths.dataset.prefix + '_city').val($(this).data('id')).data('name', lev);
        }
        var bc = $('#' + ths.dataset.prefix + '_prov').data('name');
        ths.value = bc + Iput.confg.separator + $(this).data('name');

        Iput.colse();

        //var ar = getArea($(this));
        //
        //$("#_citys2 a").remove();
        //$("#_citys2").append(ar);
        //$("._citys1").hide();
        //$("._citys1:eq(2)").show();

    });
}


function areaEvent () {

    //$("#_citys2 a").click(function () {
    //    $("#_citys2 a").removeClass("AreaS");
    //    $(this).addClass("AreaS");
    //    var lev = $(this).data("name");
    //    if (document.getElementById("harea") == null) {
    //        var hcitys = $('<input>', {
    //            type: 'hidden',
    //            name: "harea",
    //            "data-name": lev,
    //            id: "harea",
    //            val: $(this).data("id")
    //        });
    //        $(ths).after(hcitys);
    //    }
    //    else {
    //        $("#harea").val(lev);
    //        $("#harea").attr("data-id", $(this).data("id"));
    //    }
    //    var bc = $("#hcity").data('name');
    //    var bp = $("#hproper").data('name');
    //    ths.value = bc + Iput.confg.separator + bp + Iput.confg.separator + $(this).data("name");
    //    Iput.colse();
    //});
}

function getArea(obj) {
    var c = obj.data('id');
    var e = area;
    var f = [];
    var g = '';
    for (var i = 0, plen = e.length; i < plen; i++) {
        if (e[i]['pid'] == parseInt(c)) {
            f.push(e[i]);
        }
    }
    for (var j = 0, clen = f.length; j < clen; j++) {
        g += '<a data-level="1" data-id="' + f[j]['id'] + '" data-name="' + f[j]['name'] + '" title="' + f[j]['name'] + '">' + f[j]['name'] + '</a>'
    }

    $("#_citysheng li").removeClass("citySel");
    $("#_citysheng li:eq(2)").addClass("citySel");
    return g;
}

// *****************************自此添加功能代码*********************************

function destroy(prefix) {
    $('#PREFIX_city,#PREFIX_prov'.replace(/PREFIX/g, prefix)).remove();
}

function setDefault(obj, val) {
    if (val != '') {
        var data = val.split(Iput.confg.separator);

        if (data.length != 2) {
            console.log('data source error ......');
        } else {
            obj.click();
            $('#_citys0 a[data-name=' + data.shift() + ']').click();
            $('#_citys1 a[data-name=' + data + ']').click();
        }
    }
}
