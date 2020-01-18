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
        <link href="${static!}/source/css/base.css" rel="stylesheet">
        <link href="${static!}/source/css/m.css" rel="stylesheet">

        <script src="${static!}/source/js/jquery-1.8.3.min.js"></script>
        <script src="${static!}/source/js/comm.js"></script>

        <@global.head />

        <title>${title}</title>

    </head>
    <body>
    <#--  导航栏  -->
    <#include "navbar.ftl">

    <#nested />

    <#-- 公共底部代码，包含：统计代码，底部信息 -->
    <#include "footer.ftl">

    </body>

</#macro>
