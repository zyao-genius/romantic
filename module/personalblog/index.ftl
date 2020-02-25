<div class="whitebg bloglist">
    <h2 class="htitle">我的博客</h2>
    <ul>

        <#--文章列表 start-->
        <#include "list_item.ftl"/>
        <#list posts.content as post>
            <@listItem post=post />
        </#list>
        <#--文章列表 end-->

        <#--分页-->
        <#include "../pagination/pagination.ftl">
        <@pagination posts=posts rainbow=rainbow/>

    </ul>
</div>
