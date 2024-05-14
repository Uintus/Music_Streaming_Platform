package com.Se2.MusicPlatform.repository;

import com.Se2.MusicPlatform.model.Song;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;

public interface SongRepository extends JpaRepository<Song, Long> {
    List<Song> findBySongTitleContainingIgnoreCase(String song_title);
}
