<#--一个存档列表项ok-->
<#macro archiveItem archive>
    <#list archive.posts?sort_by("createTime")?reverse as post>
        <li>
            <span>${post.createTime?string["yyyy-MM-dd"]!}</span>
            <i>
                <a href="${context!}/archives/${post.url!}">${post.title!}</a>
            </i>
        </li>
    </#list>
</#macro>