<#-- 首页界面ok -->
<#--界面，间距，颜色，功能，逻辑-->
<#include "module/layout.ftl">
<@layout title="首页 | ${options.blog_title!}"
keywords="${options.seo_keywords!}"
description="${options.seo_description!}">
    <article>
        <div class="lbox">
            <#--轮播图-->
            <#include "module/looppicture/loop.ftl">

            <#--大字标题-->
            <#include "module/headline/headline.ftl">

            <#--专题-->
            <#include "module/zhuanti/zhuanti.ftl">

            <#--广告位-->
           <#-- <#include "module/adsense/adsense1.ftl">-->


        </div>
    </article>
</@layout>
