package  main.java.basketball.basketball.modele;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.ManyToOne;
import jakarta.persistence.OneToMany;
import jakarta.persistence.JoinColumn;

@Entity
public class Equipe {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    String idEquipe;
    String nomEquipe;

    @OneToMany
    @JoinColumn(name = "idnationnalite")
    Nationnalite nationnalite;


    public String getIdEquipe() {
        return idEquipe;
    }

    public void setIdEquipe(String idEquipe) {
        this.idEquipe = idEquipe;
    }
    
    public String getNomEquipe() {
        return nomEquipe;
    }

    public void setNomEquipe(String nomEquipe) {
        this.nomEquipe = nomEquipe;
    }
    
    public Nationnalite getNationnalite() {
        return nationnalite;
    }
    
    public void setNationnalite(Nationnalite nationnalite) {
        this.nationnalite = nationnalite;
    }
}
