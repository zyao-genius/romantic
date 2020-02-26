<div id="content">
    <h2 class="htitle">
        <span class="con_nav">您现在的位置是:<a href="/">网站首页</a> > <a href="javascript:void(0)">博文详情</a></span>
        博文详情
    </h2>
    <h1 class="con_tilte">${post.title!}</h1>
    <p class="bloginfo">
        <i class="avatar">
            <img src="${user.avatar!}"/>
        </i>
        <span>${user.nickname!}</span>
        <span>${post.createTime?string["yyyy年MM月dd日"]!}</span>
        <#if (post.categories)?? && post.categories?size != 0>
            <#list post.categories as category>
                <span>【<a href="/categories/${category.slugName}">${category.name}</a>】</span>
            </#list>
        </#if>
        <span>${post.visits!}人已围观</span>
    </p>

    <div class="con_text">
        ${post.formatContent!}
    </div>

    <p><span class="diggit">很赞哦！ (${post.likes!})</span></p>
</div>

