package basketball.basketball.modele;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;

@Entity
public class Saison {
    String idSaison;
    Date dateDebut;
    String nomSaison;

    public String getIdSaison() {
        return idSaison;
    }

    public void setIdSaison(String idSaison) {
        this.idSaison = idSaison;
    }

    public Date getDateDebut() {
        return dateDebut;
    }
    
    public void setDateDebut(Date dateDebut) {
        this.dateDebut = dateDebut;
    }

    public String getNomSaison() {
        return nomSaison;
    }
    public void setNomSaison(String nomSaison) {
        this.nomSaison = nomSaison;
    }
}
