<#-- 首页界面ok -->
<#--界面，间距，颜色，功能，逻辑-->
<#include "module/layout.ftl">
<@layout title="首页 | ${options.blog_title!}"
keywords="${options.seo_keywords!}"
description="${options.seo_description!}">
<#--左边部分-->
    <#include "module/index/left.ftl">

<#--右边部分-->
    <#include "module/index/right.ftl">
</@layout>
