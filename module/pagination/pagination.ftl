<#--带keyword是搜索页的分页 否则是主页的分页-->
<#macro pagination posts rainbow keyword='' slugName=''>
    <#if posts.getTotalPages() gt 0>
        <section id="pagination" class="mt-5 mb-lg-3 d-flex justify-content-center">
            <nav aria-label="切换上下页">
                <ul class="pagination">
                    <#--上一页部分-->
                    <li class="page-item <#if posts.number lte 0>disabled</#if>">
                        <#if posts.number lte 0>
                            <#if keyword?has_content>
                                <a class="page-link" href="${context!}/search/page/1?keyword=${keyword!}" tabindex="-1"
                                   aria-disabled="true">&laquo;</a>
                            <#elseif slugName?has_content>
                                <a class="page-link" href="${context!}/categories/${slugName}/page/1" tabindex="-1"
                                   aria-disabled="true">&laquo;</a>
                            <#else >
                                <a class="page-link" href="${context!}" tabindex="-1" aria-disabled="true">&laquo;</a>
                            </#if>
                        <#else >
                            <#if keyword?has_content>
                                <a class="page-link" href="${context!}/search/page/${posts.number}?keyword=${keyword!}"
                                   aria-label="上一页">
                                    <span aria-hidden="true">&laquo;</span>
                                </a>
                            <#elseif slugName?has_content>
                                <a class="page-link"
                                   href="${context!}/categories/${slugName}/page/${posts.number}"
                                   aria-label="上一页">
                                    <span aria-hidden="true">&laquo;</span>
                                </a>
                            <#else >
                                <a class="page-link" href="${context!}/page/${posts.number}" aria-label="上一页">
                                    <span aria-hidden="true">&laquo;</span>
                                </a>
                            </#if>
                        </#if>
                    </li>
                    <#--页码部分-->
                    <#list rainbow as r>
                        <#if r == posts.number + 1>
                            <li class="page-item active" aria-current="page">
                                <a class="page-link" href="javascript:void(0)">${posts.number + 1} <span
                                            class="sr-only">(current)</span></a>
                            </li>
                        <#else >
                            <#if keyword?has_content>
                                <li class="page-item">
                                    <a href="${context!}/search/page/${r}?keyword=${keyword!}"
                                       class="page-link">${r}
                                    </a>
                                </li>
                            <#elseif slugName?has_content>
                                <li class="page-item">
                                    <a href="${context!}/categories/${slugName}/page/${r}"
                                       class="page-link">${r}
                                    </a>
                                </li>
                            <#else >
                                <li class="page-item">
                                    <a class="page-link" href="${context!}/page/${r}">${r}</a>
                                </li>
                            </#if>
                        </#if>
                    </#list>
                    <#--下一页部分-->
                    <li class="page-item <#if posts.getTotalPages() lte posts.number + 1>disabled</#if>">
                        <#if posts.getTotalPages() lte posts.number + 1>
                            <a class="page-link" href="javascript:void(0)" tabindex="-1"
                               aria-disabled="true">&raquo;</a>
                        <#else >
                            <#if keyword?has_content>
                                <a class="page-link"
                                   href="${context!}/search/page/${posts.number + 2}?keyword=${keyword!}"
                                   aria-label="下一页">
                                    <span aria-hidden="true">&raquo;</span>
                                </a>
                            <#elseif slugName?has_content>
                                <a class="page-link"
                                   href="${context!}/categories/${slugName}/page/${posts.number + 2}"
                                   aria-label="下一页">
                                    <span aria-hidden="true">&raquo;</span>
                                </a>
                            <#else >
                                <a class="page-link" href="${context!}/page/${posts.number + 2}" aria-label="下一页">
                                    <span aria-hidden="true">&raquo;</span>
                                </a>
                            </#if>
                        </#if>
                    </li>
                </ul>
            </nav>
        </section>
    </#if>
</#macro>