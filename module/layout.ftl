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
        <#--Font Awesome 图标库-->
        <link href="https://cdn.bootcss.com/font-awesome/5.11.2/css/all.min.css" rel="stylesheet">
        <link href="${static!}/source/css/base.css" rel="stylesheet">
        <link href="${static!}/source/css/m.css" rel="stylesheet">
        <#--页面公用的CSS-->
        <link rel="stylesheet" href="${static!}/source/css/style.css">

        <script src="${static!}/source/js/jquery-1.8.3.min.js"></script>
        <script src="${static!}/source/js/comm.js"></script>
        <script type="text/javascript" src="${static!}/source/js/index.js"></script>


        <#--文章界面需要引入的CSS-->
        <#if is_post??>
            <link rel="stylesheet" href="${static!}/source/css/post.css">
        </#if >

        <style>
            /* 全局a标签的颜色 */
            a {
                color: ${settings.link_color?default('#007bff')};
                text-decoration: none !important;
            }

            /* 全局a标签划过的样式 */
            a:hover {
                color: ${settings.hover_color?default('#dc3545')};
                text-decoration: none !important;
            }

        </style>

        <@global.head />
        <title>${title}</title>

    </head>
    <body>
    <#--  导航栏  -->
    <#include "navbar.ftl">

    <#nested />

    <#-- 公共底部代码，包含：统计代码，底部信息 -->
    <#include "footer.ftl">

    <div id="backTop" class="back-top">
        <span><i class="fas fa-caret-up"></i></span>
    </div>
    </body>

</#macro>
