<#include "security.ftl">
<#import "login.ftl" as l>

<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
    <a class="navbar-brand" href="/">User management</a>
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
    </button>

    <div class="collapse navbar-collapse" id="navbarSupportedContent">
        <ul class="navbar-nav mr-auto">
            <li class="nav-item ">
                <a class="nav-link" href="/">Home</a>
            </li>
            <#if known>
            <li class="nav-item">
                <a class="nav-link" href="/user">Users</a>
            </li>
            </#if>
        </ul>
        <div class="navbar-text mr-4"><#if user??>${name}</#if></div>
        <#if known>
            <div class="form-inline">
                <@l.logout/>
            </div>
        </#if>
    </div>
</nav>
