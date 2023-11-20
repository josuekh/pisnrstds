/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.josuehoffmann.projetointegrador.utils;

import com.josuehoffmann.projetointegrador.data.AnaliseEntity;
import java.util.List;

/**
 *
 * @author Koffmann
 */
public class AnaliseUtils {

    public double calcularMediaNotas(List<AnaliseEntity> analises) {
        int totalNotas = 0;
        for (AnaliseEntity analise : analises) {
            if (analise.getNota() != null) {
                totalNotas += analise.getNota();
            }
        }
        
        double media = (double) totalNotas / analises.size();
        
        return Math.round(media * 10.0) / 10.0;       
        
    }
}
