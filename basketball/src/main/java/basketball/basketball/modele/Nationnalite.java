package basketball.basketball.modele;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;

@Entity
public class Nationnalite {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    String idNationnalite;
    String libelle;
    
    public String getLibelle() {
        return libelle;
    }
    public void setLibelle(String libelle) {
        this.libelle = libelle;
    }
    
    public String getIdNationnalite() {
        return idNationnalite;
    }
    public void setIdNationnalite(String idNationnalite) {
        this.idNationnalite = idNationnalite;
    }
    
}
