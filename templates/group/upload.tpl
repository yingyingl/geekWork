
{extends file="template/front.tpl"}

{block name="title"}批量加人流程{/block}

{block name="css"}{/block}

{block name="container"}
    <div class="wrapper wrapper-content">
        <div class="container">
            <div class="row">

                {include file="template/sidebar.tpl"}

                <div class="col-xs-10">
                    <div class="ibox float-e-margins">
                        <div class="ibox-title">
                            <span onclick="location.href='/批量上传模板.xlsx'">批量加人流程<button type="submit" class="btn btn-primary btn-xs pull-right" >下载excel模板</button></span>
                        </div>

                        <div class="ibox-content">
                            <div class="alert alert-success text-center">
                                <h3>1.请选择保障方案成员excel文件
                                    <span style="position:relative;">
                                        <input type="file" name="local_file" style="position:absolute; left:0px; top:0px;width: 88px;height: 35px;filter:alpha(opacity=0);opacity:0" id="upload" />
                                        <a href="#" class="btn btn-primary"> 选择文件</a>
                                    </span>
                                </h3>

                                <div class="hr-line-dashed"></div>
                                <div class="input-group" style="width: 330px;margin: auto">
                                    <input type="text" id="viewfile" onmouseout="document.getElementById('upload').style.display='none';"  class="form-control">
                                    <span class="input-group-btn"><button type="submit" name="upload" id="uploadID" class="btn btn-default" disabled>上传文档</button></span>
                                </div>
                            </div>
                        </div>


                        <div class="ibox-content" id="uploadList">
                            <p class="ajax-loading" style="position: relative;"></p>

                            <table class="table-bordered table-lian table-hover tooltip-demo">
                                <thead>
                                <tr>
                                    <th colspan="13" style="text-align: left;background: #ffffff;padding: 10px;font-size: 14px">
                                        本次批量上传人员共 <span class="text-info">1</span> 人，已上传人员信息错误为 <span class="table-error">1</span> 条
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
                                </tr>
                                </thead>
                                <tbody>
                                <tr><td class="text-center"><span class="table-error">1</span></td><td><p>老王</p><p style="margin-bottom: 0">411322198904092998</p></td><td><span class="table-error">111111</span></td><td><p>不需要</p></td><td>【极客保 - 意外型】测试</td><td><p><span class="label" style="padding: 3px">起</span><span class="table-error">2017-01-01</span></p><p style="margin-bottom: 0"><span class="label" style="padding: 3px">止</span><span>2017-08-08</span></p></td></tr>
                                </tbody>
                                <tfoot>
                                <tr>
                                    <td colspan="13" style="color: #676a6c">
                                        注意： <span class="table-error">红色标示</span> 位置为错误信息，请再次核实上传内容，如有疑问请拨打客服电话：400-886-2309
                                    </td>
                                </tr>
                                </tfoot>
                            </table>

                            <div class="bottomBtn text-center" style="margin-top: 20px;">
                                <a href='javascript:void(0)' class="btn btn-w-m btn-white uploadBtn">重新上传</a>
                            </div>
                        </div>




                    </div>
                </div>
            </div>
        </div>
    </div>
{/block}

{block name="js"}
    <script src="{#static_path#}/js/group/upload.js"></script>
{/block}