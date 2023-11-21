package basketball.basketball.modele;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;

@Entity
public class Equipe {
    String idEquipe;
    String nomEquipe;
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
