package basketball.basketball.modele;

import java.security.Timestamp;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.ManyToOne;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.OneToMany;


@Entity
public class Match {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    String idMatch;

    @OneToMany
    @JoinColumn(name = "idEquipe1")
    Equipe equipe1;

    @OneToMany
    @JoinColumn(name = "idEquipe2")
    Equipe equipe2;
    Timestamp dateHeureDebut;
    Timestamp dateHeureFin;

    @OneToMany
    @JoinColumn(name = "idLieu")
    Lieu lieu;

    @ManyToOne
    @JoinColumn(name = "idSaison")
    Saison saison;

    public Equipe getEquipe2() {
        return equipe2;
    }

    public void setEquipe2(Equipe equipe2) {
        this.equipe2 = equipe2;
    }

    public String getIdMatch() {
        return idMatch;
    }

    public void setIdMatch(String idMatch) {
        this.idMatch = idMatch;
    } 

    public Equipe getEquipe1() {
        return equipe1;
    }

    public void setEquipe1(Equipe equipe1) {
        this.equipe1 = equipe1;
    }
}
