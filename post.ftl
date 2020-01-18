
<#include "module/layout.ftl">
<@layout title="${post.title!} | ${options.blog_title!}"
keywords="${options.seo_keywords!}"
description="${post.title!}">

    <#-- 主容器 -->
    <article>
        <#--左侧-->
        <#include "module/post/left.ftl">


        <#--右侧-->
    </article>


</@layout>
