/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.josuehoffmann.projetointegrador.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

/**
 *
 * @author Koffmann
 */
@Controller
public class LivroController {
    @GetMapping("/detalhes")
    public String exibirDetalhes(Model model) {
        return "detalhes";
    }
    @GetMapping("/cadastrar-livro")
    public String exibirCadastrarLivro(Model model) {
        return "cadastrar-livro";
    }
}
