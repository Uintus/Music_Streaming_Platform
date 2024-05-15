package com.Se2.MusicPlatform.repository;

import com.Se2.MusicPlatform.model.*;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface PlaylistRepository extends JpaRepository<Playlist, Long> {
}
