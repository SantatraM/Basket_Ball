package main.java.basketball.basketball.modele;

import java.security.Timestamp;

import basketball.basketball.modele.Joueur;

public class Action {
    String idAction;

    @JoinColumn(name = "'idcarton")
    Carton carton;
    
    @JoinColumn(name = "idjoueur")
    Joueur joueur;

    Timestamp dateHeureEntree;

    Timestamp dateHeureSortie;

    public Timestamp getDateHeureSortie() {
        return dateHeureSortie;
    }

    public void setDateHeureSortie(Timestamp dateHeureSortie) {
        this.dateHeureSortie = dateHeureSortie;
    }

    public Timestamp getDateHeureEntree() {
        return dateHeureEntree;
    }

    public void setDateHeureEntree(Timestamp dateHeureEntree) {
        this.dateHeureEntree = dateHeureEntree;
    }

    public Joueur getJoueur() {
        return joueur;
    }

    public void setJoueur(Joueur joueur) {
        this.joueur = joueur;
    }

    public Carton getCarton() {
        return carton;
    }

    public void setCarton(Carton carton) {
        this.carton = carton;
    }

    

    public String getIdAction() {
        return idAction;
    }

    public void setIdAction(String idAction) {
        this.idAction = idAction;
    }
    
}
