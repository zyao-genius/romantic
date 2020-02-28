<link rel="stylesheet" href="${static!}/source/live2d/assets/waifu.css">
<script src="${static!}/source/live2d/assets/waifu-tips.js"></script>
<script src="${static!}/source/live2d/assets/live2d.js"></script>

<div class="waifu" style="right: 30px">
    <canvas id="live2d" class="live2d" width="280px" height="250px"></canvas>
</div>
<script>
    $(function () {
        live2d_settings['modelId'] = 1;
        live2d_settings['modelTexturesId'] = 20;
        live2d_settings['modelTexturesRandMode']= 'switch';
        live2d_settings['waifuEdgeSide'] = 'right:30';
        live2d_settings['modelAPI'] = '${static!}/source/live2d/model/Potion-Maker/Pio/skinjson/hanbok-costume-red.json';

        //loadlive2d('live2d', '${static!}/source/live2d/model/Potion-Maker/Pio/index.json');
        loadlive2d('live2d', '${static!}/source/live2d/model/Potion-Maker/Tia/index.json');
        //initModel("${static!}/source/live2d/assets/waifu-tips.json", "${static!}")
    });
</script>