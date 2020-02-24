<#include "module/layout.ftl">
<@layout title="搜索 : ${keyword!} | ${options.blog_title!}"
keywords="${options.seo_keywords!}"
description="${options.seo_description!}">

<#--左侧-->
    <#include "module/search/left.ftl">
<#--右侧-->
    <#include "module/search/right.ftl">

</@layout>


