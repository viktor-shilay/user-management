<#import "parts/overall.ftl" as o>
<@o.page>

    <h1>Edit user</h1>

    <form method="post" action="/user/${userAccount.id}/edit">
        <div class="form-group col-sm-6">
            <label>Username</label>
            <input type="text" name="username" class="form-control ${(usernameError??)?string('is-invalid', '')}" value="${userAccount.username}">
            <#if usernameError??>
                <div class="invalid-feedback">
                    ${usernameError}
                </div>
            </#if>
        </div>
        <div class="form-group col-sm-6">
            <label>Password</label>
            <input type="password" name="password" class="form-control ${(passwordError??)?string('is-invalid', '')}"
                   placeholder="Enter Password">
            <#if passwordError??>
                <div class="invalid-feedback">
                    ${passwordError}
                </div>
            </#if>
        </div>
        <div class="form-group col-sm-6">
            <label>First Name</label>
            <input type="text" name="firstName" class="form-control ${(firstNameError??)?string('is-invalid', '')}" value="${userAccount.firstName}">
            <#if firstNameError??>
                <div class="invalid-feedback">
                    ${firstNameError}
                </div>
            </#if>
        </div>
        <div class="form-group col-sm-6">
            <label>Last Name</label>
            <input type="text" name="lastName" class="form-control ${(lastNameError??)?string('is-invalid', '')}" value="${userAccount.lastName}">
            <#if lastNameError??>
                <div class="invalid-feedback">
                    ${lastNameError}
                </div>
            </#if>
        </div>
        <div class="form-group col-sm-6">
            <label>Role</label>
            <select class="form-control" name="role">
                <#if userAccount.role == "ADMIN">
                    <option selected>${userAccount.role}</option>
                    <option>USER</option>
                <#else>
                    <option selected>${userAccount.role}</option>
                    <option>ADMIN</option>
                </#if>
            </select>
        </div>
        <div class="form-group col-sm-6">
            <label>Status</label>
            <select class="form-control" name="status">
                <#if userAccount.status == "ACTIVE">
                    <option selected>${userAccount.status}</option>
                    <option>INACTIVE</option>
                    <#else>
                        <option selected>${userAccount.status}</option>
                        <option>ACTIVE</option>
                </#if>
            </select>
        </div>
        <div class="form-group col-sm-6">
            <button type="submit" name="submit" value="submit" id="submit" class="btn btn-primary"><i class="fa fa-fw fa-pencil"></i> Edit User</button>
        </div>
    </form>

</@o.page>
