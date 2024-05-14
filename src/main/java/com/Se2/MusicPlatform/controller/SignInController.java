package com.Se2.MusicPlatform.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.security.authentication.AuthenticationManager;
import org.springframework.security.authentication.BadCredentialsException;
import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;
import com.Se2.MusicPlatform.model.User;
import com.Se2.MusicPlatform.model.Account;
import com.Se2.MusicPlatform.model.AuthenticationRequest;
import com.Se2.MusicPlatform.model.AuthenticationResponse;
import com.Se2.MusicPlatform.model.JwtUtil;
import com.Se2.MusicPlatform.service.UserDetailsService;

@RestController
public class SignInController {

    @Autowired
    private AuthenticationManager authenticationManager;

    @Autowired
    private JwtUtil jwtUtil;

    @Autowired
    private UserDetailsService userDetailsService;

    @PostMapping("/api/signin")
    public ResponseEntity<?> signIn(@RequestBody AuthenticationRequest authenticationRequest) {
        try {
            // Authenticate user
            authenticationManager.authenticate(
                new UsernamePasswordAuthenticationToken(
                    authenticationRequest.getName(),
                    authenticationRequest.getPassword()
                )
            );
        } catch (BadCredentialsException e) {
            return ResponseEntity.status(HttpStatus.UNAUTHORIZED).body("Incorrect username or password");
        }

        // Generate JWT token
        UserDetails userDetails = userDetailsService.loadUserByName(authenticationRequest.getName());
        String jwt = jwtUtil.generateToken(userDetails);

        // Return JWT token
        return ResponseEntity.ok(new AuthenticationResponse(jwt));
    }
}
