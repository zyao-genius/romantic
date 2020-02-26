<link rel="stylesheet" href="${static!}/source/live2d/assets/waifu.css">
<script src="${static!}/source/live2d/assets/waifu-tips.js"></script>
<script src="${static!}/source/live2d/assets/live2d.js"></script>

<div class="waifu">
    <div class="waifu-tips"></div>
    <canvas id="live2d" class="live2d"></canvas>
    <div class="waifu-tool">
        <span class="fui-home"></span>
        <span class="fui-chat"></span>
        <span class="fui-eye"></span>
        <span class="fui-user"></span>
        <span class="fui-photo"></span>
        <span class="fui-info-circle"></span>
        <span class="fui-cross"></span>
    </div>
</div>
<script>
    $(function () {
        /*live2d_settings['modelId'] = 2;
        live2d_settings['modelTexturesId'] = 87;*/
        live2d_settings['modelTexturesRandMode']= 'switch';
        live2d_settings['waifuEdgeSide'] = 'right:30';

        initModel("${static!}/source/live2d/assets/waifu-tips.json")
    });
</script>