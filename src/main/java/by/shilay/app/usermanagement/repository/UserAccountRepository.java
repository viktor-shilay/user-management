package by.shilay.app.usermanagement.repository;

import by.shilay.app.usermanagement.model.UserAccount;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface UserAccountRepository extends JpaRepository<UserAccount, Long> {
    Page<UserAccount> findAll(Pageable pageable);

    UserAccount findUserAccountByUsername(String username);
}
