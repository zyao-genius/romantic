
<#--主页的一个文章列表项ok-->
<#macro listItem post>

<#--一个列表项-->
    <li data-scroll-reveal>
        <h3 class="blogtitle"><a href="/archives/${post.url!}">${post.title!}</a></h3>
        <#--缩略图-->
        <#if (post.thumbnail)?? && post.thumbnail?trim != ''>
            <span class="blogpic imgscale">
                <i><a href="#">杂谈</a></i>
                <a href="/" title="">
                    <img src="${post.thumbnail!}" alt="${post.title!}">
                </a>
            </span>
        </#if>
        <#--文章摘要-->
        <p class="blogtext">
            ${post.summary!}
        </p>
        <p class="bloginfo">
            <i class="avatar">
                <img src="${user.avatar!}"/>
            </i>
            <span>${user.nickname!}</span><span>${post.createTime?string["yyyy年MM月dd日"]!}</span>
            <#if (post.categories)?? && post.categories?size != 0>
                <#list post.categories as category>
                    <span>【<a href="/categories/${category.slugName}">${category.name}</a>】</span>
                </#list>
            </#if>
        </p>
    </li>
</#macro>
<script src="${static!}/source/js/scrollReveal.js"></script>
<script src="${static!}/source/js/initScrollReveal.js"></script>