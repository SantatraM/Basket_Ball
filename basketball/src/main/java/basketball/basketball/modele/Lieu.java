package basketball.basketball.modele;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;

@Entity
public class Lieu{
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    String idLieu;
    String lieu;
    
    public String getLieu() {
        return lieu;
    }
    public void setLieu(String lieu) {
        this.lieu = lieu;
    }
    public String getIdLieu() {
        return idLieu;
    }
    public void setIdLieu(String idLieu) {
        this.idLieu = idLieu;
    }
    
}