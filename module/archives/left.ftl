<div class="lbox">

    <div class="whitebg timebox">
        <h2 class="htitle">往期文章</h2>
        <ul>
            <#include "archive_item.ftl">
            <@postTag method="archiveMonth">
                <#list archives as archive>
                    <@archiveItem archive=archive/>
                </#list>
            </@postTag>
        </ul>
        <div class="clear"></div>
        
    </div>
</div>