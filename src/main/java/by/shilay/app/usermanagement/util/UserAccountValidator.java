package by.shilay.app.usermanagement.util;

import by.shilay.app.usermanagement.model.UserAccount;
import by.shilay.app.usermanagement.repository.UserAccountRepository;
import org.springframework.stereotype.Component;
import org.springframework.validation.Errors;
import org.springframework.validation.Validator;

@Component
public class UserAccountValidator implements Validator {

    private final UserAccountRepository userAccountRepository;

    public UserAccountValidator(UserAccountRepository userAccountRepository) {
        this.userAccountRepository = userAccountRepository;
    }

    @Override
    public boolean supports(Class<?> clazz) {
        return UserAccount.class.equals(clazz);
    }

    @Override
    public void validate(Object target, Errors errors) {
        UserAccount userAccount = (UserAccount) target;
        if (userAccountRepository.existsUserAccountByUsername(userAccount.getUsername())) {
            errors.rejectValue("username", "", "This username is already taken!");
        }
    }
}
