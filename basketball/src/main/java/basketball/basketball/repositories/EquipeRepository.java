package main.java.basketball.basketball.repositories;

import java.util.List;
import java.util.Optional;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.JpaRepository;

import basketball.basketball.modele.Equipe;
import basketball.basketball.modele.Joueur;

@Repository
public interface EquipeRepository extends JpaRepository{
    List<Equipe> findAllEquipe;

    Optional<Joueur> findJoueurByIdEquipe(String idEquipe);

}