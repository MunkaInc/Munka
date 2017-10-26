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
public class ComentarioPK implements Serializable {

    @Basic(optional = false)
    @NotNull
    @Column(name = "fkpost")
    private int fkpost;
    @Basic(optional = false)
    @NotNull
    @Column(name = "fkusuario")
    private int fkusuario;

    public ComentarioPK() {
    }

    public ComentarioPK(int fkpost, int fkusuario) {
        this.fkpost = fkpost;
        this.fkusuario = fkusuario;
    }

    public int getFkpost() {
        return fkpost;
    }

    public void setFkpost(int fkpost) {
        this.fkpost = fkpost;
    }

    public int getFkusuario() {
        return fkusuario;
    }

    public void setFkusuario(int fkusuario) {
        this.fkusuario = fkusuario;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (int) fkpost;
        hash += (int) fkusuario;
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof ComentarioPK)) {
            return false;
        }
        ComentarioPK other = (ComentarioPK) object;
        if (this.fkpost != other.fkpost) {
            return false;
        }
        if (this.fkusuario != other.fkusuario) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "com.br.munka.model.entities.ComentarioPK[ fkpost=" + fkpost + ", fkusuario=" + fkusuario + " ]";
    }
    
}
