<#--导航栏ok-->
<header id="header">
    <div class="navbox">
        <h2 id="mnavh"><span class="navicon"></span></h2>
        <div class="logo"><a href="${context!}">${options.blog_title!}</a></div>

        <nav>
            <ul id="starlist">
                <#-- ?sort_by('priority')：根据菜单的排序编号排序 -->
                <@menuTag method="list">
                    <#list menus?sort_by('priority') as menu>
                        <li><a href="<#if menu.url?starts_with("/")>${menu.url!}<#else>/${menu.url!}</#if>" target="${menu.target!}"> ${menu.name!}</a></li>
                    </#list>
                </@menuTag>

                <@categoryTag method="list">
                    <#if categories?? && categories?size gt 0>
                        <li class="menu"><a href="#">分类</a>
                            <ul class="sub">
                                <#list categories as categorie>
                                    <li><a href="/categories/${categorie.slugName}">${categorie.name}
                                            (${categorie.postCount!})</a>
                                    </li>
                                </#list>
                            </ul>
                        </li>
                    </#if>
                </@categoryTag>
            </ul>
        </nav>
        <div class="searchico"></div>
    </div>
</header>

<div class="searchbox">
    <div class="search">
        <form action="/e/search/index.php" method="post" name="searchform" id="searchform">
            <input name="keyboard" id="keyboard" class="input_text" value="请输入关键字词" style="color: rgb(153, 153, 153);" onfocus="if(value=='请输入关键字词'){this.style.color='#000';value=''}" onblur="if(value==''){this.style.color='#999';value='请输入关键字词'}" type="text">
            <input name="show" value="title" type="hidden">
            <input name="tempid" value="1" type="hidden">
            <input name="tbname" value="news" type="hidden">
            <input name="Submit" class="input_submit" value="搜索" type="submit">
        </form>
    </div>
    <div class="searchclose"></div>
</div>
