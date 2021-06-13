<#import "parts/overall.ftl" as o>
<@o.page>

    <h1>Create User</h1>

    <form method="post" action="/user/new">
        <div class="form-group col-sm-6">
            <label>Username <span class="text-danger">*</span></label>
            <input type="text" name="username" class="form-control ${(usernameError??)?string('is-invalid', '')}" placeholder="Enter Username"
                   value="<#if userAccount??>${userAccount.username}</#if>">
            <#if usernameError??>
                <div class="invalid-feedback">
                    ${usernameError}
                </div>
            </#if>
        </div>
        <div class="form-group col-sm-6">
            <label>Password<span class="text-danger">*</span></label>
            <input type="password" name="password" class="form-control ${(passwordError??)?string('is-invalid', '')}" placeholder="Enter Password">
            <#if passwordError??>
                <div class="invalid-feedback">
                    ${passwordError}
                </div>
            </#if>
        </div>
        <div class="form-group col-sm-6">
            <label>First Name<span class="text-danger">*</span></label>
            <input type="text" name="firstName" class="form-control ${(firstNameError??)?string('is-invalid', '')}" placeholder="Enter First Name"
                   value="<#if userAccount??>${userAccount.firstName}</#if>">
            <#if firstNameError??>
                <div class="invalid-feedback">
                    ${firstNameError}
                </div>
            </#if>
        </div>
        <div class="form-group col-sm-6">
            <label>Last Name<span class="text-danger">*</span></label>
            <input type="text" name="lastName" class="form-control ${(lastNameError??)?string('is-invalid', '')}" placeholder="Enter Last Name"
                   value="<#if userAccount??>${userAccount.lastName}</#if>">
            <#if lastNameError??>
                <div class="invalid-feedback">
                    ${lastNameError}
                </div>
            </#if>
        </div>
        <div class="form-group col-sm-6">
            <label>Role<span class="text-danger">*</span></label>
            <select class="form-control" name="role">
                <option selected>Choose role...</option>
                <option>ADMIN</option>
                <option>USER</option>
            </select>
        </div>
        <div class="form-group col-sm-6">
            <label>Status<span class="text-danger">*</span></label>
            <select class="form-control" name="status">
                <option selected>Choose status...</option>
                <option>ACTIVE</option>
                <option>INACTIVE</option>
            </select>
        </div>
        <div class="form-group col-sm-6">
            <button type="submit" name="submit" value="submit" id="submit" class="btn btn-primary"><i class="fa fa-fw fa-plus-circle"></i> Add User</button>
        </div>
    </form>

</@o.page>
