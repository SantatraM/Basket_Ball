-- DATABASE
create database basketball;
\c basketball

-- Type Action
create sequence seqTypeAction;
create table TypeAction(
     idTypeAction varchar(20) default concat('TACT' || nextval('seqTypeAction')) primary key,
     libelle varchar(50)
);

-- Nationnalite
create sequence seqNationnalite;
create table Nationnalite(
    idNationnalite varchar(20) default concat('NAT' || nextval('seqNationnalite')) primary key,
    libelle varchar(30)
);

create sequence seqLieu;
create table Lieu(
    idLieu varchar(20) default concat('LIE' || nextval('seqNationnalite')) primary key,
    libelle varchar(30)
);

-- Saison
create sequence seqSaison;
create table Saison(
    idSaison varchar(20) default concat('SAI' || nextval('seqSaison')) primary key,
    dateDebut date,
    nomSaison varchar(30) 
);

-- Poste
create sequence seqPoste;
create table Poste(
    idPoste varchar(20) default concat('POS' || nextval('seqPoste')) primary key,
    libelle varchar(20)
);

-- Equipe
create sequence seqEquipe;
create table Equipe(
    idEquipe varchar(20) default concat('EQU' || nextval('seqEquipe')) primary key,
    nomEquipe varchar(50),
    idNationnalite varchar(20),
    foreign key (idNationnalite) references Nationnalite(idNationnalite)
);

-- Match
create sequence seqMatch;
create table Match(
    idMatch varchar(20) default concat('MAT' || nextval('seqMatch')) primary key,
    idEquipe1 varchar(20), 
    idEquipe2 varchar(20),
    dateHeureDebut timestamp,
    dateHeureFin timestamp,
    idLieu varchar(20),
    idSaison varchar(20),
    foreign key (idEquipe1) references Equipe(idEquipe),
    foreign key (idEquipe2) references Equipe(idEquipe),
    foreign key (idLieu) references Lieu(idLieu),
    foreign key (idSaison) references Saison(idSaison)
);

-- Carton
create sequence seqCarton;
create table Carton(
    idCarton varchar(20) default concat('CAR' || nextval('seqCarton')) primary key,
    idMatch varchar(20),
    dateHeureDebut timestamp,
    dateHeureFin timestamp,
    foreign key (idMatch) references Match(idMatch)
);

-- Joueur
create sequence seqJoueur;
create table Joueur(
    idJoueur varchar(20) default concat('JOU' || nextval('seqJoueur')) primary key,
    nomJoueur varchar(45),
    prenomJoueur varchar(45),
    adresse varchar(50),
    taille float,
    poids float,
    idNationnalite varchar(20),
    foreign key (idNationnalite) references Nationnalite(idNationnalite)
);

-- PosteJoueur
create sequence seqPosteJoueur;
create table PosteJoueur(
    idPosteJoueur varchar(20) default concat('PJOU' || nextval('seqPosteJoueur')) primary key,
    idMatch varchar(20),
    idJoueur varchar(20),
    idPoste varchar(20),
    foreign key (idJoueur) references Joueur(idJoueur),
    foreign key (idMatch) references Match(idMatch),
    foreign key (idPoste) references Poste(idPoste)
);

-- Action
create sequence seqAction;
create table Action(
    idAction varchar(20) default concat('ACT' || nextval('seqAction')) primary key,
    idCarton varchar(20),
    idJoueur varchar(20),
    idTypeAction varchar(20),
    valeur int,
    foreign key (idCarton) references Carton(idCarton),
    foreign key (idJoueur) references Joueur(idJoueur),
    foreign key (idTypeAction) references TypeAction(idTypeAction)
);  

-- Mouvement Joueur Match
create sequence seqMouvementJoueurMatch;
create table MouvementJoueurMatch(
    idMouvementJoueurMatch varchar(20) default concat('MJMAT' || nextval('seqMouvementJoueurMatch')) primary key,
    idMatch varchar(20),
    idJoueur varchar(20),
    dateHeureEntree timestamp,
    dateHeureSortie timestamp,
    foreign key (idMatch) references Match(idMatch),   
    foreign key (idJoueur) references Joueur(idJoueur)
);


