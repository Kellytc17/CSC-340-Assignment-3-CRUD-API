package com.example.One.Piece.Character.API.repository;
import com.example.One.Piece.Character.API.entity.AnimeCharacter;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;
import java.util.List;

@Repository
public interface CharacterRepository extends JpaRepository<AnimeCharacter, Long> {
        List<AnimeCharacter> findByUniverseIgnoreCase (String universe);
        List<AnimeCharacter> findByNameContainingIgnoreCase (String name);

}
