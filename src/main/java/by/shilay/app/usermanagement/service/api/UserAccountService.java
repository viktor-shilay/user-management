package by.shilay.app.usermanagement.service.api;

import by.shilay.app.usermanagement.exception.UserAccountNotFoundException;
import by.shilay.app.usermanagement.model.UserAccount;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;

public interface UserAccountService {
    Page<UserAccount> findAll(Pageable pageable);

    UserAccount findOne(Long id) throws UserAccountNotFoundException;

    void create(UserAccount userAccount);

    void update(Long id, UserAccount userAccount) throws UserAccountNotFoundException;

    UserAccount findByUsername(String username);

    void updateStatus(Long id) throws UserAccountNotFoundException;
}
