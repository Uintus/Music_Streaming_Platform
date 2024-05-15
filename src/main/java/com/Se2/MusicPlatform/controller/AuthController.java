package com.Se2.MusicPlatform.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import com.Se2.MusicPlatform.service.*;
import com.Se2.MusicPlatform.model.*;
import com.Se2.MusicPlatform.repository.AccountRepository;
@RestController
@RequestMapping("/auth")
public class AuthController {
      @Autowired
    private AccountRepository accountRepository;

    @Autowired
    private AuthService authService;

    @PostMapping("/register")
    public ResponseEntity<String> register(@RequestBody RegistrationRequest registrationRequest) {
        authService.registerUser(registrationRequest.getName(), registrationRequest.getPassword(), registrationRequest.getEmail());
        return ResponseEntity.ok("User registered successfully");
    }
    public boolean existsByAccountName(String name) {
        return accountRepository.existsByAccountName(name);
    }

    @PostMapping("/signin")
    public ResponseEntity<String> signIn() {
        // Implement sign-in logic
        Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
        String username = authentication.getName();
        return ResponseEntity.ok("Signed in successfully as: " + username);
    }

    @PostMapping("/signout")
    public ResponseEntity<String> signOut() {
        // Implement sign-out logic
        SecurityContextHolder.clearContext();
        return ResponseEntity.ok("Signed out successfully");
    }
}
