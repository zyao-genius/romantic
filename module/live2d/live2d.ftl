<link rel="stylesheet" href="${static!}/source/live2d/assets/waifu.css">
<#--<link rel="stylesheet" href="//code.jquery.com/ui/1.10.4/themes/smoothness/jquery-ui.css">-->
<script src="${static!}/source/live2d/assets/jquery-ui.min.js"></script>
<script src="${static!}/source/live2d/assets/live2d.js"></script>

<div class="waifu" style="right: -70px">
    <canvas id="live2d" class="live2d" width="650" height="600"></canvas>
</div>
<script>
    $(function () {
        loadlive2d('live2d', '${static!}/source/live2d/model/xxban/model.json');
        $( "#live2d" ).draggable();
    });
</script>