{extends file="template/front.tpl"}

{block name="title"}批量加人流程{/block}

{block name="container"}
    <div class="wrapper wrapper-content">
        <div class="container">
            <div class="row">

                {include file="template/sidebar.tpl"}

                <div class="col-xs-10">
                    <div class="ibox float-e-margins">
                        <div class="ibox-title">
                            <form action="http://www.insgeek.com/Service/down_load_file" method="post">
                                <input type="hidden" name="group_id" value="61249"/>
                                <span>批量加人流程<a type="button" class="btn btn-primary btn-xs pull-right" href='flow_batch.html'>重新上传</a>
					<button type="submit" class="btn btn-primary btn-xs pull-right" style="margin-right: 20px">下载excel模板</button></span>
                            </form>
                        </div>
                        <div class="ibox-content" id="loading">
                            <div class="spiner-example" style="height: 300px">
                                <div class="loading" style="height: 200px"></div>
                            </div>
                        </div>
                        <!--连带被保险人显示模板 start-->
                        <!--连带被保险人显示模板 end-->


                        <!--医保信息模板 连带子女 start-->
                        <!--医保信息模板 连带子女 end-->

                        <!--医保信息模板 非连带子女 start-->
                        <div class="ibox-content">
                            <table class="table-bordered table-lian table-hover tooltip-demo">
                                <thead>
                                <tr>
                                    <th colspan="13" style="text-align: left;background: #ffffff;padding: 10px;font-size: 14px">
                                        本次批量上传人员共 <span class="text-info">1</span> 人，已上传人员信息错误为 <span class="table-error">1</span> 条
                                        <!--，总预计保费<span class="table-error">￥0</span>-->
                                        <div class="alert alert-danger text-center" style="display:none" id="verify_failID">
                                            <p id="max_person_error_msg"></p>
                                            <p id="avg_error_msg"></p>
                                        </div>
                                    </th>
                                </tr>
                                <tr>
                                    <th style="width: 10%" class="text-center">序号</th>
                                    <th style="width: 15%">姓名<br />证件号码</th>
                                    <th style="width: 15%">手机号码</th>
                                    <th style="width: 20%;">医保信息</th>
                                    <th style="width: 20%">方案名称</th>
                                    <th style="width: 20%">保障期间</th>
                                    <!--<th style="width: 50px" class="text-center">预计保费</th>-->
                                </tr>
                                </thead>
                                <tbody>
                                <tr>
                                    <td class="text-center">
                                        <span data-toggle="tooltip" data-placement="top" class="table-error">1</span>                </td>
                                    <td>
                                        <p>
                                            老王                                                </p>
                                        <p style="margin-bottom: 0">
                                            411322198904092998                                                </p>
                                    </td>
                                    <td>
                                        <span data-toggle="tooltip" data-placement="top" data-original-title="手机格式错误" class="table-error">111111</span>                </td>
                                    <td>
                                        <p>不需要</p>                </td>
                                    <td>
                                        【极客保 - 意外型】测试                                        </td>
                                    <td>
                                        <p>
                                            <span class="label" style="padding: 3px">起</span>
                                            <span data-toggle="tooltip" data-placement="top" data-original-title="生效日期不在规定范围内" class="table-error">
                                                                            2017-01-01                                </span>                    </p>
                                        <p style="margin-bottom: 0">
                                            <span class="label" style="padding: 3px">止</span>
                                            <span>2017-08-08</span>
                                        </p>
                                    </td>
                                    <!--<td class="text-center">-->
                                    <!--￥-->
                                    <!--</td>-->
                                </tr>        </tbody>
                                <tfoot>
                                <tr>
                                    <td colspan="13" style="color: #676a6c">
                                        注意： <span class="table-error">红色标示</span> 位置为错误信息，请再次核实上传内容，如有疑问请拨打客服电话：400-886-2309
                                    </td>
                                </tr>
                                </tfoot>
                            </table>
                            <div class="text-center" style="margin-top: 20px">
                                <a href='flow_batch.html' class="btn btn-w-m btn-white">重新上传</a>
                            </div>
                        </div>        <!--医保信息模板 非连带子女 end-->


                    </div>
                </div>
            </div>
        </div>
    </div>

    <div class="layer2 _loading" style=""></div>

    <div class="load _loading">
        <img src="http://www.insgeek.com/public/insgeek2.0/img/user/loading.gif">
        <p>提交中，请稍后！</p>
    </div>
{/block}
