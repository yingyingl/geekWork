{extends file="template/front.tpl"}

{block name="title"}成员管理统计{/block}

{block name="css"}{/block}

{block name="container"}
    <div class="wrapper wrapper-content">
        <div class="container">
            <div class="row">

                {include file="template/sidebar.tpl"}

                <div id="page" data-page="user_s"></div>

                <div class="col-xs-10">
                    <div class="ibox float-e-margins">
                        <div class="ibox-title"><span>成员管理统计</span></div>

                        <div class="ibox-content">
                            <h3><span class="label" style="background-color: #00ab9f">&nbsp;</span><small> 增加成员</small> <span class="label" style="background-color: #464f88">&nbsp;</span><small> 减少成员 记录</small></h3>

                            <div style="padding-bottom: 20px;">
                                <canvas id="linkChart" height="60"></canvas>
                            </div>

                            <table class="table table-hover">
                                <thead>
                                <tr>
                                    <th>成员加减记录</th>
                                    <th>操作</th>
                                    <th>日期</th>
                                </tr>
                                </thead>
                                <tbody>
                                <tr>
                                    <td>用户 <strong>是是是</strong> 被添加到 [ 【极客保 - 医疗型】测试 ] 中</td>
                                    <td class="text-navy">增加成员</td>
                                    <td>2017-02-02 14:29:59</td>
                                </tr>
                                <tr>
                                    <td>用户 <strong>飞飞</strong> 被添加到 [ 【极客保 - 医疗型】测试 ] 中</td>
                                    <td class="text-navy">增加成员</td>
                                    <td>2017-02-02 14:27:53</td>
                                </tr>
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
{/block}

{block name="js"}
    <script>
        var charData=$.parseJSON('[{ "year": "2017","month":"1","type":"1","usernum":"4"}, { "year": "2017","month":"1","type":"2","usernum":"2"},{ "year":"2017","month":"1","type":"5","usernum":"2"},{ "year": "2017","month":"2","type":"1","usernum":"7"}]');
    </script>
    <script src="{#static_path#}/js/plugins/Chart.min.js"></script>
    <script src="{#static_path#}/js/group/statistical.js"></script>
{/block}