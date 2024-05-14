package com.Se2.MusicPlatform.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;

import com.Se2.MusicPlatform.model.Account;
import com.Se2.MusicPlatform.repository.AccountRepository;

@RestController
public class SignUpController {

    @Autowired
    private AccountRepository accountRepository;

    @Autowired
    private PasswordEncoder passwordEncoder;

    @PostMapping("/api/signup")
    public ResponseEntity<String> signUp(@RequestBody Account account) {
        // Check if username or email already exists
        if (accountRepository.findById(account.getId()) != null) {
            return ResponseEntity.status(HttpStatus.CONFLICT).body("Username already exists");
        }
        // Encrypt password
        account.setPassword(passwordEncoder.encode(account.getPassword()));
        // Save user to database
        accountRepository.save(account);
        return ResponseEntity.ok("User registered successfully");
    }
}
