--Liste des vehicules qui ont encore des places libre dans telle ville vers telle ville
--Difficulté : HARD // Utilité : 10
select vehicule.matricule
from voyage join vehicule on voyage.matricule_vehicule = vehicule.matricule 
join ville as v1 on voyage.id_ville_a_partir = v1.id_ville
join ville as v2 on voyage.id_ville_aller = v2.id_ville
on v1.id_ville = parameter and v2.idville = parameter and voyage.nb_place_dispo > 0;
