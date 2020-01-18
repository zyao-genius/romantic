
<#--主页的一个文章列表项ok-->
<#macro listItem post>

    <#--一个列表项-->
    <li>
        <h3 class="blogtitle"><a href="/archives/${post.url!}">${post.title!}</a></h3>
        <#--缩略图-->
        <#if (post.thumbnail)?? && post.thumbnail?trim != ''>
            <span class="blogpic imgscale">
                <i><a href="#">原创模板</a></i>
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
                <img src="http://49.235.173.40:8090/upload/2020/1/edison-b67a8fa9e387480a91eb5eadb2855e96.jpg" />
            </i>
            <span>zyao</span><span>${post.createTime?string["yyyy年MM月dd日"]!}</span><span>【<a href="/">原创模板</a>】</span>
        </p>
    </li>
</#macro>