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
                            <div>
                                <span>批量加人流程
                                    <a type="button" class="btn btn-primary btn-xs pull-right" href='/group/excelPage'>重新上传</a>
                                    <button type="submit" class="btn btn-primary btn-xs pull-right" onclick="location.href='/批量上传模板.xlsx'" style="margin-right: 20px">下载excel模板</button
                                </span>
                            </div>
                        </div>


                        <div class="ibox-content">

                            <table class="table-bordered table-lian table-hover tooltip-demo">
                                <thead>
                                <tr>
                                    <th colspan="13" style="text-align: left;background: #ffffff;padding: 10px;font-size: 14px">
                                        本次批量上传人员共 <span class="text-info">{if !empty($data.list)}{$data.list|count}{else}0{/if}</span> 人，已上传人员信息错误为 <span class="table-error">{$data.has_error}</span> 条
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
                                {if !empty($data.list)}
                                    {foreach from=$data.list item=lists key=num}
                                        <tr>
                                            <td class="text-center">
                                                {if in_array(1, $data.error[$num])}<span data-toggle="tooltip" data-placement="top" class="table-error">{/if}
                                                    {$key + 1}
                                                {if in_array(1, $data.error[$num])}</span>{/if}
                                            </td>
                                            <td>
                                                <p {if !empty($data.error[$num][0])}class="table-error"{/if}>{$lists[0]}</p>
                                                <p {if !empty($data.error[$num][1])}class="table-error"{/if} style="margin-bottom: 0">{if !empty($lists[1])} {$lists[1]} {else} 无效值 {/if}</p>
                                            </td>
                                            <td>
                                                {if !empty($data.error[$num][2])}<span data-toggle="tooltip" data-placement="top" data-original-title="手机格式错误" class="table-error">{/if}
                                                    {if !empty($lists[2])} {$lists[2]} {else} 无效值 {/if}
                                                {if !empty($data.error[$num][2])}</span>{/if}
                                            </td>
                                            <td>
                                                {if !empty($data.error[$num][5])}
                                                    不需要
                                                {else}
                                                    {$lists[4]}
                                                {/if}
                                            </td>
                                            <td>
                                                {if !empty($data.error[$num][3])}
                                                    <span data-toggle="tooltip" data-placement="top" class="table-error">无效值</span>
                                                {else}
                                                    {$lists[3]}
                                                {/if}
                                            </td>
                                            <td>
                                                <p>
                                                    <span class="label" style="padding: 3px">起</span>
                                                    {if !empty($data.error[$num][6]) || empty($lists[6])}<span data-toggle="tooltip" data-placement="top" data-original-title="生效日期不在规定范围内" class="table-error">{/if}
                                                         {if !empty($lists[6])} {$lists[6]} {else}无效值{/if}
                                                    {if !empty($data.error[$num][6]) || empty($lists[6])}</span>{/if}
                                                </p>
                                                <p style="margin-bottom: 0">
                                                    <span class="label" style="padding: 3px">止</span>
                                                    {if !empty($data.error[$num][7]) || empty($lists[7])}<span data-toggle="tooltip" data-placement="top" data-original-title="生效日期不在规定范围内" class="table-error">{/if}
                                                        {if !empty($lists[7])} {$lists[7]} {else}无效值{/if}
                                                    {if !empty($data.error[$num][7]) || empty($lists[7])}</span>{/if}
                                                </p>
                                            </td>
                                        </tr>
                                    {/foreach}

                                {/if}
                                </tbody>

                                {if !empty($data.has_error)}
                                    <tfoot>
                                    <tr>
                                        <td colspan="13" style="color: #676a6c">
                                            注意： <span class="table-error">红色标示</span> 位置为错误信息，请再次核实上传内容，如有疑问请拨打客服电话：400-886-2309
                                        </td>
                                    </tr>
                                    </tfoot>
                                {/if}
                            </table>

                            <div class="text-center" style="margin-top: 20px">
                                {if !empty($data.has_error)}
                                    <a href='/group/excelPage' class="btn btn-w-m btn-white">重新上传</a>
                                {else}
                                    <a href='javascript:void(0)' id="uploadList" class="btn btn-w-m btn-white">立即提交</a>
                                {/if}
                            </div>

                        </div>

                    </div>
                </div>
            </div>
        </div>
    </div>
{/block}

{block name="js"}
    <script>var listData = '{if !empty($data.data)}{$data.data}{/if}';</script>
    <script src="{#static_path#}/js/plugins/jquery.metisMenu.js"></script>
    <script src="{#static_path#}/js/group/upload.js"></script>
{/block}
