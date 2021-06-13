<#import "parts/overall.ftl" as o>
<#import "parts/pager.ftl" as p>
<#include "parts/security.ftl">
<@o.page>
    <div class="container-xl">
        <div class="table-responsive">
            <div class="table-wrapper">
                <div class="table-title">
                    <div class="row">
                        <div class="col-sm-6">
                            <h2>Manage Users</h2>
                        </div>
                        <#if isAdmin>
                            <div class="col-sm-6">
                                <a href="/user/new" class="btn btn-success"><i class="material-icons">&#xE147;</i> <span>Add New User</span></a>
                            </div>
                        </#if>
                    </div>
                </div>
                <table class="table table-hover">
                    <thead>
                    <tr>
                        <th>Username</th>
                        <th>First Name</th>
                        <th>Last Name</th>
                        <th>Role</th>
                        <th>Status</th>
                        <th>Created At</th>
                        <th>Actions</th>
                    </tr>
                    </thead>
                    <tbody>
                    <#list page.content as userAccount>
                    <tr>
                        <td>${userAccount.username}</td>
                        <td>${userAccount.firstName}</td>
                        <td>${userAccount.lastName}</td>
                        <td>${userAccount.role}</td>
                        <td>${userAccount.status}</td>
                        <td>${userAccount.createdAt}</td>
                        <td>
                            <a href="/user/${userAccount.id}" class="details"><i class="material-icons" data-toggle="tooltip" title="Details">&#xe85e;</i></a>
                            <#if isAdmin>
                                <a href="/user/${userAccount.id}/edit" class="edit"><i class="material-icons" data-toggle="tooltip" title="Edit">&#xE254;</i></a>
                            </#if>
                        </td>
                    </tr>
                    </#list>
                    </tbody>
                </table>
                <@p.pager "" page/>
            </div>
        </div>
    </div>
</@o.page>
