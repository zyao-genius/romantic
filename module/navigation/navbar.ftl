<#--导航栏ok-->
<header id="header">
    <div class="navbox">
        <h2 id="mnavh"><span class="navicon"></span></h2>
        <div class="logo"><a href="${context!}">${options.blog_title!}</a></div>

        <nav>
            <ul id="starlist">
                <#-- ?sort_by('priority')：根据菜单的排序编号排序 有子菜单的再遍历子菜单仅支持一级子菜单-->
                <@menuTag method="tree">
                    <#list menus?sort_by('priority') as menu>
                        <#if menu.children?? && menu.children?size gt 0>
                            <li class="menu"><a href="javascript:void(0)" target="${menu.target!}"> ${menu.name!}</a>
                                <ul class="sub">
                                    <#list menu.children as children>
                                        <li>
                                            <a href="<#if children.url?starts_with("/")>${children.url!}<#else>/${children.url!}</#if>" target="${children.target!}">
                                                ${children.name}
                                            </a>
                                        </li>
                                    </#list>
                                </ul>
                            </li>
                        <#else >
                            <li><a href="<#if menu.url?starts_with("/")>${menu.url!}<#else>/${menu.url!}</#if>" target="${menu.target!}"> ${menu.name!}</a></li>
                        </#if>
                    </#list>
                </@menuTag>

                <#--分类菜单-->
                <@categoryTag method="list">
                    <#if categories?? && categories?size gt 0>
                        <li class="menu"><a href="javascript:void(0)">分类</a>
                            <ul class="sub">
                                <#list categories as categorie>
                                    <li>
                                        <a href="/categories/${categorie.slugName}">${categorie.name}
                                            (${categorie.postCount!})
                                        </a>
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
        <form method="get" action="/search">
            <input name="keyword" id="keyboard" class="input_text" value="请输入关键字词" style="color: rgb(153, 153, 153);" onfocus="if(value=='请输入关键字词'){this.style.color='#000';value=''}" onblur="if(value==''){this.style.color='#999';value='请输入关键字词'}" type="text">
            <button class="input_submit" type="submit">搜索</button>
        </form>
    </div>
    <div class="searchclose"></div>
</div>
