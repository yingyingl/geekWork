/*
 * 
 * @param {type} insuranceName  方案名称
 * @param {type} group_id   企业id
 * @param {type} id_number   身份证号
 * @param {type} root   根路径
 * @returns {Boolean}   返回值
 */
function check_age_limit_ajax(insurance,group_id,id_number,root){
    var flag=false;
    $.ajax
    ({
        type: "post",
        url: root+"/check/check_age_match_ajax/" + Math.random(),
        data: {"insurance": insurance,"group_id":group_id,"id_number":id_number},
        dataType: 'json',
        cache: false,
        async: false,
        success: function (response) {
            //alert(response);exit;
            if (response == 1) {
                flag=true;
            }
            else
            {
                flag=false;
            }
        },
        error: function (XMLHttpRequest, textStatus, errorThrown) {
            //alert(textStatus);
            //alert(XMLHttpRequest.status);
            //alert(XMLHttpRequest.readyState);
            //alert(XMLHttpRequest.responseText);
            //alert(errorThrown);
        }
    }); //end ajax
    return flag;
}

/*找回密码的修改动作ajax*/
function find_password_do_ajax(uid,password,repeat,root)
{
    var flag=false;
    $.ajax
    ({
        type: "post",
        url: root+"/Login/find_password_do_ajax/" + Math.random(),
        data: {"uid":uid,"password":password,"repeat":repeat},
        dataType: 'json',
        cache: false,
        async: false,
        success: function (response) {
            //alert(response);exit;
            if (response ==1) {
                flag=true;
            }
            else
            {
                flag=false;
            }
        },
        error: function (XMLHttpRequest, textStatus, errorThrown) {
            //alert(textStatus);
            //alert(XMLHttpRequest.status);
            //alert(XMLHttpRequest.readyState);
            //alert(XMLHttpRequest.responseText);
            //alert(errorThrown);
        }
    }); //end ajax
    return flag;
}

/*根据说如内容，检查是否满足可以找回密码的状态*/
function check_can_update_password_ajax(uid,realname,cert_number,cert_type,mobile,mobile_verify,root)
{
    var flag=false;
    $.ajax
    ({
        type: "post",
        url: root+"/Login/forget_pw3_ajax/" + Math.random(),
        data: {"uid":uid,"realname":realname,"cert_number":cert_number,"cert_type":cert_type,"mobile":mobile,"mobile_verify":mobile_verify},
        dataType: 'json',
        cache: false,
        async: false,
        success: function (response) {
            //alert(response);exit;
            if (response ==1) {
                flag=true;
            }
            else
            {
                flag=false;
            }
        },
        error: function (XMLHttpRequest, textStatus, errorThrown) {
            //alert(textStatus);
            //alert(XMLHttpRequest.status);
            //alert(XMLHttpRequest.readyState);
            alert(XMLHttpRequest.responseText);
            //alert(errorThrown);
        }
    }); //end ajax
    return flag;
}

/*根据手机号查询用户信息*/
function get_userdata_by_mobile(mobile,root)
{
    var userData='';
    $.ajax
    ({
        type: "post",
        url: root+"/check/get_userdata_by_mobile_ajax/" + Math.random(),
        data: {"mobile":mobile},
        dataType: 'json',
        cache: false,
        async: false,
        success: function (response) {
            userData=response;
        },
        error: function (XMLHttpRequest, textStatus, errorThrown) {
            //alert(textStatus);
            //alert(XMLHttpRequest.status);
            //alert(XMLHttpRequest.readyState);
            //alert(XMLHttpRequest.responseText);
            //alert(errorThrown);
        }
    }); //end ajax
    return userData;
}

/*
* 注册的ajax方法，用在手机端
*
* */
function mobile_reg_ajax(username,mobile,verify_mob,email,password,repeat,root)
{
    var flag=false;
    $.ajax
    ({
        type: "post",
        url: root+"/Login/to_reg_ajax/" + Math.random(),
        data: {"username": username,"mobile":mobile,"verify_mob":verify_mob,"email":email,"password":password,"repeat":repeat},
        dataType: 'json',
        cache: false,
        async: false,
        success: function (response) {
            //alert(response);exit;
            if (response != 0) {
                flag=true;
            }
            else
            {
                flag=false;
            }
        },
        error: function (XMLHttpRequest, textStatus, errorThrown) {
            //alert(textStatus);
            //alert(XMLHttpRequest.status);
            //alert(XMLHttpRequest.readyState);
            //alert(XMLHttpRequest.responseText);
            //alert(errorThrown);
        }
    }); //end ajax
    return flag;
}

/*
 * 通过用户米和密码检查用户是否存在
 *
 * */
function check_user_password_match_ajax(user,password,root)
{
    var flag=false;
    $.ajax
    ({
        type: "post",
        url: root+"/check/check_user_password_match_ajax/" + Math.random(),
        data: {"user": user,"password":password},
        dataType: 'json',
        cache: false,
        async: false,
        success: function (response) {
            if (response != 0) {
                flag=true;
            }
            else
            {
                flag=false;
            }
        },
        error: function (XMLHttpRequest, textStatus, errorThrown) {
            //alert(textStatus);
            //alert(XMLHttpRequest.status);
            //alert(XMLHttpRequest.readyState);
            //alert(XMLHttpRequest.responseText);
            //alert(errorThrown);
        }
    }); //end ajax
    return flag;
}


/*
* 检查用户登录名是否存在
*
* */
function check_login_name_exist_ajax(user,root)
{
    var flag=false;
    $.ajax
    ({
        type: "post",
        url: root+"/check/check_login_name_exist_ajax/" + Math.random(),
        data: {"user": user},
        dataType: 'json',
        cache: false,
        async: false,
        success: function (response) {
            //alert(response);exit;
            if (response != 0) {
                flag=true;
            }
            else
            {
                flag=false;
            }
        },
        error: function (XMLHttpRequest, textStatus, errorThrown) {
            //alert(textStatus);
            //alert(XMLHttpRequest.status);
            //alert(XMLHttpRequest.readyState);
            //alert(XMLHttpRequest.responseText);
            //alert(errorThrown);
        }
    }); //end ajax
    return flag;
}


/*
* 检测方案是否为推广赠送方案
*
* */
function check_insurance_is_market_free_ajax(eid,root)
{
    var flag=false;
    $.ajax
    ({
        type: "post",
        url: root+"/check/check_insurance_is_market_free_ajax/" + Math.random(),
        data: {"eid": eid},
        dataType: 'json',
        cache: false,
        async: false,
        success: function (response) {
            //alert(response);exit;
            if (response == 1) {
                flag=true;
            }
            else
            {
                flag=false;
            }
        },
        error: function (XMLHttpRequest, textStatus, errorThrown) {
            //alert(textStatus);
            //alert(XMLHttpRequest.status);
            //alert(XMLHttpRequest.readyState);
            //alert(XMLHttpRequest.responseText);
            //alert(errorThrown);
        }
    }); //end ajax
    return flag;
}



/*
* 检查用户的真实姓名是否和数据库中的一致
* */
function check_realname_match_user_ajax(realname,uid,root)
{
    var flag=false;
    $.ajax
    ({
        type: "post",
        url: root+"/check/check_realname_match_user_ajax/" + Math.random(),
        data: {"realname": realname,"uid":uid},
        dataType: 'json',
        cache: false,
        async: false,
        success: function (response) {
            //alert(response);exit;
            if (response == 1) {
                flag=true;
            }
            else
            {
                flag=false;
            }
        },
        error: function (XMLHttpRequest, textStatus, errorThrown) {
            //alert(textStatus);
            //alert(XMLHttpRequest.status);
            //alert(XMLHttpRequest.readyState);
            //alert(XMLHttpRequest.responseText);
            //alert(errorThrown);
        }
    }); //end ajax
    return flag;
}
function check_id_number_match_user_ajax(id_number,uid,root)
{
    var flag=false;
    $.ajax
    ({
        type: "post",
        url: root+"/check/check_id_number_match_user_ajax/" + Math.random(),
        data: {"id_number": id_number,"uid":uid},
        dataType: 'json',
        cache: false,
        async: false,
        success: function (response) {
            //alert(response);exit;
            if (response == 1) {
                flag=true;
            }
            else
            {
                flag=false;
            }
        },
        error: function (XMLHttpRequest, textStatus, errorThrown) {
            //alert(textStatus);
            //alert(XMLHttpRequest.status);
            //alert(XMLHttpRequest.readyState);
            //alert(XMLHttpRequest.responseText);
            //alert(errorThrown);
        }
    }); //end ajax
    return flag;
}
function check_passport_match_user_ajax(passport,uid,root)
{
    var flag=false;
    $.ajax
    ({
        type: "post",
        url: root+"/check/check_passport_match_user_ajax/" + Math.random(),
        data: {"passport": passport,"uid":uid},
        dataType: 'json',
        cache: false,
        async: false,
        success: function (response) {
            //alert(response);exit;
            if (response == 1) {
                flag=true;
            }
            else
            {
                flag=false;
            }
        },
        error: function (XMLHttpRequest, textStatus, errorThrown) {
            //alert(textStatus);
            //alert(XMLHttpRequest.status);
            //alert(XMLHttpRequest.readyState);
            //alert(XMLHttpRequest.responseText);
            //alert(errorThrown);
        }
    }); //end ajax
    return flag;
}


/*
* 根据用户名得到绑定的手机号* */
function get_user_mobile_by_username(user,root)
{
    var mobile='';
    $.ajax
    ({
        type: "post",
        url: root+"/check/check_user_has_mobile_ajax/" + Math.random(),
        data: {"username": user},
        dataType: 'json',
        cache: false,
        async: false,
        success: function (response) {
            //alert(response);exit;
            if (response != 0) {
                mobile=response;
            }
            else
            {
                mobile='';
            }
        },
        error: function (XMLHttpRequest, textStatus, errorThrown) {
            //alert(textStatus);
            //alert(XMLHttpRequest.status);
            //alert(XMLHttpRequest.readyState);
            //alert(XMLHttpRequest.responseText);
            //alert(errorThrown);
        }
    }); //end ajax
    return mobile;
}


/*
* 根据用户名检查是否绑定了手机号
* */
function check_user_has_mobile_ajax(user,root)
{
    var flag=false;
    $.ajax
    ({
        type: "post",
        url: root+"/check/check_user_has_mobile_ajax/" + Math.random(),
        data: {"username": user},
        dataType: 'json',
        cache: false,
        async: false,
        success: function (response) {
            //alert(response);exit;
            if (response != 0) {
                flag=true;
            }
            else
            {
                flag=false;
            }
        },
        error: function (XMLHttpRequest, textStatus, errorThrown) {
            //alert(textStatus);
            //alert(XMLHttpRequest.status);
            //alert(XMLHttpRequest.readyState);
            //alert(XMLHttpRequest.responseText);
            //alert(errorThrown);
        }
    }); //end ajax
    return flag;
}


/*检查护照号码是否可以保存*/
function check_passport_can_save(passport,root)
{
    var flag=0;
    if(check_passport_format(passport)==1)
    {
        if(!check_passport_exist_ajax(passport,root))
        {
            flag=1;
        }
        else
        {
            flag=2;
        }
    }
    else
    {
        flag=0;
    }
    return flag;
}

/*检查护照是否已经被注册*/
function check_passport_exist_ajax(passport,root)
{
    var flag=false;
    $.ajax
    ({
        type: "post",
        url: root+"/check/check_passport_exist_ajax/" + Math.random(),
        data: {"passport": passport},
        dataType: 'json',
        cache: false,
        async: false,
        success: function (response) {
            //alert(response);exit;
            if (response != 0) {
                flag=true;
            }
            else
            {
                flag=false;
            }
        },
        error: function (XMLHttpRequest, textStatus, errorThrown) {
            //alert(textStatus);
            //alert(XMLHttpRequest.status);
            //alert(XMLHttpRequest.readyState);
            //alert(XMLHttpRequest.responseText);
            //alert(errorThrown);
        }
    }); //end ajax
    return flag;
}


/*检查用户护照格式
* 0：为空
* 1：正确
* 2：格式错误
* */
function check_passport_format(passport)
{
    var matchReg=/^[a-zA-Z0-9]{9}$/;
    if(passport.length==0)
    {
        return 0;
    }
    else if(matchReg.test(passport))
    {
        return 1;
    }
    else
    {
        return 2;
    }
}


/*更新用户密码*/
function update_password(old_password,password,repeat,root)
{
    var flag=false;
    $.ajax
    ({
        type: "post",
        url: root+"/user/update_user_password_ajax/" + Math.random(),
        data: {"old_password": old_password,"password":password,"repeat":repeat},
        dataType: 'json',
        cache: false,
        async: false,
        success: function (response) {
            //alert(response);exit;
            if (response == 1) {
                flag=true;
            }
            else
            {
                flag=false;
            }
        },
        error: function (XMLHttpRequest, textStatus, errorThrown) {
            //alert(textStatus);
            //alert(XMLHttpRequest.status);
            //alert(XMLHttpRequest.readyState);
            //alert(XMLHttpRequest.responseText);
            //alert(errorThrown);
        }
    }); //end ajax
    return flag;
}

/*更新用户名*/
function update_username(username,root)
{
    var flag=false;
    $.ajax
    ({
        type: "post",
        url: root+"/user/update_user_info_ajax/" + Math.random(),
        data: {"username": username},
        dataType: 'json',
        cache: false,
        async: false,
        success: function (response) {
            //alert(response);exit;
            if (response == 1) {
                flag=true;
            }
            else
            {
                flag=false;
            }
        },
        error: function (XMLHttpRequest, textStatus, errorThrown) {
            //alert(textStatus);
            //alert(XMLHttpRequest.status);
            //alert(XMLHttpRequest.readyState);
            //alert(XMLHttpRequest.responseText);
            //alert(errorThrown);
        }
    }); //end ajax
    return flag;
}
/*更新手机号*/
function update_mobile(mobile,verifyMob,root)
{
    var flag=false;
    $.ajax
    ({
        type: "post",
        url: root+"/user/update_user_info_ajax/" + Math.random(),
        data: {"mobile": mobile,"verify_mob":verifyMob},
        dataType: 'json',
        cache: false,
        async: false,
        success: function (response) {
            //alert(response);exit;
            if (response == 1) {
                flag=true;
            }
            else
            {
                flag=false;
            }
        },
        error: function (XMLHttpRequest, textStatus, errorThrown) {
            //alert(textStatus);
            //alert(XMLHttpRequest.status);
            //alert(XMLHttpRequest.readyState);
            //alert(XMLHttpRequest.responseText);
            //alert(errorThrown);
        }
    }); //end ajax
    return flag;
}

/*更新邮箱*/
function update_email(email,root)
{
    var flag=false;
    $.ajax
    ({
        type: "post",
        url: root+"/user/update_user_info_ajax/" + Math.random(),
        data: {"email": email},
        dataType: 'json',
        cache: false,
        async: false,
        success: function (response) {
            //alert(response);exit;
            if (response == 1) {
                flag=true;
            }
            else
            {
                flag=false;
            }
        },
        error: function (XMLHttpRequest, textStatus, errorThrown) {
            //alert(textStatus);
            //alert(XMLHttpRequest.status);
            //alert(XMLHttpRequest.readyState);
            //alert(XMLHttpRequest.responseText);
            //alert(errorThrown);
        }
    }); //end ajax
    return flag;
}
/*更新address和zip*/
function update_address_and_zip(address,zip,root)
{
    var flag=false;
    $.ajax
    ({
        type: "post",
        url: root+"/user/update_user_info_ajax/" + Math.random(),
        data: {"address": address,"zip":zip},
        dataType: 'json',
        cache: false,
        async: false,
        success: function (response) {
            //alert(response);exit;
            if (response == 1) {
                flag=true;
            }
            else
            {
                flag=false;
            }
        },
        error: function (XMLHttpRequest, textStatus, errorThrown) {
            //alert(textStatus);
            //alert(XMLHttpRequest.status);
            //alert(XMLHttpRequest.readyState);
            //alert(XMLHttpRequest.responseText);
            //alert(errorThrown);
        }
    }); //end ajax
    return flag;
}
/*更新地址*/
function update_address(address,root)
{
    var flag=false;
    $.ajax
    ({
        type: "post",
        url: root+"/user/update_user_info_ajax/" + Math.random(),
        data: {"address": address},
        dataType: 'json',
        cache: false,
        async: false,
        success: function (response) {
            //alert(response);exit;
            if (response == 1) {
                flag=true;
            }
            else
            {
                flag=false;
            }
        },
        error: function (XMLHttpRequest, textStatus, errorThrown) {
            //alert(textStatus);
            //alert(XMLHttpRequest.status);
            //alert(XMLHttpRequest.readyState);
            //alert(XMLHttpRequest.responseText);
            //alert(errorThrown);
        }
    }); //end ajax
    return flag;
}

/*更新邮编*/
function update_zip(zip,root)
{
    var flag=false;
    $.ajax
    ({
        type: "post",
        url: root+"/user/update_user_info_ajax/" + Math.random(),
        data: {"zip": zip},
        dataType: 'json',
        cache: false,
        async: false,
        success: function (response) {
            //alert(response);exit;
            if (response == 1) {
                flag=true;
            }
            else
            {
                flag=false;
            }
        },
        error: function (XMLHttpRequest, textStatus, errorThrown) {
            //alert(textStatus);
            //alert(XMLHttpRequest.status);
            //alert(XMLHttpRequest.readyState);
            //alert(XMLHttpRequest.responseText);
            //alert(errorThrown);
        }
    }); //end ajax
    return flag;
}


/*更新同步到uc*/
function uc_update_user(email,password,root)
{

    var flag=false;
    $.ajax
    ({
        type: "post",
        url: root+"/user/uc_user_update_ajax/" + Math.random(),
        data: {"email": email,"password":password},
        dataType: 'json',
        cache: false,
        async: false,
        success: function (response) {
            //alert(response);exit;
            flag=true;
        },
        error: function (XMLHttpRequest, textStatus, errorThrown) {
            //alert(textStatus);
            //alert(XMLHttpRequest.status);
            //alert(XMLHttpRequest.readyState);
            //alert(XMLHttpRequest.responseText);
            //alert(errorThrown);
        }
    }); //end ajax
    return flag;
}


/*检查用户名是否可以用来进行更新*/
function check_username_can_save(username,root)
{
    var flag=0;
    if(check_username_format(username,false)==1)
    {
        if(!check_username_exist_ajax(username,root))
        {
            flag=1;
        }
        else
        {
            flag=2;
        }
    }
    else
    {
        flag=0;
    }
    return flag;
}


/*检测手机是否需要更新
* 0:验证码不匹配
* 1:手机可以更新
* 2:手机号被注册
* 3:手机号格式错误
* */
function check_mobile_can_update(mobile,verifyMob,root)
{
    var flag=0;
    if(check_mobile_format(mobile,false)==1)//格式正确
    {
        if(!check_mobile_exist_ajax(mobile,root))//手机号没有被注册
        {
            if(check_verify_mob(mobile,verifyMob,root)==1)//验证码匹配
            {
                flag=1;
            }
            else
            {
                flag=0;
            }
        }
        else
        {
            flag=2;
        }
    }
    else
    {
        flag=3;
    }
    return flag;
}
/**
 * 检查除本公司外邮件地址是否存在
 */
function check_email_not_group_is_exist(group_id,email,root){
    var flag=false;
    $.ajax
    ({
        type: "post",
        url: root+"/check/check_email_not_group_is_exist/" + Math.random(),
        data: {"group_id": group_id,'email':email},
        dataType: 'json',
        cache: false,
        async: false,
        success: function (response) {
            //alert(response);exit;
            if (response == 1) {
                flag=true;
            }
            else
            {
                flag=false;
            }
        },
        error: function (XMLHttpRequest, textStatus, errorThrown) {
            //alert(textStatus);
            //alert(XMLHttpRequest.status);
            //alert(XMLHttpRequest.readyState);
            //alert(XMLHttpRequest.responseText);
            //alert(errorThrown);
        }
    }); //end ajax
    return flag;
}

/*检测邮箱是否需要更新
* 0:格式错误
* 1:可以更新
* 2:邮箱已被注册
* */
function check_email_can_update(email,root)
{
    var flag=0;
    if(check_email_format(email)==1)
    {
        if(!check_email_exist_ajax(email,root))
        {
            flag=1;
        }
        else
        {
            flag=2;
        }
    }
    else
    {
        flag=0;
    }
    return flag;
}




/*检查邮编格式
* 邮编为空，返回0
* 邮编正确，返回1
* 邮编错误，返回2
* */
function check_zip_format(zip)
{
    var zipReg=/^[0-9]{6}$/;
    if (zip.length==0)
    {
        return 0;
    }
    else if (zipReg.test(zip))
    {
        return 1;
    }
    else
    {
        return 2;
    }
}


//检查字符串是否包含指定省市名
function check_address_contain_province(str)
{
    var flag=false;
    var area=new Array("北京","天津","河北","山西","内蒙古", "辽宁","吉林","黑龙江","上海","江苏","浙江","安徽","福建","江西","山东","河南","湖北","湖南","广东","广西","海南","重庆","四川","贵州","云南","西藏","陕西","甘肃","青海","宁夏","新疆","深圳");
    for ( w in area)
    {
        if(str.indexOf(area[w])>=0)
        {
            flag=true;
            break;
        }
    }
    return flag;
}


/*检查真是姓名的格式
*姓名为空：返回0
*姓名格式正确：返回1
*姓名格式错误：返回2
* */
function check_realname_format(name)
{
    var realnameReg=/^[\u4e00-\u9fa5·]{2,15}$/;
    if(name.length==0)
    {
        return 0;
    }
    else if(realnameReg.test(name))
    {
        return 1;
    }
    else
    {
        return 2;
    }
}

function check_realnameE_format(name)
{
    //var realnameReg=/^([a-z]|[A-Z]|[\u4e00-\u9fa5]|_)([a-z]|[A-Z]|[\u4e00-\u9fa5]|[0-9]|_|-){2,17}$/;

    var realnameReg1=/^([\u4e00-\u9fa5·]){2,15}$/;
    var realnameReg2=/^([a-zA-Z]){3,15}$/;
    if(name.length==0)
    {
        return 0;
    }
    else if(realnameReg1.test(name)||realnameReg2.test(name))
    {
        return 1;
    }
    else
    {
        return 2;
    }
}
/*检查id是否可用
* 0：格式错误
* 1：可用
* 2：已经被注册
* */
function check_id_number_can_save(number,root)
{
    var flag=0;
    if(check_id_number_format(number))
    {
        if(!check_id_number_exist_ajax(number,root))
        {
            flag=1;
        }
        else
        {
            flag=2;
        }
    }
    else
    {
        flag=0;
    }
    return flag;
}


/*检查身份证号是否存在*/
function check_id_number_exist_ajax(number,root)
{
    var flag=false;
    $.ajax
    ({
        type: "post",
        url: root+"/check/check_id_number_exists_ajax/" + Math.random(),
        data: {"id_number": number},
        dataType: 'json',
        cache: false,
        async: false,
        success: function (response) {
            //alert(response);exit;
            if (response != 0) {
                flag=true;
            }
            else
            {
                flag=false;
            }
        },
        error: function (XMLHttpRequest, textStatus, errorThrown) {
            //alert(textStatus);
            //alert(XMLHttpRequest.status);
            //alert(XMLHttpRequest.readyState);
            //alert(XMLHttpRequest.responseText);
            //alert(errorThrown);
        }
    }); //end ajax
    return flag;
}

/*检查number是否符合身份证格式
*符合，返回true
*不符合，返回false
* */
function check_id_number_format(number)
{
    number=number.toUpperCase();
    var area={
        11: "北京",
        12: "天津",
        13: "河北",
        14: "山西",
        15: "内蒙古",
        21: "辽宁",
        22: "吉林",
        23: "黑龙江",
        31: "上海",
        32: "江苏",
        33: "浙江",
        34: "安徽",
        35: "福建",
        36: "江西",
        37: "山东",
        41: "河南",
        42: "湖北",
        43: "湖南",
        44: "广东",
        45: "广西",
        46: "海南",
        50: "重庆",
        51: "四川",
        52: "贵州",
        53: "云南",
        54: "西藏",
        61: "陕西",
        62: "甘肃",
        63: "青海",
        64: "宁夏",
        65: "新疆",
        71: "台湾",
        81: "香港",
        82: "澳门",
        91: "国外"
    };
    var idcard, Y, JYM;
    var S, M;
    var idcard_array=new Array();
    idcard_array=number.split("");
    //地区检验
    if (area[parseInt(number.substr(0, 2))]==null) return false;
    //身份号码位数及格式检验
    switch (number.length)
    {
        case 15:
            return false;
            //if (!isSelf) return false;
            if ((parseInt(number.substr(6, 2)) + 1900) % 4==0 || ((parseInt(number.substr(6, 2)) + 1900) % 100==0
                && (parseInt(number.substr(6, 2)) + 1900) % 4==0))
            {
                //测试出生日期的合法性
                ereg=/^[1-9][0-9]{5}[0-9]{2}((01|03|05|07|08|10|12)(0[1-9]|[1-2][0-9]|3[0-1])|(04|06|09|11)(0[1-9]|[1-2][0-9]|30)|02(0[1-9]|[1-2][0-9]))[0-9]{3}$/;
            } else
            {
                //测试出生日期的合法性
                ereg=/^[1-9][0-9]{5}[0-9]{2}((01|03|05|07|08|10|12)(0[1-9]|[1-2][0-9]|3[0-1])|(04|06|09|11)(0[1-9]|[1-2][0-9]|30)|02(0[1-9]|1[0-9]|2[0-8]))[0-9]{3}$/;
            }
            if (ereg.test(number))
            {
                return true;
            } else
            {
                return false;
            }
            break;
        case 18:
            /*18位身份号码检测
             出生日期的合法性检查
             闰年月:
             ((01|03|05|07|08|10|12)(0[1-9]|[1-2][0-9]|3[0-1])|(04|06|09|11)(0[1-9]|[1-2][0-9]|30)|02(0[1-9]|[1-2][0-9]))
             平年月日:
             ((01|03|05|07|08|10|12)(0[1-9]|[1-2][0-9]|3[0-1])|(04|06|09|11)(0[1-9]|[1-2][0-9]|30)|02(0[1-9]|1[0-9]|2[0-8]))*/
            if (parseInt(number.substr(6, 4)) % 4==0 || (parseInt(number.substr(6, 4)) % 100==0
                && parseInt(number.substr(6, 4)) % 4==0))
            {
                //闰年出生日期的合法性正则表达式
                ereg=/^[1-9][0-9]{5}(19|20)[0-9]{2}((01|03|05|07|08|10|12)(0[1-9]|[1-2][0-9]|3[0-1])|(04|06|09|11)(0[1-9]|[1-2][0-9]|30)|02(0[1-9]|[1-2][0-9]))[0-9]{3}[0-9Xx]$/;
            } else
            {
                //平年出生日期的合法性正则表达式
                ereg=/^[1-9][0-9]{5}(19|20)[0-9]{2}((01|03|05|07|08|10|12)(0[1-9]|[1-2][0-9]|3[0-1])|(04|06|09|11)(0[1-9]|[1-2][0-9]|30)|02(0[1-9]|1[0-9]|2[0-8]))[0-9]{3}[0-9Xx]$/;
            }
            //测试出生日期的合法性
            if (ereg.test(number))
            {
                //计算校验位
                S=(parseInt(idcard_array[0]) + parseInt(idcard_array[10])) * 7 + (parseInt(idcard_array[1])
                + parseInt(idcard_array[11])) * 9 + (parseInt(idcard_array[2]) + parseInt(idcard_array[12])) * 10
                + (parseInt(idcard_array[3]) + parseInt(idcard_array[13])) * 5 + (parseInt(idcard_array[4])
                + parseInt(idcard_array[14])) * 8 + (parseInt(idcard_array[5]) + parseInt(idcard_array[15])) * 4
                + (parseInt(idcard_array[6]) + parseInt(idcard_array[16])) * 2 + parseInt(idcard_array[7]) * 1
                + parseInt(idcard_array[8]) * 6 + parseInt(idcard_array[9]) * 3;
                Y=S % 11;
                M="F";
                JYM="10X98765432";
                M=JYM.substr(Y, 1); //判断校验位
                if (M==idcard_array[17]) return true; //检测ID的校验位
                else return false;
            } else return false;
            break;
        default:
            return false;
            break;
    }
}

/*检查email格式
* 长度为0，返回0
* 格式正确，返回1
* 格式错误，返回2
* */
function check_email_format(email)
{
    //var emailReg=/^([a-zA-Z0-9]+[_|\_|\.]?)*[a-zA-Z0-9]+@([a-zA-Z0-9]+[_|\_|\.]?)*[a-zA-Z0-9]+\.[a-zA-Z]{2,3}$/;
    var emailReg=/^([a-zA-Z0-9\-_.+]+)@([a-zA-Z0-9\-]+[.][a-zA-Z0-9\-.]+)$/;
    var len = email.length;
    if(len==0)
    {
        return 0;
    }
    else if(emailReg.test(email) && len<=50)
    {
        return 1;
    }
    else
    {
        return 2;
    }
}
function check_email_exist_ajax(email,root)
{
    var flag=false;
    $.ajax({
        type: "post",
        url: root+"/check/check_email_exists_ajax/" + Math.random(),
        data: {"email": email},
        dataType: "json",
        cache: false,
        async: false,
        success: function (response) {
            if (response == 1)
            {
                flag=true;
            }
            else
            {
                flag=false;
            }
        },
        error: function (XMLHttpRequest, textStatus, errorThrown)
        {
            flag=false;
        }
    });
    return flag;
}
//查询企业用户名称是否存在
function check_realname_exist_ajax(realname,root)
{
    var flag=false;
    $.ajax({
        type: "post",
        url: root+"/check/checkGrouprealnameExistAjax/" + Math.random(),
        data: {"realname": realname},
        dataType: "json",
        cache: false,
        async: false,
        success: function (response) {
            if ( 0 == response)
            {
                flag=true;
            }
            else
            {
                flag=false;
            }
        },
        error: function (XMLHttpRequest, textStatus, errorThrown)
        {
            flag=false;
        }
    });
    return flag;
}

/*检查手机号码格式是否正确
*手机为空：返回0
*手机格式正确：返回1
*手机格式错误：返回2
* */
function check_mobile_format(mobile,can_empty)
{
    var mobReg=/^1[3-8][0-9]{9}$/;
    if (mobile.length==0)
    {
        if(can_empty)
        {
            return 1;
        }
        else
        {
            return 0;
        }
    }
    else if (mobReg.test(mobile))
    {
        return 1;
    }
    else
    {
        return 2;
    }
}

function check_mobile_exist_ajax(mobile,root,level)
{
    var flag=false;
    $.ajax({
        type: "post",
        url: root+"/check/check_mobile_exists_ajax/" + Math.random(),
        data: {"mobile": mobile,'level':level},
        dataType: "json",
        cache: false,
        async: false,
        success: function (response) {
            //alert(response);exit;
            if (response == 1)
            {
                flag=true;
            }
            else
            {
                flag=false;
            }
        },
        error: function (XMLHttpRequest, textStatus, errorThrown)
        {
            //alert(textStatus);
            // alert(XMLHttpRequest.status);
            // alert(XMLHttpRequest.readyState);
            // alert(XMLHttpRequest.responseText);
            // alert(errorThrown);
            flag=false;
        }
    });
    return flag;
}
/*获得手机验证码*/
function set_mobile_verify_mob(mobile,root)
{
    var flag=false;
    $.ajax({
        type: "post",
        url: root+"/verify/set_user_mob_verify_ajax/" + Math.random(),
        data: {"mobile": mobile},
        dataType: "json",
        cache: false,
        async: false,
        success: function (response) {
            //alert(response);exit;
            if (response == 1)
            {
                flag=true;
            }
            else
            {
                flag=false;
            }
        },
        error: function (XMLHttpRequest, textStatus, errorThrown)
        {
            //alert(textStatus);
            // alert(XMLHttpRequest.status);
            // alert(XMLHttpRequest.readyState);
            // alert(XMLHttpRequest.responseText);
            // alert(errorThrown);
            flag=false;
        }
    });
    return flag;
}
/*删除对应手机号的验证码*
* */
function del_mobile_verify_mob(mobile,root)
{
    var flag=false;
    $.ajax({
        type: "post",
        url: root+"/verify/del_mob_verify_ajax/" + Math.random(),
        data: {"mobile": mobile},
        dataType: "json",
        cache: false,
        async: false,
        success: function (response) {
            //alert(response);exit;
            if (response == 1)
            {
                flag=true;
            }
            else
            {
                flag=false;
            }
        },
        error: function (XMLHttpRequest, textStatus, errorThrown)
        {
            //alert(textStatus);
            // alert(XMLHttpRequest.status);
            // alert(XMLHttpRequest.readyState);
            // alert(XMLHttpRequest.responseText);
            // alert(errorThrown);
            flag=false;
        }
    });
    return flag;
}

/*检查手机验证码是否正确
* return: -1手机号格式错误；0验证码不匹配；1验证码正确；2验证码格式错误
* */
function check_verify_mob(mobile,verify_mob,root)
{
    var flag=0;
    if(check_mobile_format(mobile,false)!=1)
    {
        flag = -1;//手机号码格式错误
    }
    var verify_mob_Reg=/^[0-9]{4}$/;
    if(verify_mob_Reg.test(verify_mob))
    {
        $.ajax
        ({
            type:"post",
            url:root+"/verify/check_mob_verify_ajax/"+Math.random(),
            data:{"mobile":mobile,"verify_mob":verify_mob},
            dataType:"json",
            cache:false,
            async:false,
            success:function(response)
            {
                if(response==1)
                {
                    flag=1;
                }
                else
                {
                    flag=0;
                }
            },
            error:function(XMLHttpRequest, textStatus, errorThrown)
            {
                flag=0;
                //alert(textStatus);
                //alert(XMLHttpRequest.status);
                //alert(XMLHttpRequest.readyState);
                //alert(XMLHttpRequest.responseText);
                //alert(errorThrown);
            }
        });//end ajax
    }
    else
    {
        flag=2;
    }

    return flag;
}

/*检查一个数据在数组中出现的次数*/
function check_value_repeat_in_array(id, ids, eid, eids, allowMulti)
{
    var idKeys = findAll(ids, id);
    if(allowMulti){
        var nameKeys = findAll(eids, eid);
        return intersect(idKeys, nameKeys);
    }else{
        return idKeys;
    }
}

function intersect(a, b){
    var ai=0, bi=0;
    var result = [];

    while( ai < a.length && bi < b.length )
    {
        if(a[ai] < b[bi] )
        {
            ai++;
        }else if(a[ai] > b[bi] ){
            bi++;
        }else{
            result.push(a[ai]);
            ai++;
            bi++;
        }
    }

    return result;
}
/**
 * 返回符合值的keys
 * @param s 数据源
 * @param v 查找的值
 * @param pos 开始查找的位置
 * @returns {Array}
 */
function findAll(s, v, pos){
    if(typeof pos == 'undefined'||pos==''||pos==null){
        pos = 0;
    }
    var indexs = [];
    while(pos != -1){
        pos = s.indexOf(v, pos);
        if(pos != -1){
            indexs.push(pos);
            pos += 1;
        }
    }
    return indexs;
}

/*根据方案名称检查方案是否存在于公司内，返回方案的eid
* 如果返回的eid为0，表示不存在
* */
function check_insurance_exists_ajax(insurance_name,group_id,root)
{
    var eid=0;
    $.ajax
    ({
        type: "post",
        url: root+"/check/check_insurance_exists_ajax/"+Math.random(),
        data: {"insurance_name":insurance_name, "group_id":group_id},
        dataType:'json',
        cache:false,
        async:false,
        success: function (response)
        {
            eid=response;
        },
        error:function(XMLHttpRequest, textStatus, errorThrown)
        {
            eid=0;
            //alert(textStatus);
            //alert(XMLHttpRequest.status);
            //alert(XMLHttpRequest.readyState);
            //alert(XMLHttpRequest.responseText);
            //alert(errorThrown);
        }
    });
    return eid;
}

function check_starttime_in_range(starttime,eid,group_id,root)
{
    var flag=false;
    $.ajax
    ({
        type: "post",
        url: root+"/check/check_starttime_in_range_ajax/"+Math.random(),
        data: {"starttime":starttime,"eid":eid,'group_id':group_id},
        dataType:'json',
        cache:false,
        async:false,
        success: function (response)
        {
            if(response==1)
            {
                flag=true;
            }
            else
            {
                flag=false;
            }
        },
        error:function(XMLHttpRequest, textStatus, errorThrown)
        {

        }
    });
    return flag;
}



/*检查方案选择的结束日期在范围内：晚于开始日期，早于方案的结束日期*/
function check_endtime_in_range(endtime,starttime,group_id,eid,root)
{
    var flag=false;
    $.ajax
    ({
        type: "post",
        url: root+"/check/check_endtime_in_range_ajax/"+Math.random(),
        data: {"endtime":endtime, "starttime":starttime,"group_id":group_id, "eid":eid},
        dataType:'json',
        cache:false,
        async:false,
        success: function (response)
        {
            if(response==1)
            {
                flag=true;
            }
            else
            {
                flag=false;
            }
        },
        error:function(XMLHttpRequest, textStatus, errorThrown)
        {

        }
    });
    return flag;
}


/*检查日期格式*/
function check_date_formate(date)
{
    if(Date.parse(date))
    {
        return true;
    }
    else
    {
        false;
    }
}

/*检查文件类型*/
function check_file_type(filename)
{
    var _validFileExtensions=[".xlsx",".xls"];
    if(filename.length>0)
    {
        var blnValid=false;
        for(var j=0;j<_validFileExtensions.length;j++)
        {
            var sCurExtension=_validFileExtensions[j];
            if(filename.substr(filename.length-sCurExtension.length,sCurExtension.length).toLowerCase()==sCurExtension.toLowerCase())
            {
                blnValid=true;
                break;
            }
        }
        return blnValid;
    }
}


function check_user_has_valid_insurance_ajax(eid,id_number,group_id,root)
{
    var result=new Array();
    result['pass']=true;
    result['msg']="";
    $.ajax
    ({
        type: "post",
        url: root+"/check/check_user_has_valid_insurance_ajax/"+Math.random(),
        data: {eid:eid,id_number:id_number, group_id:group_id},
        dataType:'json',
        cache:false,
        async:false,
        success: function (response)
        {
            result['pass']=response.pass;
            result['msg']=response.msg;
        },
        error:function(XMLHttpRequest, textStatus, errorThrown)
        {

        }
    });
    return result;
}


function check_realname_match_db_ajax(realname,id_number,root)
{
    var flag=false;
    $.ajax
    ({
        type: "post",
        url: root+"/check/check_realname_match_db_ajax/"+Math.random(),
        data: {"realname":realname, "id_number":id_number},
        dataType:'json',
        cache:false,
        async:false,
        success: function (response)
        {
            if(response==1)
            {
                flag=true;
            }
            else
            {
                flag=false;
            }
        },
        error:function(XMLHttpRequest, textStatus, errorThrown)
        {
            //alert(textStatus);
            //alert(XMLHttpRequest.status);
            //alert(XMLHttpRequest.readyState);
            //alert(XMLHttpRequest.responseText);
            //alert(errorThrown);
        }
    });
    return flag;
}


function check_mobile_match_db_ajax(mobile,id_number,root)
{
    var flag=false;
    $.ajax
    ({
        type: "post",
        url: root+"/UploadUserInfo/check_mobile_match_ajax/"+Math.random(),
        data: {"mobile":mobile, "id_number":id_number},
        dataType:'json',
        cache:false,
        async:false,
        success: function (response)
        {
            if(response==1)
            {
                flag=true;
            }
            else
            {
                flag=false;
            }
        },
        error:function(XMLHttpRequest, textStatus, errorThrown)
        {
            alert(XMLHttpRequest.responseText);
        }
    });
    return flag;
}
/*检查图片验证码是否正确
*
* */
function check_img_verify_mob(verifyCode,root)
{
    var verifyReg=/^[0-9a-zA-z]{4}$/;
    var result=0;
    if(verifyCode.length==0)
    {
        result= 0;/*验证码不能为空*/
    }else if(verifyReg.test(verifyCode))
    {
        $.ajax
        ({
            type: "post",
            url: root+"/verify/verify_check_ajax/"+Math.random(),
            data: {"verify":verifyCode},
            dataType:'json',
            cache:false,
            async:false,
            success: function (response) {
                //alert(response);
                if(response==1)
                {
                    /*验证码正确*/
                    result= 1;
                }
                else
                {
                    /*验证码错误*/
                    result= 2;
                }
            }
        }); //end ajax
    }
    else
    {
        /*密码格式错误，只能是数字或者字母*/
        result= 3;
    }
    return result;
}
function checkVerifyMob(verifyCode,root)
{
    var verifyReg=/^[0-9a-zA-z]{4}$/;
    var result=0;
    if(verifyCode.length==0)
    {
        result= 2;/*验证码不能为空*/
    }
    else if(verifyReg.test(verifyCode))
    {
        $.ajax
        ({
            type: "post",
            url: root+"/verify/verify_check_ajax/"+Math.random(),
            data: {"verify":verifyCode},
            dataType:'json',
            cache:false,
            async:false,
            success: function (response) {
                //alert(response);
                if(response==1)
                {
                    /*验证码正确*/
                    result= 1;
                }
                else
                {
                    /*验证码错误*/
                    result= 0;
                }
            }
        }); //end ajax
    }
    else
    {
        /*密码格式错误，只能是数字或者字母*/
        result= 3;
    }
    return result;
}
/*********************************用户注册相关信息验证******************************************/

/*检查用户的昵称格式是否正确
* userName:用户昵称
* passive:是否为被动注册--如果是被动注册，userName的格式为身份证
* */
function check_username_format(userName,passive)
{
    if(userName.length==0)
    {
        return 0;
    }
    if(passive)
    {
        if(check_id_number_format(userName))
        {
            return 1;
        }
        else
        {
            return 2;
        }
    }
    else
    {
        /*userName格式：数字/字母/中文；数字不能是第一位；3-18个字符*/
        //var userNameReg=/^([a-z]|[A-Z]|[\u4e00-\u9fa5]|_)([a-z]|[A-Z]|[\u4e00-\u9fa5]|[0-9]|_|-){2,17}$/;
        var userNameReg=/^([a-z]|[A-Z]|_)([a-z]|[A-Z]|[0-9]|_|-){2,17}$/;
        if (userNameReg.test(userName))
        {
            return 1;
        }
        else
        {
            return 2;
        }
    }
}

/*ajax方法检查用户名是否已经存在*/
function check_username_exist_ajax(userName,root)
{
    var flag=false;
    $.ajax
    ({
        type: "post",
        url: root+"/check/check_username_exist_ajax/"+Math.random(),
        data: {"username":userName},
        dataType:'json',
        cache:false,
        async:false,
        success: function (response)
        {
            if(response!=0)
            {
                flag=true;
            }
            else
            {
                flag=false;
            }
        },
        error:function(XMLHttpRequest, textStatus, errorThrown)
        {
            alert(XMLHttpRequest.responseText);
        }
    });
    return flag;
}
function check_group_account_exist_ajax(group_account,root){
    var flag=false;
    $.ajax
    ({
        type: "post",
        url: root+"/check/check_group_account_exist/"+Math.random(),
        data: {"group_account":group_account},
        dataType:'json',
        cache:false,
        async:false,
        success: function (response)
        {
            if(response!=0)
            {
                flag=true;
            }
            else
            {
                flag=false;
            }
        },
        error:function(XMLHttpRequest, textStatus, errorThrown)
        {
            alert(XMLHttpRequest.responseText);
        }
    });
    return flag;
}
function check_match_old_password_ajax(uid,old,root)
{
    var flag=false;
    $.ajax
    ({
        type: "post",
        url: root+"/check/check_match_old_password_ajax/"+Math.random(),
        data: {"uid":uid,"password":old},
        dataType:'json',
        cache:false,
        async:false,
        success: function (response)
        {
            if(response!=0)
            {
                flag=true;
            }
            else
            {
                flag=false;
            }
        },
        error:function(XMLHttpRequest, textStatus, errorThrown)
        {
            //alert(XMLHttpRequest.responseText);
        }
    });
    return flag;
}


/*
*检查用户密码格式
* 如果为空：返回0
* 如果正确，返回1
* 如果格式错误，返回2
* */
function check_password_format(password)
{
    var passwordReg=/^[\\~`!@#$%^&*()-_=+|{}\[\],.?\/:;'"\d\w]{8,20}$/;
    var passwordReg2=/^.*\d+.*$/;
    var passwordReg3=/^.*[a-zA-Z]+.*$/;
    if(password.length==0)
    {
        return 0;
    }
    else
    {
        if(passwordReg.test(password)&&passwordReg2.test(password)&&passwordReg3.test(password))
        {
            return 1;
        }
        else
        {
            return 2;
        }
    }


}


/**************************************************************************************/