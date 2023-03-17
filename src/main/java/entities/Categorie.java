package entities;

import javax.persistence.*;
import java.util.Date;
import java.util.Collection;
import java.util.Objects;

@Entity
public class Categorie {
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Id
    @Column(name = "idCat")
    private Integer idCat;
    @Basic
    @Column(name = "nomCat")
    private String nomCat;
    @Basic
    @Temporal(TemporalType.DATE)
    @Column(name = "dateCreation")
    private Date dateCreation;
    @OneToMany(mappedBy = "categorieByIdCategorie")
    private Collection<Produits> produitsByIdCat;

    public Integer getIdCat() {
        return idCat;
    }

    public void setIdCat(Integer idCat) {
        this.idCat = idCat;
    }

    public Categorie() {
    }

    public Categorie(String nomCat, Date dateCreation) {
        this.nomCat = nomCat;
        this.dateCreation = dateCreation;
    }

    public String getNomCat() {
        return nomCat;
    }

    public void setNomCat(String nomCat) {
        this.nomCat = nomCat;
    }

    public Date getDateCreation() {
        return dateCreation;
    }

    public void setDateCreation(Date dateCreation) {
        this.dateCreation = dateCreation;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        Categorie categorie = (Categorie) o;
        return Objects.equals(idCat, categorie.idCat) && Objects.equals(nomCat, categorie.nomCat) && Objects.equals(dateCreation, categorie.dateCreation);
    }

    @Override
    public int hashCode() {
        return Objects.hash(idCat, nomCat, dateCreation);
    }

    public Collection<Produits> getProduitsByIdCat() {
        return produitsByIdCat;
    }

    public void setProduitsByIdCat(Collection<Produits> produitsByIdCat) {
        this.produitsByIdCat = produitsByIdCat;
    }
}
