{extends file="template/front.tpl"}

{block name="title"}用户首页{/block}

{block name="container"}
    <div class="wrapper wrapper-content">
    <div class="container">
    <div class="row">
    <div class="col-xs-2">
        <div class="top-border white-bg">
            <ul class="nav metismenu" id="side-menu">
                <li id="index-group">
                    <a href="http://www.insgeek.com/group/index">
                        <i class="fa fa-home"></i><span class="nav-label">用户首页</span>
                    </a>
                </li>
                <li>
                    <a href="#">
                        <i class="fa fa-calendar-o"></i><span class="nav-label">保障管理</span>
                        <span class="fa arrow"></span>
                    </a>
                    <ul class="nav left-m collapse">
                        <li id="insurance">
                            <a href="http://www.insgeek.com/group/insuranceList">
                                <i class="fa fa-list-alt"></i>保障方案
                            </a>
                        </li>
                        <li id="userlist">
                            <a href="http://www.insgeek.com/group/userList">
                                <i class="fa fa-sitemap"></i>成员管理
                            </a>
                        </li>
                    </ul>
                </li>
                <li>
                    <a href="#">
                        <i class="fa fa-pie-chart"></i><span class="nav-label">数据统计</span>
                        <span class="fa arrow"></span>
                    </a>
                    <ul class="nav left-m collapse">
                        <li id="lipei_s">
                            <a href="http://www.insgeek.com/DataStatistics/lipei_statistical">
                                <i class="fa fa-line-chart"></i>报销统计
                            </a>
                        </li>
                        <li id="user_s">
                            <a href="http://www.insgeek.com/DataStatistics/user_statistical">
                                <i class="fa fa-area-chart"></i>人管统计
                            </a>
                        </li>
                    </ul>
                </li>
                <li>
                    <a href="#">
                        <i class="fa fa-calculator"></i><span class="nav-label">财务中心</span>
                        <span class="fa arrow"></span>
                    </a>
                    <ul class="nav left-m nav-second-level collapse">
                        <li id="financialIndex">
                            <a href="http://www.insgeek.com/financial/index"><i class="fa fa-list"></i> 总览</a>
                        </li>
                        <li id="charge">
                            <a href="http://www.insgeek.com/financial/charge"><i class="fa fa-money"></i> 充值</a>
                        </li>
                        <li id="payment">
                            <a href="http://www.insgeek.com/financial/payment"><i class="fa fa-external-link"></i> 缴费</a>
                        </li>
                        <li id="withdraw">
                            <a href="http://www.insgeek.com/financial/withdraw"><i class="fa fa-credit-card"></i> 提现</a>
                        </li>
                        <li id="manageInfo">
                            <a href="http://www.insgeek.com/financial/manageInfo"><i class="fa fa-cogs"></i> 管理设置</a>
                        </li>
                        <li id="changeFinancialPassword" style="margin-bottom:0">
                            <a href="http://www.insgeek.com/financial/changeFinancialPassword"><i class="fa fa-tasks"></i> 财务密码</a>
                        </li>
                    </ul>
                </li>
                <li id="updateGroupUserInfo">
                    <a href="http://www.insgeek.com/group/updateGroupUserInfo">
                        <i class="fa fa-cog"></i><span class="nav-label">账户维护</span>
                    </a>
                </li>
                <li id="admin_log">
                    <a href="http://www.insgeek.com/DataStatistics/admin_log">
                        <i class="fa fa-pencil-square"></i><span class="nav-label">操作记录</span>
                    </a>
                </li>
            </ul>
        </div>
    </div>
    <link href="http://www.insgeek.com/public/insgeek2.0/css/groupcontent/proshow.css?var=2.3.7" rel="stylesheet">
    <div id="page" data-page="insurance"></div>
    <div class="col-xs-10">
        <div class="col-md-6">
            <div class="ibox">
                <div class="ibox-content product-box">
                    <div class="product-imitation"><div class="product-title">【极客保 - 意外型】</div><div class="product-subhead">测试</div></div>
                    <div class="product-desc">
                                            <span class="product-price">
                                                    保障中
                                                </span>
                        <a data-toggle="modal" data-target="#content_A" class="product-name" style="display:inline" name="insuranceState">保障说明<small style="font-weight: normal;"> (点此查看保障详情)</small></a>
                        <div class="small m-t-xs" style="margin-top: 15px;line-height: 23px;color: #6f6f6f">
                            <i class="fa fa-users"></i> 当前有 <strong class="text-warning">3</strong> 人受益于此保障方案<br/>
                            <i class="fa fa-table"></i> 方案开始日期
                            2017-01-24							<br/>
                            <i class="fa fa-table"></i> 方案结束日期
                            2018-01-23                            <br/>
                            <span style="color: #cccccc"><i class="fa fa-download"></i> 下载合同</span>
                            <span class="tooltip-demo"> <i data-toggle="tooltip" data-placement="top" data-original-title="贵企业尚未通过实名认证，暂不能获取合同，如有疑问，请致电保险极客：400-886-2309" class="fa fa-question-circle text-warning"></i></span>						</div>

                        <div class="m-t text-righ">
                            <div class="btn-group">
                                <button class="btn btn-outline btn-primary" type="button" onclick="location.href='http://www.insgeek.com/group/userList/eid/2955.html'" >
                                    成员列表
                                </button>
                                <button class="btn btn-outline btn-primary add_user" data-target="#add_user" data-toggle="modal" type="button" >
                                    增加成员
                                </button>                                <button class="btn btn-outline btn-primary two_code" title="点此可通过二维码添加成员" type="button" data-toggle="modal" data-target="#two_code" >二维码加人</button>                                <button class="btn btn-outline btn-primary" title="您可以通过导入excel表格批量加人" type="button" onclick="location.href='http://www.insgeek.com/UploadUserInfo/flow_batch'" >
                                    批量加人
                                </button>                            </div>
                            <input type="hidden" name="eid" value="2955" />
                            <input type="hidden" name="contents" value='<table class="MsoNormalTable ke-zeroborder" border="0" cellspacing="0" cellpadding="0" width="462" style="width:346.8pt;"><tbody><tr><td width="84" style="border:solid windowtext 1.0pt;background:#5B9BD5;"><p class="MsoNormal" align="center" style="margin-left:0cm;text-align:center;"><span style="font-size: 7.5pt; color: rgb(255, 255, 255);" color:white;"="">保障内容</span><span style="font-size:7.5pt;font-family:;" "=""></span></p></td><td width="104" style="border:solid windowtext 1.0pt;background:#5B9BD5;"><p class="MsoNormal" align="center" style="margin-left:0cm;text-align:center;"><span style="font-size: 7.5pt; color: rgb(255, 255, 255);" color:white;"="">保障责任</span><span style="font-size:7.5pt;font-family:;" "=""></span></p></td><td width="76" style="border:solid windowtext 1.0pt;background:#5B9BD5;"><p class="MsoNormal" align="center" style="margin-left:0cm;text-align:center;"><span style="font-size: 7.5pt; color: rgb(255, 255, 255);" color:white;"="">保障额度</span><span style="font-size:7.5pt;font-family:;" "=""></span></p></td><td width="66" style="border:solid windowtext 1.0pt;background:#5B9BD5;"><p class="MsoNormal" align="center" style="margin-left:0cm;text-align:center;"><span style="font-size: 7.5pt; color: rgb(255, 255, 255);" color:white;"="">年免赔额</span><span style="font-size:7.5pt;font-family:;" "=""></span></p></td><td width="66" style="border:solid windowtext 1.0pt;background:#5B9BD5;"><p class="MsoNormal" align="center" style="margin-left:0cm;text-align:center;"><span style="font-size: 7.5pt; color: rgb(255, 255, 255);" color:white;"="">赔付比例</span><span style="font-size:7.5pt;font-family:;" "=""></span></p></td><td width="66" style="border:solid windowtext 1.0pt;background:#5B9BD5;"><p class="MsoNormal" align="center" style="margin-left:0cm;text-align:center;"><span style="font-size: 7.5pt; color: rgb(255, 255, 255);" color:white;"="">保障期限</span></p></td></tr><tr><td width="84" rowspan="2" style="border:solid windowtext 1.0pt;background:white;"><p class="MsoNormal" align="center" style="margin-left:0cm;text-align:center;"><span style="font-size:7.5pt;font-family:;" "="">一般意外伤害<span></span></span></p></td><td width="104" style="border:solid windowtext 1.0pt;background:white;"><p class="MsoNormal" align="center" style="margin-left:0cm;text-align:center;"><span style="font-size:7.5pt;font-family:;" "="">意外身故、残疾<span></span></span></p></td><td width="76" style="border:solid windowtext 1.0pt;background:white;"><p class="MsoNormal" align="center" style="margin-left:0cm;text-align:center;"><span style="font-size:7.5pt;font-family:;" "="">50,000</span><span style="font-size:7.5pt;font-family:;" "=""></span></p></td><td width="66" style="border:solid windowtext 1.0pt;background:white;"><p class="MsoNormal" align="center" style="margin-left:0cm;text-align:center;"><span style="font-size:7.5pt;font-family:;" "="">-</span><span style="font-size:7.5pt;font-family:;" "=""></span></p></td><td width="66" style="border:solid windowtext 1.0pt;background:white;"><p class="MsoNormal" align="center" style="margin-left:0cm;text-align:center;"><span style="font-size:7.5pt;font-family:;" "="">-</span><span style="font-size:7.5pt;font-family:;" "=""></span></p></td><td width="66" rowspan="3" style="border:solid black 1.0pt;background:white;"><p class="MsoNormal" align="center" style="margin-left:0cm;text-align:center;"><span style="font-size:7.5pt;font-family:;" "="">一年<span></span></span></p></td></tr><tr><td width="104" style="border:solid windowtext 1.0pt;background:white;"><p class="MsoNormal" align="center" style="margin-left:0cm;text-align:center;"><span style="font-size:7.5pt;font-family:;" "="">意外伤害医疗<span></span></span></p></td><td width="76" style="border:solid windowtext 1.0pt;background:white;"><p class="MsoNormal" align="center" style="margin-left:0cm;text-align:center;"><span style="font-size:7.5pt;font-family:;" "="">1,000</span><span style="font-size:7.5pt;font-family:;" "=""></span></p></td><td width="66" style="border:solid windowtext 1.0pt;background:white;"><p class="MsoNormal" align="center" style="margin-left:0cm;text-align:center;"><span style="font-size:7.5pt;font-family:;" "="">0</span><span style="font-size:7.5pt;font-family:;" "=""></span></p></td><td width="66" style="border:solid windowtext 1.0pt;background:white;"><p class="MsoNormal" align="center" style="margin-left:0cm;text-align:center;"><span style="font-size:7.5pt;font-family:;" "="">100%</span><span style="font-size:7.5pt;font-family:;" "=""></span></p></td></tr><tr><td width="84" style="border:solid windowtext 1.0pt;background:white;"><p class="MsoNormal" align="center" style="margin-left:0cm;text-align:center;"><span style="font-size:7.5pt;font-family:;" "="">猝死<span></span></span></p></td><td width="104" style="border:solid windowtext 1.0pt;background:white;"><p class="MsoNormal" align="center" style="margin-left:0cm;text-align:center;"><span style="font-size:7.5pt;font-family:;" "="">猝死<span></span></span></p></td><td width="76" style="border:solid windowtext 1.0pt;background:white;"><p class="MsoNormal" align="center" style="margin-left:0cm;text-align:center;"><span style="font-size:7.5pt;font-family:;" "="">50,000</span><span style="font-size:7.5pt;font-family:;" "=""></span></p></td><td width="66" style="border:solid windowtext 1.0pt;background:white;"><p class="MsoNormal" align="center" style="margin-left:0cm;text-align:center;"><span style="font-size:7.5pt;font-family:;" "="">-</span><span style="font-size:7.5pt;font-family:;" "=""></span></p></td><td width="66" style="border:solid windowtext 1.0pt;background:white;"><p class="MsoNormal" align="center" style="margin-left:0cm;text-align:center;"><span style="font-size:7.5pt;font-family:;" "="">-</span><span style="font-size:7.5pt;font-family:;" "=""></span></p></td></tr></tbody></table><br />'>
                            <input type="hidden" name="insuranceName" value='【极客保 - 意外型】测试'>
                        </div>
                        </if>
                    </div>
                </div>
            </div>
        </div><div class="col-md-6">
            <div class="ibox">
                <div class="ibox-content product-box">
                    <div class="product-imitation"><div class="product-title">【极客保 - 重疾型】</div><div class="product-subhead">测试</div></div>
                    <div class="product-desc">
                                            <span class="product-price">
                                                    保障中
                                                </span>
                        <a data-toggle="modal" data-target="#content_A" class="product-name" style="display:inline" name="insuranceState">保障说明<small style="font-weight: normal;"> (点此查看保障详情)</small></a>
                        <div class="small m-t-xs" style="margin-top: 15px;line-height: 23px;color: #6f6f6f">
                            <i class="fa fa-users"></i> 当前有 <strong class="text-warning">0</strong> 人受益于此保障方案<br/>
                            <i class="fa fa-table"></i> 方案开始日期
                            2017-01-24							<br/>
                            <i class="fa fa-table"></i> 方案结束日期
                            2018-01-23                            <br/>
                            <span style="color: #cccccc"><i class="fa fa-download"></i> 下载合同</span>
                            <span class="tooltip-demo"> <i data-toggle="tooltip" data-placement="top" data-original-title="贵企业尚未通过实名认证，暂不能获取合同，如有疑问，请致电保险极客：400-886-2309" class="fa fa-question-circle text-warning"></i></span>						</div>

                        <div class="m-t text-righ">
                            <div class="btn-group">
                                <button class="btn btn-outline btn-primary" type="button" onclick="location.href='http://www.insgeek.com/group/userList/eid/2958.html'" >
                                    成员列表
                                </button>
                                <button class="btn btn-outline btn-primary add_user" data-target="#add_user" data-toggle="modal" type="button" >
                                    增加成员
                                </button>                                <button class="btn btn-outline btn-primary two_code" title="点此可通过二维码添加成员" type="button" data-toggle="modal" data-target="#two_code" >二维码加人</button>                                <button class="btn btn-outline btn-primary" title="您可以通过导入excel表格批量加人" type="button" onclick="location.href='http://www.insgeek.com/UploadUserInfo/flow_batch'" >
                                    批量加人
                                </button>                            </div>
                            <input type="hidden" name="eid" value="2958" />
                            <input type="hidden" name="contents" value='<table class="MsoNormalTable ke-zeroborder" border="0" cellspacing="0" cellpadding="0" width="463" style="width:347.3pt;"><tbody><tr><td width="85" style="border:solid windowtext 1.0pt;background:#5B9BD5;"><p class="MsoNormal" align="center" style="margin-left:0cm;text-align:center;"><span style="font-size:7.5pt;font-family:宋体;color:#FFFFFF;">保障内容</span><span style="font-size:12.0pt;font-family:宋体;"></span></p></td><td width="104" style="border:solid windowtext 1.0pt;background:#5B9BD5;"><p class="MsoNormal" align="center" style="margin-left:0cm;text-align:center;"><span style="font-size:7.5pt;font-family:宋体;color:#FFFFFF;">保障责任</span><span style="font-size:12.0pt;font-family:宋体;"></span></p></td><td width="76" style="border:solid windowtext 1.0pt;background:#5B9BD5;"><p class="MsoNormal" align="center" style="margin-left:0cm;text-align:center;"><span style="font-size:7.5pt;font-family:宋体;color:#FFFFFF;">保障额度</span><span style="font-size:12.0pt;font-family:宋体;"></span></p></td><td width="66" style="border:solid windowtext 1.0pt;background:#5B9BD5;"><p class="MsoNormal" align="center" style="margin-left:0cm;text-align:center;"><span style="font-size:7.5pt;font-family:宋体;color:#FFFFFF;">年免赔额</span><span style="font-size:12.0pt;font-family:宋体;"></span></p></td><td width="66" style="border:solid windowtext 1.0pt;background:#5B9BD5;"><p class="MsoNormal" align="center" style="margin-left:0cm;text-align:center;"><span style="font-size:7.5pt;font-family:宋体;color:#FFFFFF;">赔付比例</span><span style="font-size:12.0pt;font-family:宋体;"></span></p></td><td width="66" style="border:solid windowtext 1.0pt;background:#5B9BD5;"><p class="MsoNormal" align="center" style="margin-left:0cm;text-align:center;"><span style="font-size:7.5pt;font-family:宋体;color:#FFFFFF;">保障期限</span></p></td></tr><tr><td width="85" style="border:solid windowtext 1.0pt;background:white;"><p class="MsoNormal" align="center" style="margin-left:0cm;text-align:center;"><span style="font-size:7.5pt;font-family:;" "="">重大疾病</span><span style="font-size:12.0pt;font-family:宋体;"></span></p></td><td width="104" style="border:solid windowtext 1.0pt;background:white;"><p class="MsoNormal" align="center" style="margin-left:0cm;text-align:center;"><span style="font-size:7.5pt;font-family:;" "="">30</span><span style="font-size:7.5pt;font-family:;" "="">种重大疾病</span><span style="font-size:12.0pt;font-family:宋体;"></span></p></td><td width="76" style="border:solid windowtext 1.0pt;background:white;"><p class="MsoNormal" align="center" style="margin-left:0cm;text-align:center;"><span style="font-size:7.5pt;font-family:;" "="">100,000</span><span style="font-size:12.0pt;font-family:宋体;"></span></p></td><td width="66" style="border:solid windowtext 1.0pt;background:white;"><p class="MsoNormal" align="center" style="margin-left:0cm;text-align:center;"><span style="font-size:7.5pt;font-family:;" "="">-</span><span style="font-size:12.0pt;font-family:宋体;"></span></p></td><td width="66" style="border:solid windowtext 1.0pt;background:white;"><p class="MsoNormal" align="center" style="margin-left:0cm;text-align:center;"><span style="font-size:7.5pt;font-family:;" "="">-</span><span style="font-size:12.0pt;font-family:宋体;"></span></p></td><td width="66" rowspan="2" style="border:solid black 1.0pt;background:white;"><p class="MsoNormal" align="center" style="margin-left:0cm;text-align:center;"><span style="font-size:7.5pt;font-family:;" "="">一年</span><span style="font-size:12.0pt;font-family:宋体;"></span></p></td></tr><tr><td style="border:solid windowtext 1.0pt;background:white;"><p class="MsoNormal" align="center" style="margin-left:0cm;text-align:center;"><span style="font-size:7.5pt;font-family:;" "="">猝死<span></span></span></p></td><td width="104" style="border:solid windowtext 1.0pt;background:white;"><p class="MsoNormal" align="center" style="margin-left:0cm;text-align:center;"><span style="font-size:7.5pt;font-family:;" "="">猝死<span></span></span></p></td><td width="76" style="border:solid windowtext 1.0pt;background:white;"><p class="MsoNormal" align="center" style="margin-left:0cm;text-align:center;"><span style="font-size:7.5pt;font-family:;" "="">200,000</span><span style="font-size:12.0pt;font-family:宋体;"></span></p></td><td width="66" style="border:solid windowtext 1.0pt;background:white;"><p class="MsoNormal" align="center" style="margin-left:0cm;text-align:center;"><span style="font-size:7.5pt;font-family:;" "="">-</span><span style="font-size:12.0pt;font-family:宋体;"></span></p></td><td width="66" style="border:solid windowtext 1.0pt;background:white;"><p class="MsoNormal" align="center" style="margin-left:0cm;text-align:center;"><span style="font-size:7.5pt;font-family:;" "="">-</span><span style="font-size:12.0pt;font-family:宋体;"></span></p></td></tr></tbody></table><br />'>
                            <input type="hidden" name="insuranceName" value='【极客保 - 重疾型】测试'>
                        </div>
                        </if>
                    </div>
                </div>
            </div>
        </div><div class="col-md-6">
            <div class="ibox">
                <div class="ibox-content product-box">
                    <div class="product-imitation"><div class="product-title">【极客保 - 医疗型】</div><div class="product-subhead">测试</div></div>
                    <div class="product-desc">
                                            <span class="product-price">
                                                    保障中
                                                </span>
                        <a data-toggle="modal" data-target="#content_A" class="product-name" style="display:inline" name="insuranceState">保障说明<small style="font-weight: normal;"> (点此查看保障详情)</small></a>
                        <div class="small m-t-xs" style="margin-top: 15px;line-height: 23px;color: #6f6f6f">
                            <i class="fa fa-users"></i> 当前有 <strong class="text-warning">5</strong> 人受益于此保障方案<br/>
                            <i class="fa fa-table"></i> 方案开始日期
                            2017-01-25							<br/>
                            <i class="fa fa-table"></i> 方案结束日期
                            2018-01-24                            <br/>
                            <span style="color: #cccccc"><i class="fa fa-download"></i> 下载合同</span>
                            <span class="tooltip-demo"> <i data-toggle="tooltip" data-placement="top" data-original-title="贵企业尚未通过实名认证，暂不能获取合同，如有疑问，请致电保险极客：400-886-2309" class="fa fa-question-circle text-warning"></i></span>						</div>

                        <div class="m-t text-righ">
                            <div class="btn-group">
                                <button class="btn btn-outline btn-primary" type="button" onclick="location.href='http://www.insgeek.com/group/userList/eid/2960.html'" >
                                    成员列表
                                </button>
                                <button class="btn btn-outline btn-primary add_user" data-target="#add_user" data-toggle="modal" type="button" >
                                    增加成员
                                </button>                                <button class="btn btn-outline btn-primary two_code" title="点此可通过二维码添加成员" type="button" data-toggle="modal" data-target="#two_code" >二维码加人</button>                                <button class="btn btn-outline btn-primary" title="您可以通过导入excel表格批量加人" type="button" onclick="location.href='http://www.insgeek.com/UploadUserInfo/flow_batch'" >
                                    批量加人
                                </button>                            </div>
                            <input type="hidden" name="eid" value="2960" />
                            <input type="hidden" name="contents" value='<table class="MsoNormalTable ke-zeroborder" border="0" cellspacing="0" cellpadding="0" width="463" style="width:347.3pt;"><tbody><tr><td width="85" style="border:1pt solid windowtext;background:#5B9BD5;"><p class="MsoNormal" align="center" style="text-align:center;"><span color:white;"="" style="font-size: 7.5pt; color: rgb(255, 255, 255);">保障内容</span></p></td><td width="104" style="border:1pt solid windowtext;background:#5B9BD5;"><p class="MsoNormal" align="center" style="text-align:center;"><span color:white;"="" style="font-size: 7.5pt; color: rgb(255, 255, 255);">保障责任</span></p></td><td width="76" style="border:1pt solid windowtext;background:#5B9BD5;"><p class="MsoNormal" align="center" style="text-align:center;"><span color:white;"="" style="font-size: 7.5pt; color: rgb(255, 255, 255);">保障额度</span></p></td><td width="66" style="border:1pt solid windowtext;background:#5B9BD5;"><p class="MsoNormal" align="center" style="text-align:center;"><span color:white;"="" style="font-size: 7.5pt; color: rgb(255, 255, 255);">年免赔额</span></p></td><td width="66" style="border:1pt solid windowtext;background:#5B9BD5;"><p class="MsoNormal" align="center" style="text-align:center;"><span color:white;"="" style="font-size: 7.5pt; color: rgb(255, 255, 255);">赔付比例</span></p></td><td width="66" style="border:1pt solid windowtext;background:#5B9BD5;"><p class="MsoNormal" align="center" style="text-align:center;"><span color:white;"="" style="font-size: 7.5pt; color: rgb(255, 255, 255);">保障期限</span></p></td></tr><tr><td width="85" rowspan="2" style="border:1pt solid windowtext;background:white;"><p class="MsoNormal" align="center" style="text-align:center;"><span style="font-size:7.5pt;font-family:微软雅黑, sans-serif;">一般意外伤害</span></p></td><td width="104" style="border:1pt solid windowtext;background:white;"><p class="MsoNormal" align="center" style="text-align:center;"><span style="font-size:7.5pt;font-family:微软雅黑, sans-serif;">意外身故、残疾</span></p></td><td width="76" style="border:1pt solid windowtext;background:white;"><p class="MsoNormal" align="center" style="text-align:center;"><span style="font-size:7.5pt;font-family:微软雅黑, sans-serif;">200,000</span></p></td><td width="66" style="border:1pt solid windowtext;background:white;"><p class="MsoNormal" align="center" style="text-align:center;"><span style="font-size:7.5pt;font-family:微软雅黑, sans-serif;">-</span></p></td><td width="66" style="border:1pt solid windowtext;background:white;"><p class="MsoNormal" align="center" style="text-align:center;"><span style="font-size:7.5pt;font-family:微软雅黑, sans-serif;">-</span></p></td><td width="66" rowspan="5" style="border:1pt solid black;background:white;"><p class="MsoNormal" align="center" style="text-align:center;"><span style="font-size:7.5pt;font-family:微软雅黑, sans-serif;">一年</span></p></td></tr><tr><td width="104" style="border:1pt solid windowtext;background:white;"><p class="MsoNormal" align="center" style="text-align:center;"><span style="font-size:7.5pt;font-family:微软雅黑, sans-serif;">意外伤害医疗</span></p></td><td width="76" style="border:1pt solid windowtext;background:white;"><p class="MsoNormal" align="center" style="text-align:center;"><span style="font-size:7.5pt;font-family:微软雅黑, sans-serif;">10,000</span></p></td><td width="66" style="border:1pt solid windowtext;background:white;"><p class="MsoNormal" align="center" style="text-align:center;"><span style="font-size:7.5pt;font-family:微软雅黑, sans-serif;">0</span></p></td><td width="66" style="border:1pt solid windowtext;background:white;"><p class="MsoNormal" align="center" style="text-align:center;"><span style="font-size:7.5pt;font-family:微软雅黑, sans-serif;">100%</span></p></td></tr><tr><td width="85" style="border:1pt solid windowtext;background:white;"><p class="MsoNormal" align="center" style="text-align:center;"><span style="font-size:7.5pt;font-family:微软雅黑, sans-serif;">猝死</span></p></td><td width="104" style="border:1pt solid windowtext;background:white;"><p class="MsoNormal" align="center" style="text-align:center;"><span style="font-size:7.5pt;font-family:微软雅黑, sans-serif;">猝死</span></p></td><td width="76" style="border:1pt solid windowtext;background:white;"><p class="MsoNormal" align="center" style="text-align:center;"><span style="font-size:7.5pt;font-family:微软雅黑, sans-serif;">200,000</span></p></td><td width="66" style="border:1pt solid windowtext;background:white;"><p class="MsoNormal" align="center" style="text-align:center;"><span style="font-size:7.5pt;font-family:微软雅黑, sans-serif;">-</span></p></td><td width="66" style="border:1pt solid windowtext;background:white;"><p class="MsoNormal" align="center" style="text-align:center;"><span style="font-size:7.5pt;font-family:微软雅黑, sans-serif;">-</span></p></td></tr><tr><td width="85" rowspan="2" style="border:1pt solid windowtext;background:white;"><p class="MsoNormal" align="center" style="text-align:center;"><span style="font-size:7.5pt;font-family:微软雅黑, sans-serif;">补充医疗</span></p></td><td width="104" style="border:1pt solid windowtext;background:white;"><p class="MsoNormal" align="center" style="text-align:center;"><span style="font-size:7.5pt;font-family:微软雅黑, sans-serif;">门急诊</span></p></td><td width="76" style="border:1pt solid windowtext;background:white;"><p class="MsoNormal" align="center" style="text-align:center;"><span style="font-size:7.5pt;font-family:微软雅黑, sans-serif;">15,000</span></p></td><td width="66" style="border:1pt solid windowtext;background:white;"><p class="MsoNormal" align="center" style="text-align:center;"><span style="font-size:7.5pt;font-family:微软雅黑, sans-serif;">500</span></p></td><td width="66" style="border:1pt solid windowtext;background:white;"><p class="MsoNormal" align="center" style="text-align:center;"><span style="font-size:7.5pt;font-family:微软雅黑, sans-serif;">70%</span></p></td></tr><tr><td width="104" style="border:1pt solid windowtext;background:white;"><p class="MsoNormal" align="center" style="text-align:center;"><span style="font-size:7.5pt;font-family:微软雅黑, sans-serif;">住院</span></p></td><td width="76" style="border:1pt solid windowtext;background:white;"><p class="MsoNormal" align="center" style="text-align:center;"><span style="font-size:7.5pt;font-family:微软雅黑, sans-serif;"><span style="font-family:微软雅黑, sans-serif;text-align:center;white-space:normal;background-color:#FFFFFF;">50,000</span></span></p></td><td width="66" style="border:1pt solid windowtext;background:white;"><p class="MsoNormal" align="center" style="text-align:center;"><span style="font-size:7.5pt;font-family:微软雅黑, sans-serif;">0</span></p></td><td width="66" style="border:1pt solid windowtext;background:white;"><p class="MsoNormal" align="center" style="text-align:center;"><span style="font-size:7.5pt;font-family:微软雅黑, sans-serif;">70%</span></p></td></tr></tbody></table><br />'>
                            <input type="hidden" name="insuranceName" value='【极客保 - 医疗型】测试'>
                        </div>
                        </if>
                    </div>
                </div>
            </div>
        </div><div class="col-md-6">
            <div class="ibox">
                <div class="ibox-content product-box">
                    <div class="product-imitation"><div class="product-title">【极客保 - 基础版】</div><div class="product-subhead">测试</div></div>
                    <div class="product-desc">
                                            <span class="product-price">
                                                    保障中
                                                </span>
                        <a data-toggle="modal" data-target="#content_A" class="product-name" style="display:inline" name="insuranceState">保障说明<small style="font-weight: normal;"> (点此查看保障详情)</small></a>
                        <div class="small m-t-xs" style="margin-top: 15px;line-height: 23px;color: #6f6f6f">
                            <i class="fa fa-users"></i> 当前有 <strong class="text-warning">1</strong> 人受益于此保障方案<br/>
                            <i class="fa fa-table"></i> 方案开始日期
                            2017-02-03							<br/>
                            <i class="fa fa-table"></i> 方案结束日期
                            2018-02-02                            <br/>
                            <span style="color: #cccccc"><i class="fa fa-download"></i> 下载合同</span>
                            <span class="tooltip-demo"> <i data-toggle="tooltip" data-placement="top" data-original-title="贵企业尚未通过实名认证，暂不能获取合同，如有疑问，请致电保险极客：400-886-2309" class="fa fa-question-circle text-warning"></i></span>						</div>

                        <div class="m-t text-righ">
                            <div class="btn-group">
                                <button class="btn btn-outline btn-primary" type="button" onclick="location.href='http://www.insgeek.com/group/userList/eid/2964.html'" >
                                    成员列表
                                </button>
                                <button class="btn btn-outline btn-primary add_user" data-target="#add_user" data-toggle="modal" type="button" >
                                    增加成员
                                </button>                                <button class="btn btn-outline btn-primary two_code" title="点此可通过二维码添加成员" type="button" data-toggle="modal" data-target="#two_code" >二维码加人</button>                                <button class="btn btn-outline btn-primary" title="您可以通过导入excel表格批量加人" type="button" onclick="location.href='http://www.insgeek.com/UploadUserInfo/flow_batch'" >
                                    批量加人
                                </button>                            </div>
                            <input type="hidden" name="eid" value="2964" />
                            <input type="hidden" name="contents" value='<table class="MsoNormalTable ke-zeroborder" border="0" cellspacing="0" cellpadding="0" width="463" style="width:347.3pt;"><tbody><tr><td width="103" style="border:solid windowtext 1.0pt;background:#5B9BD5;"><p class="MsoNormal" align="center" style="margin-left:0cm;text-align:center;"><span style="font-size:7.5pt;font-family:宋体;color:#FFFFFF;">保障内容</span><span style="font-size:12.0pt;font-family:宋体;"></span></p></td><td width="86" style="border:solid windowtext 1.0pt;background:#5B9BD5;"><p class="MsoNormal" align="center" style="margin-left:0cm;text-align:center;"><span style="font-size:7.5pt;font-family:宋体;color:#FFFFFF;">保障责任</span><span style="font-size:12.0pt;font-family:宋体;"></span></p></td><td width="76" style="border:solid windowtext 1.0pt;background:#5B9BD5;"><p class="MsoNormal" align="center" style="margin-left:0cm;text-align:center;"><span style="font-size:7.5pt;font-family:宋体;color:#FFFFFF;">保障额度</span><span style="font-size:12.0pt;font-family:宋体;"></span></p></td><td width="66" style="border:solid windowtext 1.0pt;background:#5B9BD5;"><p class="MsoNormal" align="center" style="margin-left:0cm;text-align:center;"><span style="font-size:7.5pt;font-family:宋体;color:#FFFFFF;">年免赔额</span><span style="font-size:12.0pt;font-family:宋体;"></span></p></td><td width="66" style="border:solid windowtext 1.0pt;background:#5B9BD5;"><p class="MsoNormal" align="center" style="margin-left:0cm;text-align:center;"><span style="font-size:7.5pt;font-family:宋体;color:#FFFFFF;">赔付比例</span><span style="font-size:12.0pt;font-family:宋体;"></span></p></td><td width="66" style="border:solid windowtext 1.0pt;background:#5B9BD5;"><p class="MsoNormal" align="center" style="margin-left:0cm;text-align:center;"><span style="font-size:7.5pt;font-family:宋体;color:#FFFFFF;">保障期限</span></p></td></tr><tr><td width="103" rowspan="2" style="border:solid windowtext 1.0pt;background:white;"><p class="MsoNormal" align="center" style="margin-left:0cm;text-align:center;"><span style="font-size:7.5pt;font-family:;" "="">一般意外伤害<span></span></span></p></td><td width="86" style="border:solid windowtext 1.0pt;background:white;"><p class="MsoNormal" align="center" style="margin-left:0cm;text-align:center;"><span style="font-size:7.5pt;font-family:;" "="">意外身故、残疾<span></span></span></p></td><td width="76" style="border:solid windowtext 1.0pt;background:white;"><p class="MsoNormal" align="center" style="margin-left:0cm;text-align:center;"><span style="font-size:7.5pt;font-family:;" "="">100,000</span></p></td><td width="66" style="border:solid windowtext 1.0pt;background:white;"><p class="MsoNormal" align="center" style="margin-left:0cm;text-align:center;"><span style="font-size:7.5pt;font-family:;" "="">-</span></p></td><td width="66" style="border:solid windowtext 1.0pt;background:white;"><p class="MsoNormal" align="center" style="margin-left:0cm;text-align:center;"><span style="font-size:7.5pt;font-family:;" "="">-</span></p></td><td width="66" rowspan="10" style="border:solid black 1.0pt;background:white;"><p class="MsoNormal" align="center" style="margin-left:0cm;text-align:center;"><span style="font-size:7.5pt;font-family:;" "="">一年</span><span style="font-size:12.0pt;font-family:宋体;"></span></p></td></tr><tr><td width="86" style="border:solid windowtext 1.0pt;background:white;"><p class="MsoNormal" align="center" style="margin-left:0cm;text-align:center;"><span style="font-size:7.5pt;font-family:;" "="">意外伤害医疗<span></span></span></p></td><td width="76" style="border:solid windowtext 1.0pt;background:white;"><p class="MsoNormal" align="center" style="margin-left:0cm;text-align:center;"><span style="font-size:7.5pt;font-family:;" "="">10,000</span></p></td><td width="66" style="border:solid windowtext 1.0pt;background:white;"><p class="MsoNormal" align="center" style="margin-left:0cm;text-align:center;"><span style="font-size:7.5pt;font-family:;" "="">0</span></p></td><td width="66" style="border:solid windowtext 1.0pt;background:white;"><p class="MsoNormal" align="center" style="margin-left:0cm;text-align:center;"><span style="font-size:7.5pt;font-family:;" "="">100%</span></p></td></tr><tr><td width="103" style="border:solid windowtext 1.0pt;background:white;"><p class="MsoNormal" align="center" style="margin-left:0cm;text-align:center;"><span style="font-size:7.5pt;font-family:;" "="">猝死<span></span></span></p></td><td width="86" style="border:solid windowtext 1.0pt;background:white;"><p class="MsoNormal" align="center" style="margin-left:0cm;text-align:center;"><span style="font-size:7.5pt;font-family:;" "="">猝死<span></span></span></p></td><td width="76" style="border:solid windowtext 1.0pt;background:white;"><p class="MsoNormal" align="center" style="margin-left:0cm;text-align:center;"><span style="font-size:7.5pt;font-family:;" "="">100,000</span></p></td><td width="66" style="border:solid windowtext 1.0pt;background:white;"><p class="MsoNormal" align="center" style="margin-left:0cm;text-align:center;"><span style="font-size:7.5pt;font-family:;" "="">-</span></p></td><td width="66" style="border:solid windowtext 1.0pt;background:white;"><p class="MsoNormal" align="center" style="margin-left:0cm;text-align:center;"><span style="font-size:7.5pt;font-family:;" "="">-</span></p></td></tr><tr><td width="103" rowspan="4" style="border:solid windowtext 1.0pt;background:white;"><p class="MsoNormal" align="center" style="margin-left:0cm;text-align:center;"><span style="font-size:7.5pt;font-family:;" "="">交通意外身故、残疾<span></span></span></p></td><td width="86" style="border:solid windowtext 1.0pt;background:white;"><p class="MsoNormal" align="center" style="margin-left:0cm;text-align:center;"><span style="font-size:7.5pt;font-family:;" "="">飞机<span></span></span></p></td><td width="76" style="border:solid windowtext 1.0pt;background:white;"><p class="MsoNormal" align="center" style="margin-left:0cm;text-align:center;"><span style="font-size:7.5pt;font-family:;" "="">500,000</span></p></td><td width="66" style="border:solid windowtext 1.0pt;background:white;"><p class="MsoNormal" align="center" style="margin-left:0cm;text-align:center;"><span style="font-size:7.5pt;font-family:;" "="">-</span></p></td><td width="66" style="border:solid windowtext 1.0pt;background:white;"><p class="MsoNormal" align="center" style="margin-left:0cm;text-align:center;"><span style="font-size:7.5pt;font-family:;" "="">-</span></p></td></tr><tr><td width="86" style="border:solid windowtext 1.0pt;background:white;"><p class="MsoNormal" align="center" style="margin-left:0cm;text-align:center;"><span style="font-size:7.5pt;font-family:;" "="">轨道<span></span></span></p></td><td width="76" style="border:solid windowtext 1.0pt;background:white;"><p class="MsoNormal" align="center" style="margin-left:0cm;text-align:center;"><span style="font-size:7.5pt;font-family:;" "="">200,000</span></p></td><td width="66" style="border:solid windowtext 1.0pt;background:white;"><p class="MsoNormal" align="center" style="margin-left:0cm;text-align:center;"><span style="font-size:7.5pt;font-family:;" "="">-</span></p></td><td width="66" style="border:solid windowtext 1.0pt;background:white;"><p class="MsoNormal" align="center" style="margin-left:0cm;text-align:center;"><span style="font-size:7.5pt;font-family:;" "="">-</span></p></td></tr><tr><td width="86" style="border:solid windowtext 1.0pt;background:white;"><p class="MsoNormal" align="center" style="margin-left:0cm;text-align:center;"><span style="font-size:7.5pt;font-family:;" "="">轮船<span></span></span></p></td><td width="76" style="border:solid windowtext 1.0pt;background:white;"><p class="MsoNormal" align="center" style="margin-left:0cm;text-align:center;"><span style="font-size:7.5pt;font-family:;" "="">200,000</span></p></td><td width="66" style="border:solid windowtext 1.0pt;background:white;"><p class="MsoNormal" align="center" style="margin-left:0cm;text-align:center;"><span style="font-size:7.5pt;font-family:;" "="">-</span></p></td><td width="66" style="border:solid windowtext 1.0pt;background:white;"><p class="MsoNormal" align="center" style="margin-left:0cm;text-align:center;"><span style="font-size:7.5pt;font-family:;" "="">-</span></p></td></tr><tr><td width="86" style="border:solid windowtext 1.0pt;background:white;"><p class="MsoNormal" align="center" style="margin-left:0cm;text-align:center;"><span style="font-size:7.5pt;font-family:;" "="">营运汽车<span></span></span></p></td><td width="76" style="border:solid windowtext 1.0pt;background:white;"><p class="MsoNormal" align="center" style="margin-left:0cm;text-align:center;"><span style="font-size:7.5pt;font-family:;" "="">100,000</span></p></td><td width="66" style="border:solid windowtext 1.0pt;background:white;"><p class="MsoNormal" align="center" style="margin-left:0cm;text-align:center;"><span style="font-size:7.5pt;font-family:;" "="">-</span></p></td><td width="66" style="border:solid windowtext 1.0pt;background:white;"><p class="MsoNormal" align="center" style="margin-left:0cm;text-align:center;"><span style="font-size:7.5pt;font-family:;" "="">-</span></p></td></tr><tr><td width="103" style="border:solid windowtext 1.0pt;background:white;"><p class="MsoNormal" align="center" style="margin-left:0cm;text-align:center;"><span style="font-size:7.5pt;font-family:;" "="">重大疾病<span></span></span></p></td><td width="86" style="border:solid windowtext 1.0pt;background:white;"><p class="MsoNormal" align="center" style="margin-left:0cm;text-align:center;"><span style="font-size:7.5pt;font-family:;" "="">30</span><span style="font-size:7.5pt;font-family:;" "="">种重大疾病<span></span></span></p></td><td width="76" style="border:solid windowtext 1.0pt;background:white;"><p class="MsoNormal" align="center" style="margin-left:0cm;text-align:center;"><span style="font-size:7.5pt;font-family:;" "="">100,000</span></p></td><td width="66" style="border:solid windowtext 1.0pt;background:white;"><p class="MsoNormal" align="center" style="margin-left:0cm;text-align:center;"><span style="font-size:7.5pt;font-family:;" "="">-</span></p></td><td width="66" style="border:solid windowtext 1.0pt;background:white;"><p class="MsoNormal" align="center" style="margin-left:0cm;text-align:center;"><span style="font-size:7.5pt;font-family:;" "="">-</span></p></td></tr><tr><td width="103" rowspan="2" style="border:solid windowtext 1.0pt;background:white;"><p class="MsoNormal" align="center" style="margin-left:0cm;text-align:center;"><span style="font-size:7.5pt;font-family:;" "="">补充医疗</span><span style="font-size:12.0pt;font-family:宋体;"></span></p></td><td width="86" style="border:solid windowtext 1.0pt;background:white;"><p class="MsoNormal" align="center" style="margin-left:0cm;text-align:center;"><span style="font-size:7.5pt;font-family:;" "="">门急诊</span><span style="font-size:12.0pt;font-family:宋体;"></span></p></td><td width="76" style="border:solid windowtext 1.0pt;background:white;"><p class="MsoNormal" align="center" style="margin-left:0cm;text-align:center;"><span style="font-size:7.5pt;font-family:;" "="">15,000</span><span style="font-size:12.0pt;font-family:宋体;"></span></p></td><td width="66" style="border:solid windowtext 1.0pt;background:white;"><p class="MsoNormal" align="center" style="margin-left:0cm;text-align:center;"><span style="font-size:7.5pt;font-family:;" "="">200</span><span style="font-size:12.0pt;font-family:宋体;"></span></p></td><td width="66" style="border:solid windowtext 1.0pt;background:white;"><p class="MsoNormal" align="center" style="margin-left:0cm;text-align:center;"><span style="font-size:7.5pt;font-family:;" "="">80%</span><span style="font-size:12.0pt;font-family:宋体;"></span></p></td></tr><tr><td width="86" style="border:solid windowtext 1.0pt;background:white;"><p class="MsoNormal" align="center" style="margin-left:0cm;text-align:center;"><span style="font-size:7.5pt;font-family:;" "="">住院</span><span style="font-size:12.0pt;font-family:宋体;"></span></p></td><td width="76" style="border:solid windowtext 1.0pt;background:white;"><p class="MsoNormal" align="center" style="margin-left:0cm;text-align:center;"><span style="font-size:7.5pt;font-family:微软雅黑, sans-serif;">50,000</span><span style="font-size:12.0pt;font-family:宋体;"></span></p></td><td width="66" style="border:solid windowtext 1.0pt;background:white;"><p class="MsoNormal" align="center" style="margin-left:0cm;text-align:center;"><span style="font-size:7.5pt;font-family:;" "="">0</span><span style="font-size:12.0pt;font-family:宋体;"></span></p></td><td width="66" style="border:solid windowtext 1.0pt;background:white;"><p class="MsoNormal" align="center" style="margin-left:0cm;text-align:center;"><span style="font-size:7.5pt;font-family:;" "="">80%</span><span style="font-size:12.0pt;font-family:宋体;"></span></p></td></tr></tbody></table><br />'>
                            <input type="hidden" name="insuranceName" value='【极客保 - 基础版】测试'>
                        </div>
                        </if>
                    </div>
                </div>
            </div>
        </div></div>


    <div class="modal inmodal" id="add_user" tabindex="-1" role="dialog" aria-hidden="true" style="font-size: 14px;">
        <div class="modal-dialog" style="width: 700px">
            <div class="modal-content animated fadeIn">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">&times;</span><span
                                class="sr-only">Close</span>
                    </button>
                    <h3>增加成员</h3>
                    <p><span id="insurance_name">为了方便您以后的操作，请填写该成员的真实信息</span></p>
                </div>
                <div class="modal-body">
                    <form class="form-horizontal" id="add_user_form" action="http://www.insgeek.com/group/regdo" method="post">
                        <div class="form-group">
                            <label class="col-xs-4 control-label font-noraml">选择方案：</label>

                            <div class="col-xs-7">
                                <select name="eid" class="form-control">
                                    <option value="2955">【极客保 - 意外型】测试</option><option value="2958">【极客保 - 重疾型】测试</option><option value="2960">【极客保 - 医疗型】测试</option><option value="2964">【极客保 - 基础版】测试</option>                            </select>
                            </div>
                        </div>
                        <!--新增连带被保险人功能开始-->
                        <div class="form-group">
                            <label class="col-xs-4 control-label font-noraml"><span
                                        style="color: red">*</span>被保险人姓名：</label>

                            <div class="col-xs-7">
                                <div class="input-group" style="width: 100%">
                                    <select class="form-control input-group-addon" name="relType" id="relTypeId"
                                            style="width: 30%">
                                        <option value="1">本人</option>
                                        <option value="2">子女</option>
                                    </select>
                                    <input type="text" name="realname" placeholder="被保险人的真实姓名"
                                           class="form-control pull-left" style="width: 70%">
                                </div>
                            </div>
                        </div>
                        <div class="form-group discern_0">
                            <label class="col-xs-4 control-label font-noraml"><span
                                        style="color: red">*</span>被保险人证件：</label>

                            <div class="col-xs-7">
                                <div class="input-group" style="width: 100%">
                                    <select class="form-control input-group-addon pull-left" name="certType" id="certTypeId"
                                            style="width: 30%">
                                        <option value="0">身份证</option>
                                    </select>
                                    <input type="text" name="id_number" placeholder="被保险人证件号码"
                                           class="form-control pull-left" style="width: 70%">
                                </div>
                            </div>
                        </div>
                        <div class="form-group" style="display: none" id="relBirthDiv">
                            <label class="col-xs-4 control-label font-noraml"><span
                                        style="color: red">*</span>被保险人信息：</label>
                            <div class="col-xs-3" style="padding-right: 0px;">
                                <div class="base_attr pull-left">
                                    <span href="javascript:;" class="add_base_attr base_attr_on"  data-value="1">男<i></i></span>
                                    <span href="javascript:;" class="add_base_attr"  data-value="2">女<i></i></span>
                                    <input type="hidden" name="relSex" id="relSexId" />
                                </div>
                            </div>
                            <!--<label class="col-xs-1 control-label font-noraml"></label>-->
                            <div class="col-xs-4" id="relBirthParentId" style="padding-left: 46px">
                                <div class="input-group date plan_date" data-date="2017-02-12"
                                     data-date-format="yyyy-mm-dd">
                                    <span class="input-group-addon"><i class="fa fa-calendar"></i></span>
                                    <input type="text" id="relBirthDayId" name="relBirthDay" class="form-control" value=""
                                           readonly="readonly" />
                                </div>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-xs-4 control-label font-noraml">被保险人手机：</label>

                            <div class="col-xs-7">
                                <input aria-required="true" class="form-control" name="mobile"
                                       placeholder="手机号为重要信息，空号码可能影响成员的保障" required="" type="text"
                                       onkeyup="value=value.replace(/[\D]/g,'')"/>
                            </div>
                        </div>
                        <div class="form-group" style="display: none" id="mainCertCodeDiv">
                            <label class="col-xs-4 control-label font-noraml"><span
                                        style="color: red">*</span>主被保险人身份证：</label>

                            <div class="col-xs-7">
                                <input type="text" placeholder="18位身份证号码 （必须是在保成员）" class="form-control" name='mainCertCode'
                                       id="mainCertCode">
                            </div>
                        </div>

                        <!--新增连带被保险人功能结束-->
                        <div class="form-group health_insurance" style="display: none">
                            <label class="col-xs-4 control-label font-noraml"><span
                                        style="color: red">*</span>被保险人医保信息：</label>
                            <div class="col-xs-7">
                                <div class="input-group" style="width: 100%">
                                    <select class="form-control input-group-addon" name="medicare_type" style="width: 44.8%;">
                                        <option value="1">城镇职工</option>
                                        <option value="2">城镇居民</option>
                                        <option value="3">新型农村合作医疗</option>
                                        <option value="4">均未参加</option>
                                    </select>

                                    <input type="text" placeholder="点击选择医保所在地" data-prefix="add" class="form-control pull-left health_insurance_address" style="width: 55.2%;" readonly/>
                                </div>
                            </div>
                        </div>
                        <!--新增连带被保险人功能结束-->
                        <div class="form-group">
                            <label class="col-xs-4 control-label font-noraml"><span style="color: red">*</span>保障期间：</label>

                            <div class="col-xs-7">
                            <span class="input-group date plan_date startTimeBox pull-left" data-date="2017-02-12"
                                  data-date-format="yyyy-mm-dd" style="width: 45%">
                                <span class="input-group-addon"><i class="fa fa-calendar"></i></span><input type="text"
                                                                                                            name="starttime"
                                                                                                            class="form-control"
                                                                                                            value="2017-02-12"
                                                                                                            readonly="readonly"/>
                            </span>
                            <span class="input-group-addon pull-left"
                                  style="width: 10%;height: 34px;border-left: 0;border-right: 0;padding:0;line-height: 34px">至</span>
                            <span class="input-group date plan_date endTimeBox pull-left" data-date="2017-02-12"
                                  data-date-format="yyyy-mm-dd" style="width: 45%">
                                <span class="input-group-addon"><i class="fa fa-calendar"></i></span><input type="text"
                                                                                                            name="endtime"
                                                                                                            class="form-control"
                                                                                                            value="2017-02-12"
                                                                                                            readonly="readonly"/>
                            </span>
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="col-xs-7 col-xs-offset-4">
                                <button class="btn btn-primary btn_submit" type="button">确认提交</button>
                                <input type="hidden" name="add_type" value="2"/>
                                <input type="hidden" name="status" value="1"/>
                                <input type="hidden" name="new" value="1"/>
                            </div>
                        </div>
                        <div class="msg" style="text-align:center;color:#ff3300;"></div>
                    </form>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-white" data-dismiss="modal">关闭</button>
                </div>
            </div>
        </div>
    </div>


    <div aria-hidden="true" class="modal inmodal" id="two_code" role="dialog" tabindex="-1" style="font-size: 14px">
        <div class="modal-dialog">
            <div class="modal-content animated fadeIn">
                <div class="modal-header">
                    <button class="close" data-dismiss="modal" type="button">
                        <span aria-hidden="true">&times;</span><span class="sr-only">Close</span>
                    </button>
                    <h3>二维码加人</h3>
                    <h4 id="insurance_name" style="color:#ee3300;">方案名称</h4>
                    <small>请将此二维码分享给符合方案要求的团队成员，<br>系统将引导该成员填写信息并申请加入当前方案。</small>
                </div>
                <div class="modal-body text-center">
                    <img id="qrcodePic" src=""/>
                    <div id="regURl" style="-o-text-overflow: ellipsis; font-size: 16px; margin: 20px auto; overflow: hidden; text-overflow: ellipsis; white-space: nowrap; width: 75%;"></div>
                    <button class="btn btn-info" onclick="javascript:refreshQRCode( this );" style="margin-top: 15px;" type="button">刷新二维码</button>
                </div>
                <div class="modal-footer">
                    <button class="btn btn-white" data-dismiss="modal" type="button">关闭</button>
                </div>
            </div>
        </div>
    </div>

    <div class="modal inmodal" id="content_A" tabindex="-1" role="dialog" aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content animated fadeIn">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">&times;</span><span class="sr-only">Close</span>
                    </button>
                    <h3>保障方案说明</h3>
                    <small id="InsuranceNameID">副标题</small>
                </div>
                <div class="modal-body text-center" id="InsuranceContentID">
                    详细内容10000字省略
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-white" data-dismiss="modal">关闭</button>
                </div>
            </div>
        </div>
    </div>
    <div id="layer" style="width: 100%;height: 100%;z-index: 10000;position: fixed;display: none;"></div>
    <div class="layer2 _loading" style=""></div>
    <div class="load _loading">
        <img src="http://www.insgeek.com/public/insgeek2.0/img/user/loading.gif">
        <p>提交中，请稍后！</p>
    </div>
    </div>
    </div>
    </div>
{/block}

{block name="js"}
    <script src="{#static_path#}/js/plugins/bootstrap.min.js"></script>  <!-- 鼠标经过效果 以及弹窗 -->
    <script src="{#static_path#}/js/plugins/metisMenu/jquery.metisMenu.js"></script>

    <script src="{#static_path#}/js/igCustom.js"></script>
    <script src="{#static_path#}/js/group/index.js"></script>
{/block}
{*
<script src="http://www.insgeek.com/public/insgeek2.0/js/plugins/slimscroll/jquery.slimscroll.min.js"></script>*}
