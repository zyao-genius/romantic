<div class="lbox">
    <div class="whitebg bloglist">

        <#if keyword?trim != ''>
            <#if (posts.content)?? && posts.content?size lte 0>
            <#--无结果-->
                <div class="alert alert-danger mt-4" role="alert">
                    <i class="far fa-tired mr-2"></i>
                    没有查询到"${keyword!}"的结果
                </div>
            <#--图标提示-->
                <div class="d-flex flex-column align-items-center mt-5 pt-5">
                    <span class="text-muted"><i class="fas fa-inbox fa-7x"></i></span>
                    <span class="text-muted mt-4 mb-5">啥都没有找到，到<a class="font-weight-bold" href="${context!}">主页</a>看看吧</span>
                </div>
            <#else >
            <#--提示查询关键字-->
                <div class="alert alert-success mt-4" role="alert" style="margin-bottom: 2.5rem">
                    <i class="fas fa-search mr-2"></i>以下是"${keyword!}"的查询结果
                </div>
            </#if>
        </#if>

        <#--左边的文章列表 start-->
        <#include "../personalblog/list_item.ftl"/>
        <#list posts.content as post>
            <@listItem post=post />
        </#list>
        <#--左边的文章列表 end-->

        <#--分页-->
        <#include "../pagination/pagination.ftl">
        <@pagination posts=posts rainbow=rainbow keyword=keyword/>
    </div>
</div>
