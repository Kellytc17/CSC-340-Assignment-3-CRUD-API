package com.example.One.Piece.Character.API.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.example.One.Piece.Character.API.entity.AnimeCharacter;
import com.example.One.Piece.Character.API.service.CharacterService;

import java.util.List;

@Controller 
@RequestMapping("/")
public class CharacterUIController {

    private final CharacterService Service;

    public CharacterUIController(CharacterService Service) {
        this.Service = Service;
    }


    @GetMapping ("/about")
    public String about() {
        return "about";
    }
    
    @GetMapping("/characters/{id:\\d+}")
    public String details(@PathVariable long id, Model model) {
       try {
           AnimeCharacter character = Service.findById(id);
           model.addAttribute("animeChar", character);
           return "details";
        } catch (RuntimeException exception) {
            model.addAttribute("errorMessage", exception.getMessage() == null ? "Character not found" : exception.getMessage()); 
            return "error";
        }
    }

    @GetMapping 
    public String gallery(
            @RequestParam(required = false) String name,
            @RequestParam(required = false) String role,
            Model model) {
        List<AnimeCharacter> characters;
        
        boolean hasName = name != null && !name.isBlank();
        boolean hasCategory = role != null && !role.isBlank();


         if (hasName && hasRole) {
            characters = Service.searchCharacters(name, role);
        } else if (hasName) {
            characters = Service.searchCharactersByName(name);
        } else if (hasRole) {
            characters = Service.getCharactersByUniverse(role);
        } else {
            characters = Service.getAllCharacters();
        }

        model.addAttribute("characters", characters);
        model.addAttribute("name", name);
        model.addAttribute("role", role);

        return "index";

    }

    @GetMapping("characters/new")
    public String newCharacterForm(Model model) {
        AnimeCharacter character = new AnimeCharacter();
        model.addAttribute("character", character);
        model.addAttribute("formTitle", "Add a Character");
        model.addAttribute("formAction", "/characters");

        return "new-character-form";
    }   

    @PostMapping("characters")
    public String createCharacter(@ModelAttribute AnimeCharacter character, RedirectAttributes redirectAttributes) {
        Service.createCharacter(character);
        redirectAttributes.addFlashAttribute("message", "Character added successfully!");
        return "redirect:/";
    }

    @GetMapping("characters/{id}/edit")
    public String editCharacterForm(@PathVariable Long id, Model model) {
        try {
            AnimeCharacter character = Service.findById(id);
            model.addAttribute("character", character);
            model.addAttribute("formTitle", "Edit Character");
            model.addAttribute("formAction", "/characters/" + id);
            return "new-character-form";

        } catch (RuntimeException exception) {
            model.addAttribute("errorMessage", exception.getMessage() == null ? "Character not found" : exception.getMessage());
            return "error";
        }
    }   

    @PostMapping("characters/{id}")
    public String updateCharacter(
            @PathVariable Long id,
            @ModelAttribute AnimeCharacter character, Model model, RedirectAttributes redirectAttributes) {
        
        try {
            Service.findById(id);
            Service.updateCharacter(id, character);
            redirectAttributes.addFlashAttribute("message", "Character updated successfully!");
            return "redirect:/characters/" + id;
        } catch (RuntimeException exception) {
            model.addAttribute("errorMessage", exception.getMessage() == null ? "Character not found" : 
                exception.getMessage());
            return "error";
        }
    
    }

    @PostMapping("characters/{id}/delete")
    public String deleteCharacter(
            @PathVariable Long id, Model model, RedirectAttributes redirectAttributes) {
        try {
            Service.findById(id);
            Service.deleteCharacter(id);
            redirectAttributes.addFlashAttribute("message", "Character deleted successfully");
            return "redirect:/";
        } catch (RuntimeException exception) {
            model.addAttribute("errorMessage", exception.getMessage() == null ? "Character not found" : exception.getMessage());
            return "error";
        }

    }

}