package com.Se2.MusicPlatform.model;

import jakarta.persistence.*;

import java.util.List;

@Entity
public class Singer {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "singer_id", nullable = false)
    private Long singer_id;
    private String name;
    private String image;

    @OneToMany
    List<Song> songs;

    public Long getSinger_id() {
        return singer_id;
    }

    public void setSinger_id(Long singer_id) {
        this.singer_id = singer_id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getImage() {
        return image;
    }

    public void setImage(String image) {
        this.image = image;
    }
}
