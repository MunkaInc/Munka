/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.br.munka.model.dao;

import java.util.List;

/**
 *
 * @author fabiomarquesim
 */
public interface GenericDAO<E> {
    
    public void insert(E e); //CREATE
    public List<E> findAll(); //READ
    public E findById(long id);
    public void modify(E e); //UPDATE
    public void remove(E e); //DELETE
    
}
