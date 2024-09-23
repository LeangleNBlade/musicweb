package com.boot.music.repositories;

import org.springframework.data.jpa.repository.JpaRepository;


import com.boot.music.entity.Song;

public interface SongRepo extends JpaRepository<Song, Integer>{
 
}
