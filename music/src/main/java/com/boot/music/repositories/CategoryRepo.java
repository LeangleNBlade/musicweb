package com.boot.music.repositories;

import org.springframework.data.jpa.repository.JpaRepository;

import com.boot.music.entity.Category;

public interface CategoryRepo extends JpaRepository<Category, Integer>{

}
