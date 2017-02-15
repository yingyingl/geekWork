function checkBirthCertExist(code,root){
    var flag=null;
    callAjax({'code': code.toUpperCase()}, 0, function (response) {
        flag=response;
    }, root+'/check/checkBirthCertExist/');
    return flag;
}

/*
 * 检查出生证的格式
 * @param code--出生证号
 * @return 0：非法； 1：合法
 * */
function checkBirthCertFormat(code){
    var result=0;
    if(/^[a-zA-Z][0-9]{9}$/.test(code)){
        result=1;
    }
    return result;
}

/*
 *因为年龄限制只能卡到年。如果是出生证，小于1年的情况需要单独判断
 * @param birthDayStr: 出生日期的字符串，如'1986-07-27'
 * @param type: 限制类型-/日（1）/月(2)/年(3)
 * @param num: 限制数字-与type组合进行验证
 * */
function checkBirthDateValid(birthDayStr,type,num){
    var result=0;
    var birthDate=new Date(birthDayStr);
    var todayDate=new Date();
    var wholeDiffDays=diffDays(todayDate, birthDate);
    if(type==1 && wholeDiffDays>=num){
        result=1;
    }else{
        var todayYear=todayDate.getFullYear();
        var birthYear=birthDate.getFullYear();
        var todayMonth=todayDate.getMonth() + 1;
        var birthMonth=birthDate.getMonth() + 1;
        var todayDay=todayDate.getDate();
        var birthDay=birthDate.getDate();
        var gapYear=todayYear-birthYear;
        var gapMonth=todayMonth-birthMonth;
        if(type==2){
            if(gapYear>0){
                result=1;
            }else if(gapYear==0){
                if(gapMonth>num){
                    result=1;
                }else if(gapMonth==num){
                    if(todayDay>=birthDay){
                        result=1;
                    }
                }
            }
        }else if(type==3){
            if(gapYear>num){
                result=1;
            }else if(gapYear==num){
                if(gapMonth>0){
                    result=1;
                }else if(gapMonth==0){
                    if(todayDay>=birthDay){
                        result=1;
                    }
                }
            }
        }
    }
    return result;
}
/*
* 检查扫码加人的主被保险人的用户名/身份证号
* @param account: 主被保险人的用户名/身份证号码
* @return -1：空 0: 非法; 1: username; 2: id_number
* */
function checkGroupRegMainAccount(account){
    var result=0;
    if(account.length==0){
        result=-1;
    }
    else if(check_username_format(account,false)==1){
        result=1;
    }else if(check_id_number_format(account)){
        result=2;
    }
    return result;
}
/*检查是否达到最大人数
 * @param eid
 * @param groupId
 * @param root-__WWW__
 * @return bool
 * */
function checkMaxPersonNumber(eid, groupId,root) {
    var flag = false;
    callAjax({'eid': eid, 'group_id': groupId}, 0, function (response) {
        if (response == 1) {
            flag = true;
        }
    }, root+'/groupreg/checkMaxPersonNumber/');
    return flag;
}
/*
 * 根据关系类型和证件类型检查扫码加人的连带被保险人的账号
 * @param account: 连带被保险人的账号
 * @param relType：关系类型 - 2：子女（目前暂时只实现这个）
 * @param certType: 证件类型 -0：身份证；1：出生证
 * @return 0: 非法; 1: 合法
 * */
function checkRelativeAccount(relType,certType,account){
    var result=0;
    if(account.length==0){
        result=-1;
    }else if(relType == 2){
        if(certType==0 && check_id_number_format(account)){
            result=1;
        }else if(certType==1 && checkBirthCertFormat(account)==1){
            result=1;
        }
    }
    return result;
}

/*检查被保险人是否可以申请保障
* @param relType：申请人的关系类型- 1：本人；2：子女
* @param groupId
* @param eid
* @param toApplyId:证件号码
* @param birthDay：生日xxxx-xx-xx
* @param starttime:开始日期
* @param mainId:主被保险人证件号码
* @param root-__WWW__
* @return bool
* */
function checkUserCanApplyIns(relType,groupId,eid,toApplyId,birthDay,starttime,mainId,root) {
    var flag=false;
    callAjax({'relType': relType, 'groupId': groupId,'eid':eid,'toApplyId':toApplyId,'birthDay':birthDay,'starttime':starttime,'mainCertCode':mainId}, 0, function (response) {
        flag=response;
    }, root+'/Groupreg/checkUserCanApplyIns/');
    return flag;
}

/*
* 计算两个日期的间隔天数（第一天不算）
* @param startDate 开始日期-Date()对象
* @param endDate 结束日期-Date()对象
* */
function diffDays(startDate, endDate)
{
    var millisecondsPerDay=1000 * 60 * 60 * 24;
    var millisBetween=startDate.getTime() - endDate.getTime();
    var days=Math.floor(millisBetween / millisecondsPerDay);
    return days;
}