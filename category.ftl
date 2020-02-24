
<#include "module/layout.ftl">
<@layout title="${category.name!} | ${options.blog_title!}"
keywords="${options.seo_keywords!}"
description="${options.seo_description!}">

<#--左边部分-->
    <#include "module/category/left.ftl">

<#--右边部分-->
    <#include "module/category/right.ftl">
    
</@layout>