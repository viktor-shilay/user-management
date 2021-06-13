package by.shilay.app.usermanagement.util;

import by.shilay.app.usermanagement.model.UserAccount;
import by.shilay.app.usermanagement.service.api.UserAccountService;
import org.springframework.stereotype.Component;
import org.springframework.validation.Errors;
import org.springframework.validation.Validator;

@Component
public class UserAccountValidator implements Validator {

    private final UserAccountService userAccountService;

    public UserAccountValidator(UserAccountService userAccountService) {
        this.userAccountService = userAccountService;
    }

    @Override
    public boolean supports(Class<?> clazz) {
        return UserAccount.class.equals(clazz);
    }

    @Override
    public void validate(Object target, Errors errors) {
        UserAccount userAccount = (UserAccount) target;
        if (userAccountService.findByUsername(userAccount.getUsername()) != null) {
            errors.rejectValue("username", "", "This username is already taken!");
        }
    }
}
