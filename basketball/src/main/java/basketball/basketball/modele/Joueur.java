package basketball.basketball.modele;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;

@Entity
public class Joueur {
    String idJoueur;
    String nomJoueur;
    String prenomJoueur;
    String adresse;
    float taille;
    float poids;
    Nationnalite nationnalite;
}
