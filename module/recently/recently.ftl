<div class="whitebg notice">
    <h2 class="htitle">最近更新</h2>
    <ul>
        <@postTag method="latest" top="4">
            <#list posts as post>
                <li><a href="/archives/${post.url!}">${post.title!}</a></li>
            </#list>
        </@postTag>
    </ul>
</div>
