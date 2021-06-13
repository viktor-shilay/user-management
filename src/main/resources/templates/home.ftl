<#include "parts/security.ftl">
<#import "parts/login.ftl" as l>
<#import "parts/overall.ftl" as o>

<@o.page>

<div class="container">
    <div class='row'>
        <div class='col d-flex justify-content-center'>
            <div class="w-auto text-center">
                <h1>Welcome!</h1>
                <#if !known>
                    <h2>Let's get started</h2>
                    <h2>Please, <a href="/login">Login</a></h2>
                </#if>
            </div>
        </div>
    </div>
</div>

</@o.page>

