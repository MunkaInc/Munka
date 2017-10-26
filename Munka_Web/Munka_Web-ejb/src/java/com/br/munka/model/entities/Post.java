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
@Table(name = "post")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "Post.findAll", query = "SELECT p FROM Post p")
    , @NamedQuery(name = "Post.findByIdpost", query = "SELECT p FROM Post p WHERE p.idpost = :idpost")
    , @NamedQuery(name = "Post.findByFkcategoria", query = "SELECT p FROM Post p WHERE p.fkcategoria = :fkcategoria")
    , @NamedQuery(name = "Post.findByFkusuario", query = "SELECT p FROM Post p WHERE p.fkusuario = :fkusuario")
    , @NamedQuery(name = "Post.findByFkinstituicao", query = "SELECT p FROM Post p WHERE p.fkinstituicao = :fkinstituicao")
    , @NamedQuery(name = "Post.findByFkstatus", query = "SELECT p FROM Post p WHERE p.fkstatus = :fkstatus")
    , @NamedQuery(name = "Post.findByFkZeladorResponsavel", query = "SELECT p FROM Post p WHERE p.fkZeladorResponsavel = :fkZeladorResponsavel")
    , @NamedQuery(name = "Post.findByAssunto", query = "SELECT p FROM Post p WHERE p.assunto = :assunto")
    , @NamedQuery(name = "Post.findByTexto", query = "SELECT p FROM Post p WHERE p.texto = :texto")
    , @NamedQuery(name = "Post.findByUp", query = "SELECT p FROM Post p WHERE p.up = :up")
    , @NamedQuery(name = "Post.findByLocal", query = "SELECT p FROM Post p WHERE p.local = :local")
    , @NamedQuery(name = "Post.findByDataCriado", query = "SELECT p FROM Post p WHERE p.dataCriado = :dataCriado")})
public class Post implements Serializable {

    private static final long serialVersionUID = 1L;
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Basic(optional = false)
    @Column(name = "idpost")
    private Integer idpost;
    @Basic(optional = false)
    @NotNull
    @Column(name = "fkcategoria")
    private int fkcategoria;
    @Basic(optional = false)
    @NotNull
    @Column(name = "fkusuario")
    private int fkusuario;
    @Basic(optional = false)
    @NotNull
    @Column(name = "fkinstituicao")
    private int fkinstituicao;
    @Basic(optional = false)
    @NotNull
    @Column(name = "fkstatus")
    private int fkstatus;
    @Basic(optional = false)
    @NotNull
    @Column(name = "fk_zelador_responsavel")
    private int fkZeladorResponsavel;
    @Size(max = 200)
    @Column(name = "assunto")
    private String assunto;
    @Size(max = 2000)
    @Column(name = "texto")
    private String texto;
    @Column(name = "up")
    private Integer up;
    @Lob
    @Column(name = "foto")
    private byte[] foto;
    @Size(max = 200)
    @Column(name = "local")
    private String local;
    @Column(name = "data_criado")
    @Temporal(TemporalType.TIMESTAMP)
    private Date dataCriado;

    public Post() {
    }

    public Post(Integer idpost) {
        this.idpost = idpost;
    }

    public Post(Integer idpost, int fkcategoria, int fkusuario, int fkinstituicao, int fkstatus, int fkZeladorResponsavel) {
        this.idpost = idpost;
        this.fkcategoria = fkcategoria;
        this.fkusuario = fkusuario;
        this.fkinstituicao = fkinstituicao;
        this.fkstatus = fkstatus;
        this.fkZeladorResponsavel = fkZeladorResponsavel;
    }

    public Integer getIdpost() {
        return idpost;
    }

    public void setIdpost(Integer idpost) {
        this.idpost = idpost;
    }

    public int getFkcategoria() {
        return fkcategoria;
    }

    public void setFkcategoria(int fkcategoria) {
        this.fkcategoria = fkcategoria;
    }

    public int getFkusuario() {
        return fkusuario;
    }

    public void setFkusuario(int fkusuario) {
        this.fkusuario = fkusuario;
    }

    public int getFkinstituicao() {
        return fkinstituicao;
    }

    public void setFkinstituicao(int fkinstituicao) {
        this.fkinstituicao = fkinstituicao;
    }

    public int getFkstatus() {
        return fkstatus;
    }

    public void setFkstatus(int fkstatus) {
        this.fkstatus = fkstatus;
    }

    public int getFkZeladorResponsavel() {
        return fkZeladorResponsavel;
    }

    public void setFkZeladorResponsavel(int fkZeladorResponsavel) {
        this.fkZeladorResponsavel = fkZeladorResponsavel;
    }

    public String getAssunto() {
        return assunto;
    }

    public void setAssunto(String assunto) {
        this.assunto = assunto;
    }

    public String getTexto() {
        return texto;
    }

    public void setTexto(String texto) {
        this.texto = texto;
    }

    public Integer getUp() {
        return up;
    }

    public void setUp(Integer up) {
        this.up = up;
    }

    public byte[] getFoto() {
        return foto;
    }

    public void setFoto(byte[] foto) {
        this.foto = foto;
    }

    public String getLocal() {
        return local;
    }

    public void setLocal(String local) {
        this.local = local;
    }

    public Date getDataCriado() {
        return dataCriado;
    }

    public void setDataCriado(Date dataCriado) {
        this.dataCriado = dataCriado;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (idpost != null ? idpost.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof Post)) {
            return false;
        }
        Post other = (Post) object;
        if ((this.idpost == null && other.idpost != null) || (this.idpost != null && !this.idpost.equals(other.idpost))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "com.br.munka.model.entities.Post[ idpost=" + idpost + " ]";
    }
    
}
