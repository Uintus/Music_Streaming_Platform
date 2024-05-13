package com.Se2.MusicPlatform.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;
import com.Se2.MusicPlatform.model.*;

@Repository
public interface UserRepository extends JpaRepository <User, Long> {
}
