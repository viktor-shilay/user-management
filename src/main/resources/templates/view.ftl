<#import "parts/overall.ftl" as o>
<#include "parts/security.ftl">
<@o.page>

<h1>User details</h1>
    <form method="post" action="/user/${userAccount.id}/status">
    <div class="container">
        <div class="row">
            <div class="col-md-5 col-xl-5">
                <div class="card m-b-10">
                    <div class="card-body row">
                        <div class="col-6">
                            <a href=""><img src="https://www.bootdey.com/img/Content/avatar/avatar7.png"
                                            class="img-fluid rounded-circle w-60"></a>
                        </div>
                        <div class="col-6 card-title align-self-center mb-0">
                            <h3>${userAccount.username}</h3>
                            <h5>${userAccount.firstName} ${userAccount.lastName}</h5>
                        </div>
                    </div>
                    <ul class="list-group list-group-flush">
                        <li class="list-group-item"><h5 class="float-right">${userAccount.role}</h5><h5>Role</h5></li>
                        <li class="list-group-item"><h5 class="float-right">${userAccount.status}</h5><h5>Status</h5></li>
                        <li class="list-group-item"><h5 class="float-right">${userAccount.createdAt}</h5><h5>Created at</h5></li>
                    </ul>

                    <#if isAdmin>

                        <#if userAccount.status == "ACTIVE">
                            <div class="card-body">
                                <div class="text-center">
                                    <button type="submit" name="submit" value="submit" id="submit" class="btn btn-primary"><i
                                                class="fa fa-fw fa-lock"></i> Lock User
                                    </button>
                                </div>
                            </div>
                        <#else>
                            <div class="card-body">
                                <div class="text-center">
                                    <button type="submit" name="submit" value="submit" id="submit" class="btn btn-primary"><i
                                                class="fa fa-fw fa-unlock"></i> Unlock User
                                    </button>
                                </div>
                            </div>
                        </#if>

                    </#if>

                </div>
            </div>
        </div>
    </div>
    </form>

</@o.page>
