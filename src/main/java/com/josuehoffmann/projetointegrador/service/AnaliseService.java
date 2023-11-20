/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.josuehoffmann.projetointegrador.service;

import com.josuehoffmann.projetointegrador.data.AnaliseEntity;
import com.josuehoffmann.projetointegrador.data.AnaliseRepository;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 *
 * @author Koffmann
 */
@Service
public class AnaliseService {
    @Autowired
    private AnaliseRepository analiseRepository;
    
    public List<AnaliseEntity> getAnaliseByLivroId(Integer livroId){
        return analiseRepository.findByLivroId(livroId);
    }
    
}
