/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.josuehoffmann.projetointegrador.data;

import java.util.List;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

/**
 *
 * @author Koffmann
 */
@Repository
public interface AnaliseRepository extends JpaRepository<AnaliseEntity, Integer>{
     List<AnaliseEntity> findByLivroId(Integer livroId);
     List<AnaliseEntity> deleteByLivroId(Integer livroId);
}
