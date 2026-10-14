
package com.example.One.Piece.Character.API.service;

import com.example.One.Piece.Character.API.entity.AnimeCharacter;
import com.example.One.Piece.Character.API.repository.CharacterRepository;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Optional;

@Service
public class CharacterService {

    private final CharacterRepository characterRepository;

    public CharacterService(CharacterRepository characterRepository) {
        this.characterRepository = characterRepository;
    }

    public List<AnimeCharacter> getAllCharacters() {
        return characterRepository.findAll();
    }

    public Optional<AnimeCharacter> getCharacterById(Long id) {
        return characterRepository.findById(id);
    }

    public AnimeCharacter createCharacter(AnimeCharacter character) {
        return characterRepository.save(character);
    }

    public Optional<AnimeCharacter> updateCharacter(Long id, AnimeCharacter updatedCharacter) {
        return characterRepository.findById(id).map(character -> {
            character.setName(updatedCharacter.getName());
            character.setDescription(updatedCharacter.getDescription());
            character.setUniverse(updatedCharacter.getUniverse());
            character.setSpecies(updatedCharacter.getSpecies());
            character.setRole(updatedCharacter.getRole());

            return characterRepository.save(character);
        });
    }

    public boolean deleteCharacter(Long id) {
        if (!characterRepository.existsById(id)) {
            return false;
        }

        characterRepository.deleteById(id);
        return true;
    }

    public List<AnimeCharacter> getCharactersByUniverse(String universe) {
        return characterRepository.findByUniverseIgnoreCase(universe);
    }

    public List<AnimeCharacter> searchCharactersByName(String name) {
        return characterRepository.findByNameContainingIgnoreCase(name);
    }
}
