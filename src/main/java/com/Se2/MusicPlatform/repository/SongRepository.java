package com.Se2.MusicPlatform.repository;

import com.Se2.MusicPlatform.model.Song;
import org.springframework.data.jpa.repository.JpaRepository;

public interface SongRepository extends JpaRepository<Song, Long> {
}
