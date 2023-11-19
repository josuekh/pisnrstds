/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.josuehoffmann.projetointegrador.service;

import com.josuehoffmann.projetointegrador.data.LivroEntity;
import com.josuehoffmann.projetointegrador.data.LivroRepository;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 *
 * @author Koffmann
 */
@Service
public class LivroService {

    @Autowired
    private LivroRepository livroRepository;

    public List<LivroEntity> getAllLivros() {
        return livroRepository.findAll();
    }

}
