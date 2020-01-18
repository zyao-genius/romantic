<div class="whitebg bloglist">
    <h2 class="htitle">我的博客</h2>
    <ul>

        <#--文章-->
        <#include "list_item.ftl"/>
        <#list posts.content as post>
            <@listItem post=post />
        </#list>

        <!--多图模式 置顶设计-->
        <#--<li>
            <h3 class="blogtitle"><a href="/" target="_blank"><b>【顶】</b>别让这些闹心的套路，毁了你的网页设计!</a></h3>
            <span class="bplist"><a href="/"> <img src="${static!}/source/images/b02.jpg" alt=""></a> <a href="/"><img src="${static!}/source/images/b03.jpg" alt=""></a> <a href="/"><img src="${static!}/source/images/b04.jpg" alt=""> </a><a href="/"><img src="${static!}/source/images/b05.jpg" alt=""> </a></span>
            <p class="blogtext">如图，要实现上图效果，我采用如下方法：1、首先在数据库模型，增加字段，分别是图片2，图片3。2、增加标签模板，用if，else if 来判断，输出。思路已打开，样式调用就可以多样化啦！... </p>
            <p class="bloginfo"><i class="avatar"><img src="${static!}/source/images/avatar.jpg"></i><span>杨青青</span><span>2018-10-28</span><span>【<a href="/">原创模板</a>】</span></p>
        </li>-->
        <!--单图-->
        <li>
            <h3 class="blogtitle"><a href="/" target="_blank">【个人博客网站制作】自己不会个人博客网站制作，你会选择用什么博客程序源码？</a></h3>
            <span class="blogpic imgscale"><i><a href="/">原创模板</a></i><a href="/" title=""><img src="${static!}/source/images/b01.jpg" alt=""></a></span>
            <p class="blogtext">这些开源的博客程序源码，都是经过很多次版本测试的，都有固定的使用人群。我所知道的主流的博客程序有，Z-blog，Emlog，WordPress，Typecho等，免费的cms系统有，织梦cms（dedecms），phpcms，帝国cms（EmpireCMS）！... </p>
            <p class="bloginfo"><i class="avatar"><img src="${static!}/source/images/avatar.jpg"></i><span>杨青青</span><span>2018-10-28</span><span>【<a href="/">原创模板</a>】</span></p>
        <li>
            <h3 class="blogtitle"><a href="/" target="_blank">宝宝个人博客模板-亲子博客模板-宝宝个人网站模板</a></h3>
            <span class="blogpic imgscale"><i><a href="/">最新模板</a></i><a href="/" title=""><img src="${static!}/source/images/b02.jpg" alt=""></a></span>
            <p class="blogtext">这是一个记录宝宝成长点滴的个人博客，用作于宝宝博客，亲子博客，都是适用的。颜色为蓝色调，头部有飘动的卡通云，采用css3动画效果，布局简单，代码精简，还有相册功能，发图片，视频，时间轴可记录重要时刻，也可记录宝宝的生长发育状况，也可以统计宝宝博客网站的所有文章... </p>
            <p class="bloginfo"><i class="avatar"><img src="${static!}/source/images/avatar.jpg"></i><span>杨青青</span><span>2018-10-28</span><span>【<a href="/">最新模板</a>】</span></p>
        <li>
            <h3 class="blogtitle"><a href="/" target="_blank">如何快速建立自己的个人博客网站</a></h3>
            <span class="blogpic imgscale"><i><a href="/">快速建站</a></i><a href="/" title=""><img src="${static!}/source/images/b03.jpg" alt=""></a></span>
            <p class="blogtext">各大博客门户网站，相继关闭，做一个独立的个人博客网站，那是将来的趋势。越来越多的个人站长倾向于独立建站，有个属于自己的博客网站，那如何快速建立自己的个人博客网站呢，接下来，我就简单给大家介绍一下：以阿里云为例... </p>
            <p class="bloginfo"><i class="avatar"><img src="${static!}/source/images/avatar.jpg"></i><span>杨青青</span><span>2018-10-28</span><span>【<a href="/">快速建站</a>】</span></p>
        <li>
            <h3 class="blogtitle"><a href="/" target="_blank">作为一个设计师,如果遭到质疑你是否能恪守自己的原则?</a></h3>
            <span class="blogpic imgscale"><i><a href="/">设计制作</a></i><a href="/" title=""><img src="${static!}/source/images/b04.jpg" alt=""></a></span>
            <p class="blogtext">就拿我自己来说吧，有时候会很矛盾，设计好的作品，不把它分享出来，会觉得待在自己电脑里面实在是没有意义。干脆就发布出去吧。我也害怕收到大家不好的评论，有些评论，可能说者无意，但是对于每一个用心的站长来说，都会受很深的影响，愤怒，恼羞。... </p>
            <p class="bloginfo"><i class="avatar"><img src="${static!}/source/images/avatar.jpg"></i><span>杨青青</span><span>2018-10-28</span><span>【<a href="/">设计制作</a>】</span></p>
        <!--纯文字-->
        <li>
            <h3 class="blogtitle"><a href="/" target="_blank">别让这些闹心的套路，毁了你的网页设计!</a></h3>
            <p class="blogtext">如图，要实现上图效果，我采用如下方法：1、首先在数据库模型，增加字段，分别是图片2，图片3。2、增加标签模板，用if，else if 来判断，输出。思路已打开，样式调用就可以多样化啦！... </p>
            <p class="bloginfo"><i class="avatar"><img src="${static!}/source/images/avatar.jpg"></i><span>杨青青</span><span>2018-10-28</span><span>【<a href="/">原创模板</a>】</span></p>
        <!--单图-->
        <li>
            <h3 class="blogtitle"><a href="/" target="_blank">【个人博客网站制作】自己不会个人博客网站制作，你会选择用什么博客程序源码？</a></h3>
            <span class="blogpic imgscale"><i><a href="/">原创模板</a></i><a href="/" title=""><img src="${static!}/source/images/b01.jpg" alt=""></a></span>
            <p class="blogtext">这些开源的博客程序源码，都是经过很多次版本测试的，都有固定的使用人群。我所知道的主流的博客程序有，Z-blog，Emlog，WordPress，Typecho等，免费的cms系统有，织梦cms（dedecms），phpcms，帝国cms（EmpireCMS）！... </p>
            <p class="bloginfo"><i class="avatar"><img src="${static!}/source/images/avatar.jpg"></i><span>杨青青</span><span>2018-10-28</span><span>【<a href="/">原创模板</a>】</span></p>
        <li>
            <h3 class="blogtitle"><a href="/" target="_blank">如何快速建立自己的个人博客网站</a></h3>
            <span class="blogpic imgscale"><i><a href="/">快速建站</a></i><a href="/" title=""><img src="${static!}/source/images/b03.jpg" alt=""></a></span>
            <p class="blogtext">各大博客门户网站，相继关闭，做一个独立的个人博客网站，那是将来的趋势。越来越多的个人站长倾向于独立建站，有个属于自己的博客网站，那如何快速建立自己的个人博客网站呢，接下来，我就简单给大家介绍一下：以阿里云为例... </p>
            <p class="bloginfo"><i class="avatar"><img src="${static!}/source/images/avatar.jpg"></i><span>杨青青</span><span>2018-10-28</span><span>【<a href="/">快速建站</a>】</span></p>
        <li>
            <h3 class="blogtitle"><a href="/" target="_blank">【个人博客网站制作】自己不会个人博客网站制作，你会选择用什么博客程序源码？</a></h3>
            <span class="blogpic imgscale"><i><a href="/">原创模板</a></i><a href="/" title=""><img src="${static!}/source/images/b05.jpg" alt=""></a></span>
            <p class="blogtext">这些开源的博客程序源码，都是经过很多次版本测试的，都有固定的使用人群。我所知道的主流的博客程序有，Z-blog，Emlog，WordPress，Typecho等，免费的cms系统有，织梦cms（dedecms），phpcms，帝国cms（EmpireCMS）！... </p>
            <p class="bloginfo"><i class="avatar"><img src="${static!}/source/images/avatar.jpg"></i><span>杨青青</span><span>2018-10-28</span><span>【<a href="/">原创模板</a>】</span></p>
    </ul>
</div>
