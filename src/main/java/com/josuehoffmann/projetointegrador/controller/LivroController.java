/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.josuehoffmann.projetointegrador.controller;

import com.josuehoffmann.projetointegrador.data.AnaliseEntity;
import com.josuehoffmann.projetointegrador.data.LivroEntity;
import com.josuehoffmann.projetointegrador.service.AnaliseService;
import com.josuehoffmann.projetointegrador.service.LivroService;
import com.josuehoffmann.projetointegrador.utils.AnaliseUtils;
import jakarta.servlet.http.HttpServletRequest;
import java.io.File;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

/**
 *
 * @author Koffmann
 */
@Controller
public class LivroController {

    @Autowired
    LivroService livroService;
    
    @Autowired
    AnaliseService analiseService;

    @GetMapping("/")
    public String exibirIndex(Model model) {
        model.addAttribute("livros", livroService.getAllLivros());

        return "index";
    }

    @GetMapping("/detalhes/{id}")
    public String exibirDetalhes(@PathVariable Integer id, Model model) {
        LivroEntity livro = livroService.getLivroById(id);
        model.addAttribute("livro", livro);
        model.addAttribute("analises",analiseService.getAnalisesByLivroId(id));
        
        AnaliseUtils analiseUtils = new AnaliseUtils();
        double notaMedia = analiseUtils.calcularMediaNotas(analiseService.getAnalisesByLivroId(id));        
        
        model.addAttribute("mediaNota",notaMedia);
        
        return "detalhes";
    }

    @GetMapping("/cadastrar-livro")
    public String exibirCadastrarLivro(Model model) {
        model.addAttribute("livro", new LivroEntity());
        return "cadastrar-livro";
    }
    
    @PostMapping("/cadastrar-livro")
    public String cadastrarLivro(@ModelAttribute LivroEntity livro, Model model, @RequestParam("data") String data) {
        SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");

        try {
            Date novaData = dateFormat.parse(data);
            livro.setDataPublicacao(novaData);

            livroService.cadastrarLivro(livro);
            return "redirect:/";
        } catch (ParseException e) {            
            return "cadastrar-livro";
        }
    }
    
    @PostMapping("/excluir-livro/{id}")
    public String excluirLivro(@PathVariable Integer id) {
        analiseService.deletarTodasAnalises(id);
        livroService.excluirLivro(id);        
        return "redirect:/";
    }
    
    @PostMapping("/editar-livro/{id}")
    public String editarLivro(@ModelAttribute LivroEntity livro, @PathVariable Integer id, @RequestParam("data") String data,HttpServletRequest request) {
        LivroEntity livroExistente = livroService.getLivroById(id);
        SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
        try {
            Date novaData = dateFormat.parse(data);
            livroExistente.setDataPublicacao(novaData);
            livroExistente.setNome(livro.getNome());
            livroExistente.setAutor(livro.getAutor());
            livroExistente.setSinopse(livro.getSinopse());

             livroService.cadastrarLivro(livroExistente);     
            String referer = request.getHeader("Referer");
            return "redirect:" + referer;
        } catch (ParseException e) {            
            return "redirect:/";
        }        
    }
    
    @PostMapping("/cadastrar-analise")
    public String cadastrarAnalise(@ModelAttribute AnaliseEntity novaAnalise, Model model, HttpServletRequest request){
        String referer = request.getHeader("Referer");
        
        analiseService.cadastrarAnalise(novaAnalise);
        return "redirect:" + referer;
    }
    
    @PostMapping("/excluir-analise/{id}")
    public String excluirAnalise(@PathVariable Integer id,HttpServletRequest request){
        analiseService.excluirAnalise(id);
        String referer = request.getHeader("Referer");
        return "redirect:" + referer;
    }
    
    @PostMapping("/editar-analise/{id}")
    public String editarAnalise(@ModelAttribute AnaliseEntity analiseEditada, @PathVariable Integer id, HttpServletRequest request){       
        AnaliseEntity analiseExistente = analiseService.getAnaliseById(id);
        
        analiseExistente.setNota(analiseEditada.getNota());
        analiseExistente.setResenha(analiseEditada.getResenha());
        analiseExistente.setTitulo(analiseEditada.getTitulo());
        
        analiseService.cadastrarAnalise(analiseExistente);
        
        String referer = request.getHeader("Referer");
        return "redirect:" + referer;
    }
}
