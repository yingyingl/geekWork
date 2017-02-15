{extends file="template/front.tpl"}

{block name="title"}报销统计{/block}

{block name="css"}{/block}

{block name="container"}
    <div class="wrapper wrapper-content">
        <div class="container">
            <div class="row">

                {include file="template/sidebar.tpl"}

                <div id="page" data-page="admin_log"></div>

                <div class="col-xs-10">
                    <div class="ibox float-e-margins">
                        <div class="ibox-title">
                            <span>操作记录 </span>
                        </div>

                        <div class="ibox-content" id="userContent">
                            <ul id="ins_tabs" class="nav-tabs">
                                <li class="active"><a data-toggle="tab" href="#tab-1" aria-expanded="true">管理记录</a></li>
                                <li><a data-toggle="tab" href="#tab-2" aria-expanded="false" class="count-info">系统记录</a></li>
                            </ul>

                            <div class="tab-content">
                                <div class="tab-pane active iboxlist" id="tab-1"  data-type="1" data-id="1" data-load="true">
                                    <p class="ajax-loading"></p>

                                    <table class="table table-hover">
                                        <thead><tr><th>操作内容</th><th style="width:120px;">操作结果</th><th>操作时间</th></tr></thead>
                                        <tbody></tbody>
                                    </table>

                                    <div class="pagination-list clearfix" id="pagination1"></div>
                                </div>

                                <div class="tab-pane iboxlist" id="tab-2"  data-type="0" data-id="0" data-load="true">
                                    <p class="ajax-loading"></p>

                                    <table class="table table-hover">
                                        <thead><tr><th>操作内容</th><th>操作时间</th></tr></thead>
                                        <tbody></tbody>
                                    </table>

                                    <div class="pagination-list clearfix" id="pagination0"></div>
                                </div>
                            </div>

                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
{/block}

{block name="js"}
    <script src="{#static_path#}/js/plugins/metisMenu/jquery.metisMenu.js"></script>
    <script src="{#static_path#}/js/plugins/pagination.js"></script>   <!-- 分页 -->
    <script src="{#static_path#}/js/group/adminLog.js"></script>
{/block}