<#macro pager url page>

    <#if page.getTotalPages() gt 7>
        <#assign
        totalPages = page.getTotalPages()
        pageNumber = page.getNumber() + 1

        head = (pageNumber > 4)?then([1, -1], [1, 2, 3])
        tail = (pageNumber < totalPages - 3)?then([-1, totalPages], [totalPages - 2, totalPages - 1, totalPages])
        bodyBefore = (pageNumber > 4 && pageNumber < totalPages - 1)?then([pageNumber - 2, pageNumber - 1], [])
        bodyAfter = (pageNumber > 2 && pageNumber < totalPages - 3)?then([pageNumber + 1, pageNumber + 2], [])

        body = head + bodyBefore + (pageNumber > 3 && pageNumber < totalPages - 2)?then([pageNumber], []) + bodyAfter + tail
        >
    <#else>
        <#assign body = 1..page.getTotalPages()>
    </#if>

    <div class="clearfix">
        <div class="hint-text mg">
            <ul class="pagination">
                <li class="page-item disabled page-link nonborder">Items per page</li>
                <#list [5, 10] as c>
                    <#if c == page.getSize()>
                        <li class="page-item active">
                            <a href="${urlAddress}" class="page-link">${c}</a>
                        </li>
                    <#else>
                        <li class="page-item">
                            <a href="${urlAddress}/?page=${page.getNumber()+1}&size=${c}" class="page-link">${c}</a>
                        </li>
                    </#if>
                </#list>
            </ul>
        </div>
            <ul class="pagination">
                <li class="page-item disabled">
                    <a href="${urlAddress}/?page=${page.getNumber()}&size=${page.getSize()}">Previous</a>
                </li>
                <#list body as p>
                    <#if p == page.getNumber() + 1>
                        <li class="page-item active">
                            <a href="${urlAddress}" class="page-link">${p}</a>
                        </li>
                    <#elseif p == -1>
                        <li class="page-item disabled">
                            <a href="${urlAddress}" class="page-link">...</a>
                        </li>
                    <#else>
                        <li class="page-item">
                            <a href="${urlAddress}/?page=${p}&size=${page.getSize()}" class="page-link">${p}</a>
                        </li>
                    </#if>
                </#list>
                <li class="page-item">
                    <#if page.getNumber() == page.getTotalPages()-1>
                        <a href="${urlAddress}/?page=${page.getNumber()+1}&size=${page.getSize()}">Next</a>
                    <#else>
                        <a href="${urlAddress}/?page=${page.getNumber()+2}&size=${page.getSize()}">Next</a>
                    </#if>
                </li>
            </ul>
    </div>

</#macro>
