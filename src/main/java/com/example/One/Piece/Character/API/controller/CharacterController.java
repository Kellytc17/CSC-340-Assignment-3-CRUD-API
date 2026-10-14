package com.example.One.Piece.Character.API.controller;
import com.example.One.Piece.Character.API.entity.AnimeCharacter;
import com.example.One.Piece.Character.API.service.CharacterService;
import jakarta.validation.Valid;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;
import java.util.List;

@RestController
@RequestMapping("/api/characters")
public class CharacterController {

    private final CharacterService characterService;

    public CharacterController(CharacterService characterService) {
        this.characterService = characterService;
    }

    @GetMapping
    public List<AnimeCharacter> getAllCharacters() {
        return characterService.getAllCharacters();
    }

    @GetMapping("/{id}")
    public ResponseEntity<AnimeCharacter> getCharacterById(@PathVariable Long id) {
        return characterService.getCharacterById(id)
                .map(ResponseEntity::ok)
                .orElse(ResponseEntity.notFound().build());
    }

    @PostMapping
    public ResponseEntity<AnimeCharacter> createCharacter(
            @Valid @RequestBody AnimeCharacter character) {
        AnimeCharacter createdCharacter = characterService.createCharacter(character);
        return ResponseEntity.status(HttpStatus.CREATED).body(createdCharacter);
    }

    @PutMapping("/{id}")
    public ResponseEntity<AnimeCharacter> updateCharacter(
            @PathVariable Long id,
            @Valid @RequestBody AnimeCharacter character) {
        return characterService.updateCharacter(id, character)
                .map(ResponseEntity::ok)
                .orElse(ResponseEntity.notFound().build());
    }

    @DeleteMapping("/{id}")
    public ResponseEntity<Void> deleteCharacter(@PathVariable Long id) {
        if (characterService.deleteCharacter(id)) {
            return ResponseEntity.noContent().build();
        }
        return ResponseEntity.notFound().build();
    }

    @GetMapping("/filter")
    public List<AnimeCharacter> getCharactersByUniverse(@RequestParam String universe) {
        return characterService.getCharactersByUniverse(universe);
    }

    @GetMapping("/search")
    public List<AnimeCharacter> searchCharactersByName(@RequestParam String name) {
        return characterService.searchCharactersByName(name);
    }
}
