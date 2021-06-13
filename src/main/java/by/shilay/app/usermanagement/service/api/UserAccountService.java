package by.shilay.app.usermanagement.service.api;

import by.shilay.app.usermanagement.model.UserAccount;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;

public interface UserAccountService {
    Page<UserAccount> findAll(Pageable pageable);

    UserAccount findOne(Long id);

    void create(UserAccount userAccount);

    void update(Long id, UserAccount userAccount);

    UserAccount findByUsername(String username);

    void updateStatus(Long id);
}
