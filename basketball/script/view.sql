create or replace view v_joueursPPM as 
select sum(valeur) , a.idJoueur , pj.idMatch
    from Action as a
        join PosteJoueur pj on a.idJoueur=pj.idJoueur
        join Match m on m.idMatch = pj.idMatch
    where a.idTypeAction='TACT1'
    group by a.idTypeAction,a.idJoueur,pj.idMatch;

create or replace view v_joueursRPM as 
select sum(valeur),  a.idJoueur , pj.idMatch
    from Action as a
        join PosteJoueur pj on a.idJoueur=pj.idJoueur
        join Match m on m.idMatch = pj.idMatch
    where a.idTypeAction='TACT2'
    group by a.idTypeAction,a.idJoueur,pj.idMatch;

create or replace view v_joueursPDPM as 
select sum(valeur) , a.idJoueur , pj.idMatch
    from Action as a
        join PosteJoueur pj on a.idJoueur=pj.idJoueur
        join Match m on m.idMatch = pj.idMatch
    where a.idTypeAction='TACT3'
    group by a.idTypeAction,a.idJoueur,pj.idMatch;

create or replace view v_joueursMPM as 
select sum(valeur) , a.idJoueur , pj.idMatch
    from Action as a
        join PosteJoueur pj on a.idJoueur=pj.idJoueur
        join Match m on m.idMatch = pj.idMatch
    where a.idTypeAction='TACT4'
    group by a.idTypeAction,a.idJoueur,pj.idMatch;

create or replace view v_joueursEFF as 
select sum(valeur) , a.idJoueur , pj.idMatch
    from Action as a
        join PosteJoueur pj on a.idJoueur=pj.idJoueur
        join Match m on m.idMatch = pj.idMatch
    where a.idTypeAction='TACT5'
    group by a.idTypeAction,a.idJoueur,pj.idMatch;

create or replace view v_joueursFG as 
select sum(valeur) , a.idJoueur , pj.idMatch
    from Action as a
        join PosteJoueur pj on a.idJoueur=pj.idJoueur
        join Match m on m.idMatch = pj.idMatch
    where a.idTypeAction='TACT6'
    group by a.idTypeAction,a.idJoueur,pj.idMatch;

create or replace view v_joueurs3P as 
select sum(valeur) , a.idJoueur , pj.idMatch
    from Action as a
        join PosteJoueur pj on a.idJoueur=pj.idJoueur
        join Match m on m.idMatch = pj.idMatch
    where a.idTypeAction='TACT7'
    group by a.idTypeAction,a.idJoueur,pj.idMatch;

create or replace view v_joueursLF as 
select sum(valeur) , a.idJoueur , pj.idMatch
    from Action as a
        join PosteJoueur pj on a.idJoueur=pj.idJoueur
        join Match m on m.idMatch = pj.idMatch
    where a.idTypeAction='TACT8'
    group by a.idTypeAction,a.idJoueur,pj.idMatch;

create or replace view v_nombreMatchJoue as
select count(*) , pj.idJoueur 
    from PosteJoueur pj
        join Joueur j on pj.idJoueur=j.idJoueur
        join Match m on m.idMatch = pj.idMatch
    group by m.idsaison,pj.idJoueur;

create or replace view v_nombreMatch as
select count(*) , e.idEquipe ,s.idsaison
    from Equipe e
        join Match m on m.idEquipe1 = e.idEquipe
        join Saison s on s.idsaison = m.idsaison
    group by s.idsaison,e.idEquipe;