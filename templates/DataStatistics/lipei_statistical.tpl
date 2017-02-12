{extends file="template/front.tpl"}

{block name="title"}报销统计{/block}

{block name="css"}{/block}

{block name="container"}
    <div class="wrapper wrapper-content">
        <div class="container">
            <div class="row">

                {include file="template/sidebar.tpl"}

                <div id="page" data-page="lipei_s"></div>

                <div class="col-xs-10">
                    <div class="ibox float-e-margins">
                        <div class="ibox-title"><span>报销统计</span></div>

                        <div class="ibox-content">
                            <h3>保障方案报销记录&nbsp;&nbsp;&nbsp;&nbsp;<span class="label" style="background-color: #8DD9CA">&nbsp;</span><small> 申请报销的次数</small></h3>

                            <div style="padding-bottom: 20px;">
                                <canvas id="barChart" height="60"></canvas>
                            </div>

                            <table class="table table-hover">
                                <thead>
                                <tr>
                                    <th>报销记录</th>
                                    <th>状态</th>
                                    <th>费用报销日期</th>
                                </tr>
                                </thead>
                                <tbody>
                                <tr>
                                    <td >用户 <strong>王女</strong> 申请了[【极客保 - 意外型】测试]的报销</td>
                                    <td class="text-navy">用户取消理赔申请</td>
                                    <td>2017-02-02 16:16:26</td>
                                </tr>
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <input type="hidden" id="pageLipei" value="1">
{/block}

{block name="js"}
    <script>
        var charData = $.parseJSON('[{ "year": "2017", "month": "2", "usernum": "1"}]');
    </script>
    <script src="{#static_path#}/js/plugins/Chart.min.js"></script>
    <script src="{#static_path#}/js/group/statistical.js"></script>
{/block}