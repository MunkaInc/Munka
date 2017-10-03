/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.br.munka.model.entities;

import java.io.Serializable;
import javax.persistence.EmbeddedId;
import javax.persistence.Entity;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.Table;
import javax.xml.bind.annotation.XmlRootElement;

/**
 *
 * @author fabiomarquesim
 */
@Entity
@Table(name = "instituicao_usuario")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "InstituicaoUsuario.findAll", query = "SELECT i FROM InstituicaoUsuario i")
    , @NamedQuery(name = "InstituicaoUsuario.findByInstituicaoIdinstituicao", query = "SELECT i FROM InstituicaoUsuario i WHERE i.instituicaoUsuarioPK.instituicaoIdinstituicao = :instituicaoIdinstituicao")
    , @NamedQuery(name = "InstituicaoUsuario.findByUsuarioIdusuario", query = "SELECT i FROM InstituicaoUsuario i WHERE i.instituicaoUsuarioPK.usuarioIdusuario = :usuarioIdusuario")})
public class InstituicaoUsuario implements Serializable {

    private static final long serialVersionUID = 1L;
    @EmbeddedId
    protected InstituicaoUsuarioPK instituicaoUsuarioPK;

    public InstituicaoUsuario() {
    }

    public InstituicaoUsuario(InstituicaoUsuarioPK instituicaoUsuarioPK) {
        this.instituicaoUsuarioPK = instituicaoUsuarioPK;
    }

    public InstituicaoUsuario(int instituicaoIdinstituicao, int usuarioIdusuario) {
        this.instituicaoUsuarioPK = new InstituicaoUsuarioPK(instituicaoIdinstituicao, usuarioIdusuario);
    }

    public InstituicaoUsuarioPK getInstituicaoUsuarioPK() {
        return instituicaoUsuarioPK;
    }

    public void setInstituicaoUsuarioPK(InstituicaoUsuarioPK instituicaoUsuarioPK) {
        this.instituicaoUsuarioPK = instituicaoUsuarioPK;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (instituicaoUsuarioPK != null ? instituicaoUsuarioPK.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof InstituicaoUsuario)) {
            return false;
        }
        InstituicaoUsuario other = (InstituicaoUsuario) object;
        if ((this.instituicaoUsuarioPK == null && other.instituicaoUsuarioPK != null) || (this.instituicaoUsuarioPK != null && !this.instituicaoUsuarioPK.equals(other.instituicaoUsuarioPK))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "com.br.munka.model.entities.InstituicaoUsuario[ instituicaoUsuarioPK=" + instituicaoUsuarioPK + " ]";
    }
    
}
