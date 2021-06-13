package by.shilay.app.usermanagement.service.impl;

import by.shilay.app.usermanagement.model.UserAccount;
import by.shilay.app.usermanagement.repository.UserAccountRepository;
import by.shilay.app.usermanagement.service.api.UserAccountService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;

import java.time.LocalDate;
import java.util.Optional;

@Service
public class UserAccountServiceImpl implements UserAccountService {

    private final UserAccountRepository userAccountRepository;
    private final PasswordEncoder passwordEncoder;

    @Autowired
    public UserAccountServiceImpl(UserAccountRepository userAccountRepository, PasswordEncoder passwordEncoder) {
        this.userAccountRepository = userAccountRepository;
        this.passwordEncoder = passwordEncoder;
    }

    @Override
    public Page<UserAccount> findAll(Pageable pageable) {
        return userAccountRepository.findAll(pageable);
    }

    @Override
    public UserAccount findOne(Long id) {
        Optional<UserAccount> userAccount = userAccountRepository.findById(id);
        return userAccount.orElse(null);
    }

    @Override
    public void create(UserAccount userAccount) {
        userAccount.setPassword(passwordEncoder.encode(userAccount.getPassword()));
        userAccount.setCreatedAt(LocalDate.now());
        userAccountRepository.save(userAccount);
    }

    @Override
    public void update(Long id, UserAccount userAccount) {
        UserAccount userAccountById = findOne(id);
        userAccountById.setFirstName(userAccount.getFirstName());
        userAccountById.setLastName(userAccount.getLastName());
        userAccountById.setUsername(userAccount.getUsername());
        userAccountById.setPassword(passwordEncoder.encode(userAccount.getPassword()));
        userAccountById.setRole(userAccount.getRole());
        userAccountById.setStatus(userAccount.getStatus());
        userAccountRepository.save(userAccountById);
    }

    @Override
    public UserAccount findByUsername(String username) {
        return userAccountRepository.findUserAccountByUsername(username);
    }

    @Override
    public void updateStatus(Long id) {
        UserAccount userAccountById = findOne(id);
        if (userAccountById.getStatus().equals("ACTIVE")) {
            userAccountById.setStatus("INACTIVE");
        } else {
            userAccountById.setStatus("ACTIVE");
        }
        userAccountRepository.save(userAccountById);
    }
}
