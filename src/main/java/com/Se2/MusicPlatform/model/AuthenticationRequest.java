package com.Se2.MusicPlatform.model;

public class AuthenticationRequest {
    
    private String name;
    private String password;
    private Long Id;
    public void setId(Long id) {
        this.Id = id;
    }
    public Long getId() {
        return Id;
    }
    public String getName() {
        return name;
    }
    public void setName(String name) {
        this.name = name;
    }
    public String getPassword() {
        return password;
    }
    public void setPassword(String password) {
        this.password = password;
    }    
}
