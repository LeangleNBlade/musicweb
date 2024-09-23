package com.boot.music.repositories;

import org.springframework.data.jpa.repository.JpaRepository;

import com.boot.music.entity.Account;

public interface AccountRepo extends JpaRepository<Account, Integer> {

}
