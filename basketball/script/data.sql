

-- Insérer des données fictives dans la table Nationnalite
INSERT INTO Nationnalite (libelle) VALUES
    ('Française'),
    ('Allemande'),
    ('Espagnole'),
    ('Italienne'),
    ('Anglaise');
INSERT INTO Saison (dateDebut, nomSaison) VALUES
  ('2022-01-01', 'Saison 2022-2023'),
    ('2023-01-01', 'Saison 2023-2024').

INSERT INTO Equipe (nomEquipe, idNationnalite) VALUES
    ('Equipe A', 'NAT1'),
    ('Equipe B', 'NAT1'),
    ('Equipe C', 'NAT1'),
    ('Equipe D', 'NAT3'),
    ('Equipe E','NAT4');

INSERT INTO Joueur (nomJoueur, prenomJoueur, adresse, taille, poids, idNationnalite) VALUES
    ('Doe', 'John', '123 Rue des Joueurs', 180.5, 75.2, 'NAT1'),
    ('Smith', 'Alice', '456 Player Street', 175.0, 68.8, 'NAT2'),
    ('Garcia', 'Carlos', '789 Calle del Jugador', 185.3, 80.0, 'NAT3'),
    ('Rossi', 'Giuseppe', '101 Via dei Giocatori', 170.8, 72.5, 'NAT4'),
    ('Johnson', 'Emma', '202 Player Lane', 168.2, 63.7, 'NAT5');

INSERT INTO MouvementJoueurMatch (idMatch, idJoueur, dateHeureEntree, dateHeureSortie) VALUES
    ('MAT1', 'JOU1', '2023-01-01 10:00:00', '2023-01-01 10:30:00'),
    ('MAT1', 'JOU2', '2023-01-01 10:00:00', '2023-01-01 10:15:00'),
    ('MAT1', 'JOU3', '2023-01-01 10:00:00', '2023-01-01 10:45:00'),
    ('MAT1', 'JOU4', '2023-01-01 10:00:00', '2023-01-01 10:30:00'),
    ('MAT1', 'JOU5', '2023-01-01 10:15:00', '2023-01-01 11:00:00');

INSERT INTO Match (idEquipe1, idEquipe2, dateHeureDebut, dateHeureFin, idLieu, idSaison) VALUES
    ('EQU1', 'EQU2', '2023-01-01 14:00:00', '2023-01-01 16:00:00', 'LIE1', 'SAI1'),
    ('EQU3', 'EQU4', '2023-01-02 16:30:00', '2023-01-02 18:30:00', 'LIE2', 'SAI1').

