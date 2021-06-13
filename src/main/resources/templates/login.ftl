<#import "parts/overall.ftl" as o>
<@o.page>

    <div class="col-md-12">
        <div class="card card-container">
            <img id="profile-img" src="//ssl.gstatic.com/accounts/ui/avatar_2x.png" class="profile-img-card"/>
            <form name="form" class="form-horizontal" action="/login" method="post">
                <div class="form-group">
                    <label for="username">Username</label>
                    <input type="text" class="form-control" name="username" placeholder="Enter username">
                    <i class="fa fa-user-circle-o" aria-hidden="true"></i>
                </div>
                <div class="form-group">
                    <label for="password">Password</label>
                    <input type="password" class="form-control" name="password" placeholder="Password"/>
                    <i class="fa fa-lock"></i>
                </div>
                <div class="form-group">
                    <button class="btn btn-primary btn-block" type="submit">
                        Login
                    </button>
                </div>
            </form>
            <#if RequestParameters.error??>
                <div class="alert alert-danger" role="alert">
                    ${Session.SPRING_SECURITY_LAST_EXCEPTION.message}
                </div>
            </#if>
        </div>
    </div>

</@o.page>

