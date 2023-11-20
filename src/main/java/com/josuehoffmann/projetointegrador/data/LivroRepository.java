/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Interface.java to edit this template
 */
package com.josuehoffmann.projetointegrador.data;

import java.util.Optional;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

/**
 *
 * @author Koffmann
 */
@Repository
public interface LivroRepository extends JpaRepository<LivroEntity, Integer>{
        Optional<LivroEntity> findById(Integer id);
}
