/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.br.munka.model.entities;

import java.io.Serializable;
import javax.persistence.Basic;
import javax.persistence.Column;
import javax.persistence.Embeddable;
import javax.validation.constraints.NotNull;

/**
 *
 * @author fabiomarquesim
 */
@Embeddable
public class InstituicaoUsuarioPK implements Serializable {

    @Basic(optional = false)
    @NotNull
    @Column(name = "instituicao_idinstituicao")
    private int instituicaoIdinstituicao;
    @Basic(optional = false)
    @NotNull
    @Column(name = "usuario_idusuario")
    private int usuarioIdusuario;

    public InstituicaoUsuarioPK() {
    }

    public InstituicaoUsuarioPK(int instituicaoIdinstituicao, int usuarioIdusuario) {
        this.instituicaoIdinstituicao = instituicaoIdinstituicao;
        this.usuarioIdusuario = usuarioIdusuario;
    }

    public int getInstituicaoIdinstituicao() {
        return instituicaoIdinstituicao;
    }

    public void setInstituicaoIdinstituicao(int instituicaoIdinstituicao) {
        this.instituicaoIdinstituicao = instituicaoIdinstituicao;
    }

    public int getUsuarioIdusuario() {
        return usuarioIdusuario;
    }

    public void setUsuarioIdusuario(int usuarioIdusuario) {
        this.usuarioIdusuario = usuarioIdusuario;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (int) instituicaoIdinstituicao;
        hash += (int) usuarioIdusuario;
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof InstituicaoUsuarioPK)) {
            return false;
        }
        InstituicaoUsuarioPK other = (InstituicaoUsuarioPK) object;
        if (this.instituicaoIdinstituicao != other.instituicaoIdinstituicao) {
            return false;
        }
        if (this.usuarioIdusuario != other.usuarioIdusuario) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "com.br.munka.model.entities.InstituicaoUsuarioPK[ instituicaoIdinstituicao=" + instituicaoIdinstituicao + ", usuarioIdusuario=" + usuarioIdusuario + " ]";
    }
    
}
