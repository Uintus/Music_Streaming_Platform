package com.Se2.MusicPlatform.service;

import com.Se2.MusicPlatform.model.Account;
import com.Se2.MusicPlatform.repository.AccountRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;

@Service
public class AuthService {
    
    @Autowired
    private AccountRepository accountRepository;

    @Autowired
    private PasswordEncoder passwordEncoder;

    public void registerUser(String accountName, String password, String email) {
        Account account = new Account();
        account.setAccount_name(accountName);
        account.setAccount_password(passwordEncoder.encode(password));
        account.setEmail(email);
        accountRepository.save(account);
    }
}
