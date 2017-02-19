{extends file="template/front.tpl"}

{block name="title"}报销统计{/block}

{block name="css"}{/block}

{block name="container"}
    <div class="wrapper wrapper-content">
        <div class="container">
            <div class="row">

                {include file="template/sidebar.tpl"}

                <div id="page" data-page="lipei_s"></div>

                <div class="col-xs-10 iboxlist" data-type="0" data-id="1" data-load="true">
                    <div class="ibox float-e-margins">
                        <div class="ibox-title"><span>报销统计</span></div>

                        <div class="ibox-content">
                            <h3>保障方案报销记录&nbsp;&nbsp;&nbsp;&nbsp;<span class="label" style="background-color: #8DD9CA">&nbsp;</span><small> 申请报销的次数</small></h3>

                            <div style="padding-bottom: 20px;">
                                <canvas id="barChart" height="60"></canvas>
                            </div>

                            <div class="dataTables_wrapper">
                                <p class="ajax-loading"></p>

                                <table class="table table-hover">
                                    <thead><tr><th>报销记录</th><th>状态</th><th>费用报销日期</th></tr></thead>
                                    <tbody></tbody>
                                </table>

                                <div class="pagination-list clearfix" id="pagination1"></div>
                            </div>

                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
{/block}

{block name="js"}
    <script>
        var charData = '{if !empty($data.statistics_data)}{$data.statistics_data}{/if}';
    </script>
    <script src="{#static_path#}/js/plugins/jquery.metisMenu.js"></script>
    <script src="{#static_path#}/js/plugins/Chart.min.js"></script>
    <script src="{#static_path#}/js/plugins/pagination.js"></script>   <!-- 分页 -->
    <script src="{#static_path#}/js/group/statistical.js"></script>
{/block}