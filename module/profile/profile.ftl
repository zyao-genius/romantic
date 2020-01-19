<#--主页的用户信息ok-->
<div class="card">
    <#--<h2>我的名片</h2>
    <p>网名：devin | 即步非烟</p>
    <p>职业：java开发工程师</p>
    <p>现居：上海市</p>
    <p>Email：edisonyyao@163.com</p>-->
    <#--<ul class="linkmore">
        <li><a href="http://www.yangqq.com" target="_blank" class="iconfont icon-zhuye" title="网站地址"></a></li>
        <li><a href="http://mail.qq.com/cgi-bin/qm_share?t=qm_mailme&email=HHh9cn95b3F1cHVye1xtbTJ-c3E" target="_blank" class="iconfont icon-youxiang" title="我的邮箱"></a></li>
        <li><a href="http://wpa.qq.com/msgrd?v=3&uin=476847113&site=qq&menu=yes" target="_blank" class="iconfont icon---" title="QQ联系我"></a></li>
        <li id="weixin"><a href="#" target="_blank" class="iconfont icon-weixin" title="关注我的微信"></a><i><img src="${static!}/source/images//wx.png"></i></li>
    </ul>-->

    <#--头像和个人信息-->
    <div class="mt-4 mb-4point5 w-100 d-flex justify-content-center">
        <#--头像部分-->
        <div class="w-50 text-right mr-3">
            <i style="display: inline-block;
                    width: 6.5rem; height: 6.5rem;
                    background-image: url('${user.avatar!}');
                    background-size: cover;"
               class="rounded-circle"></i>
        </div>

        <#--个人信息部分-->
        <div class="w-50 text-left ml-3 d-flex flex-column justify-content-center">
            <span class="h4 d-block">${user.nickname!}</span>
            <#if (settings.user_location)?? && settings.user_location?trim != ''>
                <span class="text-muted text-truncate">
                            <i class="fas fa-map-marker-alt mr-1"></i>
                            ${settings.user_location!}
                        </span>
            </#if>
        </div>
    </div>

    <#--分割线-->
    <div class="w-100 border-top"></div>

    <#--数量统计部分-->
    <div class="mt-4 w-100 d-flex justify-content-around">
        <div class="w-100 text-center">
            <small class="text-muted">文章数量</small>
            <span class="d-block h2 mt-2">
                        <@postTag method="count">
                            ${count!}
                        </@postTag>
                    </span>
        </div>
        <div class="w-100 text-center">
            <small class="text-muted">分类数量</small>
            <span class="d-block h2 mt-2">
                        <@categoryTag method="count">
                            ${count!}
                        </@categoryTag>
                    </span>
        </div>
        <div class="w-100 text-center">
            <small class="text-muted">标签数量</small>
            <span class="d-block h2 mt-2">
                        <@tagTag method="count">
                            ${count!}
                        </@tagTag>
                    </span>
        </div>
    </div>
    <div class="mb-4 mt-n2">
        <#if (user.description)?? && user.description?trim != ''>
            <span class="d-block text-center text-muted px-3">${user.description!}</span>
        </#if>
    </div>

</div>
