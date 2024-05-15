package com.Se2.MusicPlatform.repository;

import com.Se2.MusicPlatform.model.Song;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface SongRepository extends JpaRepository<Song, Long> {
    List<Song> findBySongTitleContainingIgnoreCase(String song_title);

    List<Song> findAllByPlaylist_id(Long playlistId);
}
