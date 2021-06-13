package by.shilay.app.usermanagement.security;

import by.shilay.app.usermanagement.model.UserAccount;
import by.shilay.app.usermanagement.service.api.UserAccountService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;

@Service
public class UserDetailsServiceImpl implements UserDetailsService {

    private final UserAccountService userAccountService;

    @Autowired
    public UserDetailsServiceImpl(UserAccountService userAccountService) {
        this.userAccountService = userAccountService;
    }

    @Override
    public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {
        UserAccount userAccount = userAccountService.findByUsername(username);
        if (userAccount == null) {
            throw new UsernameNotFoundException("User with username: " + username + " not found!");
        }
        return new UserDetailsImpl(userAccount);
    }
}
