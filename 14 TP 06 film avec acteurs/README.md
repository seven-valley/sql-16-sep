# TP 06 Film avec acteurs

## Le modèle relationnel
![db](../img/13/db.webp)

## Les données
![db2](../img/13/data.png)

## Reprendre la base du module 06

1 - Afficher tous les films de Léonardo DI CAPRIO  
2 - Afficher le nombre de films par acteur


# 1 Afficher tous les films Léonardo
```mysql
SELECT 
film.nom AS film,
acteur.prenom,
acteur.nom
FROM film
INNER JOIN film_has_acteur  ON film.id = film_has_acteur.film_id
INNER JOIN acteur ON acteur.id = film_has_acteur.acteur_id
WHERE acteur_id=2
```
# 2 - Afficher le nombre de films par acteur
```mysql
SELECT 
COUNT(film.id) AS nb_films,
acteur.prenom,
acteur.nom
FROM film
INNER JOIN film_has_acteur  ON film.id = film_has_acteur.film_id
INNER JOIN acteur ON acteur.id = film_has_acteur.acteur_id
GROUP BY (acteur.id);
```