package com.example.One.Piece.Character.API.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.example.One.Piece.Character.API.entity.AnimeCharacter;
import com.example.One.Piece.Character.API.service.CharacterService;

@Controller 
@RequestMapping("/characters")
public class CharacterUIController {

    private final CharacterService Service;

    public CharacterUIController(CharacterService Service) {
        this.Service = Service;
    }


    @GetMapping ("/about")
    public String about() {
        return "about";
    }
    
    @GetMapping("/{id}")
    public String details(@PathVariable long Id, Model model) {
        AnimeCharacter character = Service.findById(Id);
        model.addAttribute("animeChar", character);
        return "details";
    }


}
