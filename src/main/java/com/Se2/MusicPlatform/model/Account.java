package com.Se2.MusicPlatform.model;


import jakarta.persistence.*;
import java.util.List;

@Entity
public class Account {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long account_id;

    private String account_name;
    private String account_password;

    private String email;

    @ManyToOne
    @JoinColumn(name = "user_id")
    private End_User user;

    @OneToMany
    private List<Playlist> playlist;

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public List<Playlist> getPlaylist() {
        return playlist;
    }

    public void setPlaylist(List<Playlist> playlist) {
        this.playlist = playlist;
    }

    public Long getAccount_id() {
        return account_id;
    }

    public void setAccount_id(Long account_id) {
        this.account_id = account_id;
    }

    public String getAccount_name() {
        return account_name;
    }

    public void setAccount_name(String name) {
        this.account_name = name;
    }

    public String getAccount_password() {
        return account_password;
    }

    public void setAccount_password(String password) {
        this.account_password = password;
    }

    public End_User getUser() {
        return user;
    }

    public void setUser(End_User user) {
        this.user = user;
    }
}
