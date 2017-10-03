/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.br.munka.controller.command;

import com.br.munka.model.dao.UserMunkaDAO;
import com.br.munka.model.entities.Usuario;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.naming.Context;
import javax.naming.InitialContext;
import javax.naming.NamingException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.sql.DataSource;

/**
 *
 * @author fabiomarquesim
 */
public class UsuarioCommand implements Command {
    
    private UserMunkaDAO usuarioDAO = null;
    
    private HttpServletRequest request;
    private HttpServletResponse response;
    private String responsePage;

    @Override
    public void init(HttpServletRequest request, HttpServletResponse response) {
        this.request = request;
        this.response = response;
    }

    @Override
    public void execute() {
    
        String action = request.getParameter("command").split("\\.")[1]; //pega a segunda posicao do input com valor command
        String email;
        String password;
    
        switch (action) {
            case "register":
                email = request.getParameter("email");
                password = request.getParameter("password");
                String password2 = request.getParameter("password2");
                String name = request.getParameter("nome");
                String empresa = request.getParameter("empresa_ass");
                String telefone = request.getParameter("telefone");
                
                SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
                Date data_entrada = new Date();
                sdf.format(data_entrada);

                /*
           === VERIFICAÇÕES === 
                 */
                Usuario tempUser1 = getUserMunkaDAO().findByEmail(email); //para checar se o email ja foi cadastrado

                if (tempUser1 != null) {
                    responsePage = "register.jsp";
                    request.getSession().setAttribute("error", "Email já cadastrado."); //nesse caso, email ja existe
                    break;
                } else if (!password.equals(password2)) {
                    responsePage = "register.jsp";
                    request.getSession().setAttribute("error", "Senhas digitadas não correspondem."); //nesse caso, senhas nao correspondem
                    break;
                } else {
                    //se nenhum error acima for encontrado, o usuario eh criado

                    Usuario user = new Usuario();
                    user.setEmail(email);
                    user.setSenha(password);
                    user.setNomeUsuario(name);
                    user.setIdentInternoEmpresa(empresa);
                    user.setDataEntrada(data_entrada);
                    user.setTelefone(telefone);

                    getUserMunkaDAO().insert(user);

                    responsePage = "index.jsp";
                }
                break; //break do case register

            case "login":
                email = request.getParameter("email");
                password = request.getParameter("password");

                Usuario tempUser3 = getUserMunkaDAO().findByEmail(email);
                if (tempUser3 == null) {
                    responsePage = "login.jsp"; //Primeiramente utilizando error.jsp
                    request.getSession().setAttribute("error", "ERRO! Email não existe.");
                    break;
                } else if (!password.equals(tempUser3.getSenha())) {
                    responsePage = "login.jsp";
                    request.getSession().setAttribute("error", "ERRO! Senha incorreta.");
                    break;
                } else {
                    request.getSession().setAttribute("user", tempUser3); //setando o usuario na sessão
                    request.getSession().setAttribute("count", 0);
                    request.getSession().setAttribute("error", null);
                    request.getSession().setAttribute("page", "home");
                    responsePage = "index.jsp";
                }
                break; //break do case login

            case "logout":

                request.getSession().setAttribute("user", null); //Limpa a sessao do usuario
                request.getSession().setAttribute("page", null);
                responsePage = "index.jsp";
                break;
            
            case "delete":
                
                //TODO deletar usuario... "it's not a bug, it's a feature"
                
            case "update":
                //TODO atualizar email... "it's not a bug, it's a feature"
                break;
                
            default:
                responsePage = "index.jsp";
                break;
        }
    }

    @Override
    public String getResponsePage() {
    
        return this.responsePage;
    
    }
    
    
    /**
     * @return the usuarioDAO
     */
    public UserMunkaDAO getUserMunkaDAO() {
        return usuarioDAO;
    }

    /**
     * @param usuarioDAO the usuarioDAO to set
     */
    public void setUserMunkaDAO(UserMunkaDAO usuarioDAO) {
        this.usuarioDAO = usuarioDAO;
    }
    
}
