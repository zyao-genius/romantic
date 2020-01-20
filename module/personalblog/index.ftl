<div class="whitebg bloglist">
    <h2 class="htitle">我的博客</h2>
    <ul>

        <#--文章列表 start-->
        <#include "list_item.ftl"/>
        <#list posts.content as post>
            <@listItem post=post />
        </#list>
        <#--文章列表 end-->

        <#--分页-->
        <#include "../pagination/pagination.ftl">
        <@pagination posts=posts rainbow=rainbow/>

        <!--多图模式 置顶设计-->
        <#--<li>
            <h3 class="blogtitle"><a href="/" target="_blank"><b>【顶】</b>别让这些闹心的套路，毁了你的网页设计!</a></h3>
            <span class="bplist"><a href="/"> <img src="${static!}/source/images/b02.jpg" alt=""></a> <a href="/"><img src="${static!}/source/images/b03.jpg" alt=""></a> <a href="/"><img src="${static!}/source/images/b04.jpg" alt=""> </a><a href="/"><img src="${static!}/source/images/b05.jpg" alt=""> </a></span>
            <p class="blogtext">如图，要实现上图效果，我采用如下方法：1、首先在数据库模型，增加字段，分别是图片2，图片3。2、增加标签模板，用if，else if 来判断，输出。思路已打开，样式调用就可以多样化啦！... </p>
            <p class="bloginfo"><i class="avatar"><img src="${static!}/source/images/avatar.jpg"></i><span>杨青青</span><span>2018-10-28</span><span>【<a href="/">原创模板</a>】</span></p>
        </li>-->
        <!--单图-->

        <#--<li>
            <h3 class="blogtitle"><a href="/" target="_blank">【个人博客网站制作】自己不会个人博客网站制作，你会选择用什么博客程序源码？</a></h3>
            <span class="blogpic imgscale"><i><a href="/">原创模板</a></i><a href="/" title=""><img
                            src="${static!}/source/images/b05.jpg" alt=""></a></span>
            <p class="blogtext">
                这些开源的博客程序源码，都是经过很多次版本测试的，都有固定的使用人群。我所知道的主流的博客程序有，Z-blog，Emlog，WordPress，Typecho等，免费的cms系统有，织梦cms（dedecms），phpcms，帝国cms（EmpireCMS）！... </p>
            <p class="bloginfo"><i class="avatar">
                    <img src="${user.avatar!}"></i><span>杨青青</span><span>2018-10-28</span><span>【<a
                            href="/">原创模板</a>】</span>
            </p>
        </li>-->

    </ul>
</div>
