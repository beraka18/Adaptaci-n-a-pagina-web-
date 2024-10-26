/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.mycompany.crud_adaptacion_a_pagina_web_stop;

/**
 *
 * @author emers
 */
import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;

public class UsuarioService {
    private EntityManagerFactory emf;

    public UsuarioService() {
        // Asegúrate de que el nombre aquí coincida con el nombre en persistence.xml
        emf = Persistence.createEntityManagerFactory("CrudadaptacionPU");
    }

    public void someMethod() {
        EntityManager em = emf.createEntityManager();
        // operaciones con EntityManager
        em.close();
    }

    public void close() {
        if (emf != null) {
            emf.close();
        }
    }
}
