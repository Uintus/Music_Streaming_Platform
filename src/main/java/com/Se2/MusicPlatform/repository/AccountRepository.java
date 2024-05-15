package com.Se2.MusicPlatform.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.Se2.MusicPlatform.model.Account;

@Repository
public interface AccountRepository extends JpaRepository<Account, Long> {
    Account findByAccountName(String account_name);
    boolean existsByAccountName(String account_Name);
}
