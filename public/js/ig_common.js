//VM: 54mI5pys57yW5Y+377yaMi4zLjQK5L+u5pS55Lq65ZGY77ya5YiY5rWpCuS/ruaUueaXtumXtO+8mjIwMTYvMTAvMTEK5L+u5pS55YaF5a6577yaVEFTSyM4MDUgW+WJjeerr+W8gOWPkV0g5L+u5pS56LSi5Yqh55u45YWz55qE5bGV56S677yM55So5LqO5LyY5YyW55So5oi35L2T6aqM

// To set it up as a global function:
function formatMoney(number, places, symbol, thousand, decimal) {
    number = number || 0;
    places = !isNaN(places = Math.abs(places)) ? places : 2;
    symbol = symbol !== undefined ? symbol : "";
    thousand = thousand || ",";
    decimal = decimal || ".";
    var negative = number < 0 ? "-" : "",
        i = parseInt(number = Math.abs(+number || 0).toFixed(places), 10) + "",
        j = (j = i.length) > 3 ? j % 3 : 0;
    return symbol + negative + (j ? i.substr(0, j) + thousand : "") + i.substr(j).replace(/(\d{3})(?=\d)/g, "$1" + thousand) + (places ? decimal + Math.abs(number - i).toFixed(places).slice(2) : "");
}

function fmoney(s, n){
    n = n > 0 && n <= 5 ? n : 2;
    s = parseFloat((s + '').replace(/[^\d\.-]/g, '')).toFixed(n) + '';
    var l = s.split('.')[0].split('').reverse(),
        r = s.split('.')[1];
    t = '';
    for(i = 0; i < l.length; i ++ ){
        t += l[i] + ((i + 1) % 3 == 0 && (i + 1) != l.length ? ',' :'');
    }
    return t.split('').reverse().join('') + '.' + r;
}

//获取url中的参数
function getUrlParam(name) {
    var reg = new RegExp("(^|&)" + name + "=([^&]*)(&|$)"); //构造一个含有目标参数的正则表达式对象
    var r = window.location.search.substr(1).match(reg);  //匹配目标参数
    if (r != null) return unescape(r[2]); return null; //返回参数值
}