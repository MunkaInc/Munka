/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.br.munka.model.dao;

import com.br.munka.model.entities.Usuario;
import java.util.List;
import javax.persistence.EntityManager;
import javax.persistence.NoResultException;
import javax.persistence.Query;

/**
 *
 * @author fabiomarquesim
 */
public class UserMunkaDAO implements GenericDAO<Usuario> {

    private EntityManager em;
    
    @Override
    public void insert(Usuario e) {
        
        em.persist(e);
        
    }

    @Override
    public List<Usuario> findAll() {
    
        Query query = em.createNamedQuery("Usuario.findAll");
        return query.getResultList();
    
    }

    @Override
    public Usuario findById(long id) {
   
        return em.find(Usuario.class, id);
    
    }

    public Usuario findByNomeUsuario(String username) {
        Query query = em.createNamedQuery("Usuario.findByNomeUsuario").setParameter("nomeUsuario", username);
        Object obj = null;
        try {
            obj = query.getSingleResult();
            return (Usuario) obj;
        } catch (NoResultException ex) {
            return null;
        }
    }

    public Usuario findByEmail(String email) {
        Query query = em.createNamedQuery("Usuario.findByEmail").setParameter("email", email);
        Object obj = null;
        try {
            obj = query.getSingleResult();
            return (Usuario) obj;
        } catch (NoResultException ex) {
            return null;
        }
    }    
    
    @Override
    public void modify(Usuario e) {
    
        em.merge(e);
    
    }

    @Override
    public void remove(Usuario e) {
    
        Usuario u = (Usuario) em.merge(e);
        em.remove(u);
    
    }
    
}
