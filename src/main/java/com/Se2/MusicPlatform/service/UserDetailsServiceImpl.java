package com.Se2.MusicPlatform.service;

import com.Se2.MusicPlatform.model.Account;
import com.Se2.MusicPlatform.repository.AccountRepository;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;

@Service
public class UserDetailsServiceImpl implements UserDetailsService {

    @Autowired
    private AccountRepository accountRepository;

    @Override
    public UserDetails loadUserByUsername(String accountName) throws UsernameNotFoundException {
        Account account = accountRepository.findByAccountName(accountName);
        if (account == null) {
            throw new UsernameNotFoundException("Account not found with account name: " + accountName);
        }
        return new org.springframework.security.core.userdetails.User(account.getAccount_name(), account.getAccount_password(), new ArrayList<>());
    }
}
