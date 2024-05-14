package com.Se2.MusicPlatform.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;

import com.Se2.MusicPlatform.model.Account;
import com.Se2.MusicPlatform.repository.AccountRepository;

@Service
public class AccountDetailsService {

    @Autowired
    private AccountRepository accountRepository;

    public UserDetails loadAccountById(Long id) throws UsernameNotFoundException {
        Account account = accountRepository.findById(id).orElse(null);
        if (account == null) {
            throw new UsernameNotFoundException("Account not found with ID: " + id);
        }
        return new org.springframework.security.core.userdetails.User(account.getName(), account.getPassword(), new ArrayList<>());
    }
}
