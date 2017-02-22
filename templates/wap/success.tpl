{extends file="template/front-wap.tpl"}

{block name="title"}申请成功{/block}

{block name="css"}
    <style>
        body { background-color: #f3f3f3; }
    </style>
{/block}

{block name="container"}
    <img src="{#static_path#}/images/success.png" style="width: 100%;">

    <div class="weui_btn weui_btn_primary" style="margin: 0 20px;">
        <h2>成功</h2>
        <p style="font-size: 16px;">保障方案申请成功，请耐心等待申请企业的审核</p>
    </div>
{/block}

{block name="js"}{/block}