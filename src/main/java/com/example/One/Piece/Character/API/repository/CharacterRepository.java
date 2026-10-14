package com.example.One.Piece.Character.API.repository;
import com.example.One.Piece.Character.API.entity.AnimeCharacter;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface CharacterRepository
        extends JpaRepository<AnimeCharacter, Long> {
}
