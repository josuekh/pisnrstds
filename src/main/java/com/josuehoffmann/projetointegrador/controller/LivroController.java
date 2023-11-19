/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.josuehoffmann.projetointegrador.controller;

import com.josuehoffmann.projetointegrador.service.LivroService;
import java.io.File;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

/**
 *
 * @author Koffmann
 */
@Controller
public class LivroController {
    
    @Autowired
    LivroService livroService;
    
    @GetMapping("/")
    public String exibirIndex(Model model) {
        model.addAttribute("livros", livroService.getAllLivros());
        
        return "index";
    }
    @GetMapping("/detalhes")
    public String exibirDetalhes(Model model) {
        return "detalhes";
    }
    @GetMapping("/cadastrar-livro")
    public String exibirCadastrarLivro(Model model) {
        return "cadastrar-livro";
    }
    
    private boolean verificarExistenciaImagem(String imagemNome) {
        String caminhoImagem = "../images/" + imagemNome + ".jpg";
        File file = new File(caminhoImagem);
        return file.exists();
    }
}
