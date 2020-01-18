<#macro articleProfiles post>
    <#--日期-->
    <span class="mr-3">
        <i class="fas fa-calendar-alt mr-2"></i>${post.createTime?string["yyyy年MM月dd日"]!}
    </span>
    <#--多少次浏览-->
    <span>
        <i class="fas fa-eye mr-2"></i>${post.visits!}次浏览
    </span>
</#macro>
