/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.br.munka.model.entities;

import java.io.Serializable;
import java.util.Date;
import javax.persistence.Basic;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Lob;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;
import javax.xml.bind.annotation.XmlRootElement;

/**
 *
 * @author fabiomarquesim
 */
@Entity
@Table(name = "instituicao")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "Instituicao.findAll", query = "SELECT i FROM Instituicao i")
    , @NamedQuery(name = "Instituicao.findByIdinstituicao", query = "SELECT i FROM Instituicao i WHERE i.idinstituicao = :idinstituicao")
    , @NamedQuery(name = "Instituicao.findByCnpj", query = "SELECT i FROM Instituicao i WHERE i.cnpj = :cnpj")
    , @NamedQuery(name = "Instituicao.findByRazaoSocial", query = "SELECT i FROM Instituicao i WHERE i.razaoSocial = :razaoSocial")
    , @NamedQuery(name = "Instituicao.findByEndereco", query = "SELECT i FROM Instituicao i WHERE i.endereco = :endereco")
    , @NamedQuery(name = "Instituicao.findByEmail", query = "SELECT i FROM Instituicao i WHERE i.email = :email")
    , @NamedQuery(name = "Instituicao.findByDataEntrada", query = "SELECT i FROM Instituicao i WHERE i.dataEntrada = :dataEntrada")})
public class Instituicao implements Serializable {

    private static final long serialVersionUID = 1L;
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Basic(optional = false)
    @Column(name = "idinstituicao")
    private Integer idinstituicao;
    @Size(max = 15)
    @Column(name = "cnpj")
    private String cnpj;
    @Size(max = 300)
    @Column(name = "razao_social")
    private String razaoSocial;
    @Size(max = 300)
    @Column(name = "endereco")
    private String endereco;
    @Column(name = "email")
    @Temporal(TemporalType.TIMESTAMP)
    private Date email;
    @Basic(optional = false)
    @NotNull
    @Lob
    @Column(name = "posts_livres")
    private byte[] postsLivres;
    @Column(name = "data_entrada")
    @Temporal(TemporalType.TIMESTAMP)
    private Date dataEntrada;

    public Instituicao() {
    }

    public Instituicao(Integer idinstituicao) {
        this.idinstituicao = idinstituicao;
    }

    public Instituicao(Integer idinstituicao, byte[] postsLivres) {
        this.idinstituicao = idinstituicao;
        this.postsLivres = postsLivres;
    }

    public Integer getIdinstituicao() {
        return idinstituicao;
    }

    public void setIdinstituicao(Integer idinstituicao) {
        this.idinstituicao = idinstituicao;
    }

    public String getCnpj() {
        return cnpj;
    }

    public void setCnpj(String cnpj) {
        this.cnpj = cnpj;
    }

    public String getRazaoSocial() {
        return razaoSocial;
    }

    public void setRazaoSocial(String razaoSocial) {
        this.razaoSocial = razaoSocial;
    }

    public String getEndereco() {
        return endereco;
    }

    public void setEndereco(String endereco) {
        this.endereco = endereco;
    }

    public Date getEmail() {
        return email;
    }

    public void setEmail(Date email) {
        this.email = email;
    }

    public byte[] getPostsLivres() {
        return postsLivres;
    }

    public void setPostsLivres(byte[] postsLivres) {
        this.postsLivres = postsLivres;
    }

    public Date getDataEntrada() {
        return dataEntrada;
    }

    public void setDataEntrada(Date dataEntrada) {
        this.dataEntrada = dataEntrada;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (idinstituicao != null ? idinstituicao.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof Instituicao)) {
            return false;
        }
        Instituicao other = (Instituicao) object;
        if ((this.idinstituicao == null && other.idinstituicao != null) || (this.idinstituicao != null && !this.idinstituicao.equals(other.idinstituicao))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "com.br.munka.model.entities.Instituicao[ idinstituicao=" + idinstituicao + " ]";
    }
    
}
