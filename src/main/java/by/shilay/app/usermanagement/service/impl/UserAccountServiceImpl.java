package by.shilay.app.usermanagement.service.impl;

import by.shilay.app.usermanagement.exception.UserAccountNotFoundException;
import by.shilay.app.usermanagement.model.UserAccount;
import by.shilay.app.usermanagement.repository.UserAccountRepository;
import by.shilay.app.usermanagement.service.api.UserAccountService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.time.LocalDate;
import java.util.Optional;

@Transactional
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
    @Transactional(readOnly = true)
    public Page<UserAccount> findAll(Pageable pageable) {
        return userAccountRepository.findAll(pageable);
    }

    @Override
    @Transactional(readOnly = true)
    public UserAccount findOne(Long id) throws UserAccountNotFoundException {
        Optional<UserAccount> userAccount = userAccountRepository.findById(id);
        return userAccount.orElseThrow(() -> new UserAccountNotFoundException(id));
    }

    @Override
    public void create(UserAccount userAccount) {
        userAccount.setPassword(passwordEncoder.encode(userAccount.getPassword()));
        userAccount.setCreatedAt(LocalDate.now());
        userAccountRepository.save(userAccount);
    }

    @Override
    public void update(Long id, UserAccount userAccount) throws UserAccountNotFoundException {
        userAccount.setPassword(passwordEncoder.encode(userAccount.getPassword()));
        LocalDate getCreatedDate = findOne(id).getCreatedAt();
        userAccount.setCreatedAt(getCreatedDate);
        userAccountRepository.save(userAccount);
    }

    @Override
    @Transactional(readOnly = true)
    public UserAccount findByUsername(String username) {
        return userAccountRepository.findUserAccountByUsername(username);
    }

    @Override
    public void updateStatus(Long id) throws UserAccountNotFoundException {
        UserAccount userAccountById = findOne(id);
        if (userAccountById.getStatus().equals("ACTIVE")) {
            userAccountById.setStatus("INACTIVE");
        } else {
            userAccountById.setStatus("ACTIVE");
        }
        userAccountRepository.save(userAccountById);
    }
}
