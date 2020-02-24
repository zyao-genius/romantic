<#--分类界面的左边ok-->
<div class="lbox">
    
    <#if (category.name)?? && category.name != ''>
        <div class="whitebg lanmu">
            <#--<img src="images/lm04.jpg">-->
            <h1>${category.name!}</h1>
            <#if (category.description)?? && category.description != ''>
                <p>${category.description!}</p>
            </#if>
        </div>
    </#if>

    <div class="whitebg bloglist">
        <h2 class="htitle">
            <span class="con_nav">
                您现在的位置是:
                <a href="${context!}">首页</a>
                > 分类列表 > ${category.name!}
            </span>    
            最新博文
        </h2>
        <ul>
            <#include "../personalblog/list_item.ftl">
            <#list posts.content as post>
                <@listItem post=post />
            </#list>
            <#--分页-->
            <#include "../pagination/pagination.ftl">
            <@pagination posts=posts rainbow=rainbow slugName=category.slugName/>

        </ul>
    </div>
</div>
