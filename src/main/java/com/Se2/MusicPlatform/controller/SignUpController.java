package com.Se2.MusicPlatform.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;
import com.Se2.MusicPlatform.model.User;
import com.Se2.MusicPlatform.repository.UserRepository;
@RestController
public class SignUpController {

    @Autowired
    private UserRepository userRepository;

    @Autowired
    private PasswordEncoder passwordEncoder;

    @PostMapping("/api/signup")
    public ResponseEntity<String> signUp(@RequestBody User user) {
        // Check if username or email already exists
        if (userRepository.existsByUsername(user.getUsername()) || userRepository.existsByEmail(user.getEmail())) {
            return ResponseEntity.status(HttpStatus.CONFLICT).body("Username or email already exists");
        }
        // Encrypt password
        user.setPassword(passwordEncoder.encode(user.getPassword()));
        // Save user to database
        userRepository.save(user);
        return ResponseEntity.ok("User registered successfully");
    }
}
