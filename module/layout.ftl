<#--用来做HTML大概的框架，和一些重要的css和js文件的引入-->
<#macro layout title,keywords,description>
<!DOCTYPE html>
<html lang="zh">
<head>
    <meta charset="UTF-8">
    <#--防止用户缩放-->
    <meta name="viewport"
          content="width=device-width,
                  initial-scale=1,
                  minimum-scale=1.0,
                  maximum-scale=1.0,
                  user-scalable=no,
                  shrink-to-fit=no">
    <#if is_post??>
        <meta name="keywords"
              content="<#if (post.tags)??><#list post.tags as tag>${tag.name}<#sep>,</#list></#if>"/>
    <#else>
        <meta name="keywords" content="${keywords!}"/>
    </#if>
    <meta name="description" content="${description!}"/>
    <meta name="site" content="${context!}"/>

    <#--引用公共的css和js-->
    <link href="https://cdn.bootcss.com/twitter-bootstrap/4.3.1/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="${static!}/source/live2d/assets/waifu.css">
    <#--<link rel="stylesheet" href="//code.jquery.com/ui/1.10.4/themes/smoothness/jquery-ui.css">-->
    <#--Font Awesome 图标库-->
    <link href="https://cdn.bootcss.com/font-awesome/5.11.2/css/all.min.css" rel="stylesheet">
    <link href="${static!}/source/css/base.css" rel="stylesheet">
    <link href="${static!}/source/css/global.css" rel="stylesheet">
    <#--页面公用的CSS-->
    <link rel="stylesheet" href="${static!}/source/css/style.css">

    <script src="${static!}/source/js/jquery-1.8.3.min.js"></script>
    <script src="${static!}/source/live2d/assets/live2d.js"></script>
    <script src="${static!}/source/js/jquery-ui.min.js"></script>
    <script src="${static!}/source/js/jquery.ui.touch-punch.min.js"></script>
    <script>
        window.onload = function () {
            loadlive2d('live2d', '${static!}/source/live2d/model/xxban/model.json');
            $( "#live2d" ).draggable();
        }
    </script>
    <#--<script src="${static!}/source/live2d/assert/jquery.min.js"></script>-->
    <script src="${static!}/source/js/comm.js"></script>
    <script type="text/javascript" src="${static!}/source/js/index.js"></script>

    <#--文章界面需要引入的CSS-->
    <#if is_post??>
        <link rel="stylesheet" href="${static!}/source/css/post.css">
        <script src="https://cdn.bootcss.com/clipboard.js/2.0.4/clipboard.min.js"></script>
        <script src="https://cdn.bootcss.com/fancybox/3.5.7/jquery.fancybox.min.js"></script>
        <#--<script type="text/javascript" src="${static!}/source/js/post.js"></script>-->
    </#if >

    <style>
        /* 全局a标签的颜色 */
        a {
            color: ${settings.link_color?default('#333')};
            text-decoration: none !important;
        }

        /* 全局a标签划过的样式 */
        a:hover {
            color: ${settings.hover_color?default('#dc3545')};
            text-decoration: none !important;
        }

        /* 阅读进度的进度条颜色 */
        #readProgress .read-progress-bar {
            background: ${settings.progress_color?default('#dc3545')} !important;
            height: 0.1875rem;
        }

    </style>

    <@global.head />
    <title>${title}</title>

</head>
<body>
<#--  导航栏  -->
<#include "navigation/navbar.ftl">

<#--主容器-->
<article>
    <#nested />
</article>
<#-- 公共底部代码，包含：统计代码，底部信息 -->
<#include "footer/footer.ftl">

<#include "live2d/live2d.ftl">
<#--回到顶部箭头-->
<#include "backtop/backtop.ftl">

</body>

</#macro>
