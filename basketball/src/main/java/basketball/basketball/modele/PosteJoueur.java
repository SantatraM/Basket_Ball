package main.java.basketball.basketball.modele;

import basketball.basketball.modele.Joueur;

import jakarta.persistence.*;

public class PosteJoueur {
    String idPosteJoueur;

    @OneToOne
    @JoinColumn(name = "idmatch")
    Match match;

    @OneToOne
    @JoinColumn(name = "idjoueur")
    Joueur joueur;

    
    @OneToOne
    @JoinColumn(name = "idposte")
    Poste poste;

    public Match getMatch() {
        return match;
    }

    public void setMatch(Match match) {
        this.match = match;
    }

    public Joueur getJoueur() {
        return joueur;
    }

    public void setJoueur(Joueur joueur) {
        this.joueur = joueur;
    }

    public Poste getPoste() {
        return poste;
    }

    public void setPoste(Poste poste) {
        this.poste = poste;
    }

    public String getIdMatch() {
        return idMatch;
    }

    public void setIdMatch(String idMatch) {
        this.idMatch = idMatch;
    }

    public String getIdPosteJoueur() {
        return idPosteJoueur;
    }

    public void setIdPosteJoueur(String idPosteJoueur) {
        this.idPosteJoueur = idPosteJoueur;
    }
}
