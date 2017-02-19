{extends file="template/front.tpl"}

{block name="title"}成员管理统计{/block}

{block name="css"}{/block}

{block name="container"}
    <div class="wrapper wrapper-content">
        <div class="container">
            <div class="row">

                {include file="template/sidebar.tpl"}

                <div id="page" data-page="user_s"></div>

                <div class="col-xs-10 iboxlist" data-type="1" data-id="1" data-load="true">
                    <div class="ibox float-e-margins">
                        <div class="ibox-title"><span>成员管理统计</span></div>

                        <div class="ibox-content">
                            <h3><span class="label" style="background-color: #00ab9f">&nbsp;</span><small> 增加成员</small> <span class="label" style="background-color: #464f88">&nbsp;</span><small> 减少成员 记录</small></h3>

                            <div style="padding-bottom: 20px;">
                                <canvas id="linkChart" height="60"></canvas>
                            </div>

                            <div class="dataTables_wrapper">
                                <p class="ajax-loading"></p>

                                <table class="table table-hover">
                                    <thead><tr><th>成员加减记录</th><th>操作</th><th>日期</th></tr></thead>
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