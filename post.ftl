
<#include "module/layout.ftl">
<@layout title="${post.title!} | ${options.blog_title!}"
keywords="${options.seo_keywords!}"
description="${post.title!}">
    <#--阅读进度-->
    <#if (settings.open_read_progress)?? && settings.open_read_progress?c == 'true'>
        <div id="readProgress">
            <div class="read-progress-bar" role="progressbar" style="width: 0"></div>
        </div>
    </#if>
    <#-- 主容器 -->
    <article>
        <#--左侧-->
        <#include "module/post/left.ftl">
        <#--右侧-->
        <#include "module/post/right.ftl">
    </article>
</@layout>
