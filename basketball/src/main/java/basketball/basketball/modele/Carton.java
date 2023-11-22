package  main.java.basketball.basketball.modele;

import java.security.Timestamp;

import jakarta.persistence.*;

public class Carton {
    String idCarton;

    @OneToMany
    @JoinColumn(name = "idmatch")
    Match match;

    Timestamp dateHeureDebut;    
    
    Timestamp dateHeureFin;


    public Timestamp getDateHeureFin() {
        return dateHeureFin;
    }

    public void setDateHeureFin(Timestamp dateHeureFin) {
        this.dateHeureFin = dateHeureFin;
    }

    public Timestamp getDateHeureDebut() {
        return dateHeureDebut;
    }

    public void setDateHeureDebut(Timestamp dateHeureDebut) {
        this.dateHeureDebut = dateHeureDebut;
    }

    public String getIdCarton() {
        return idCarton;
    }

    public void setIdCarton(String idCarton) {
        this.idCarton = idCarton;
    }
}
