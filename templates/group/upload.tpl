
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
                                <form id="uploadFormID" action="/group/postExcel" method="post" enctype="multipart/form-data">
                                    <h3>1.请选择保障方案成员excel文件
                                        <span style="position:relative;">
                                        <input type="file" name="upload" onchange="document.getElementById('viewfile').value=this.value.substring(12);this.style.display='none';" style="position:absolute; left:0px; top:0px;width: 88px;height: 35px; display:none;filter:alpha(opacity=0);opacity:0" id="upload" />
                                        <a href="#" onMouseOver="document.getElementById('upload').style.display='block';" class="btn btn-primary"> 选择文件</a>
                                    </span>
                                    </h3>

                                    <div class="hr-line-dashed"></div>

                                    <div class="input-group" style="width: 330px;margin: auto">
                                        <input type="text" id="viewfile" onmouseout="document.getElementById('upload').style.display='none';"  class="form-control">
                                        <span class="input-group-btn"><button type="submit" name="upload" id="uploadID" class="btn btn-default" disabled>上传文档</button></span>
                                    </div>
                                </form>
                            </div>
                        </div>

                    </div>
                </div>
            </div>
        </div>
    </div>
{/block}

{block name="js"}
    <script src="{#static_path#}/js/plugins/jquery.metisMenu.js"></script>
    <script src="{#static_path#}/js/group/upload.js"></script>
{/block}