/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.br.munka.controller.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author fabiomarquesim
 */
public interface Command {
    
    public void init(HttpServletRequest request, HttpServletResponse response);
    public void execute();
    public String getResponsePage();
    
}
