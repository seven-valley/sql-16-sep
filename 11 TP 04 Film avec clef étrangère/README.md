# TP 04 Film avec clef étrangère

![film](/img/11/film-categ.png)

![star](../img/04/star.webp)
![matrix](../img/04/matrix.webp)
![pulp](../img/04/pulp.webp)



1 - Afficher tous les films ( avec les films sans catégories)    
2 - Afficher le nombre de films par catégorie ( avec les catégories sans films)  
3 - Quand je supprime une catégorie avec des films associés categ_id devient NULL  
4 - Dans une autre Base, Quand je supprime une catégorie, tous les films associés sont supprimés  
5 - Afficher la moyenne de film par catégorie  **Super BONUS OPTIONNEL** 
![moyenne](../img/11/moyenne.png)


# la base données
```mysql
CREATE TABLE categ (
  id INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
  nom VARCHAR(30) NOT NULL
)ENGINE=InnoDB;


CREATE TABLE film (
  id INT PRIMARY  KEY AUTO_INCREMENT NOT NULL,
  nom VARCHAR(30) NOT NULL,
  categ_id INT  NULL    
)ENGINE=InnoDB;

-- ajout de la contrainte de clef etrangere foreign key
ALTER TABLE film ADD CONSTRAINT fk_categ FOREIGN KEY (categ_id) REFERENCES categ (id);
```

# les données 
```mysql
INSERT INTO categ (nom) VALUES ('SF'),('Romantique'),('Drame'),('Horreur');
INSERT INTO film (nom,categ_id) VALUES ('Star Wars',1),('The Matrix',1),('Pulp Fiction',NULL),('Titanic',2);
```

```mysql

# 1 - Afficher tous les films ( avec les films sans catégories)
SELECT 
film.nom,
categ.nom
FROM
film
LEFT JOIN categ ON film.categ_id = categ.id;
```

```mysql
# 2 - Afficher le nombre de films par catégorie ( avec les catégories sans films)
SELECT 
categ.nom,
COUNT (film.id) AS nb_films
FROM categ
LEFT JOIN film ON categ.id = film.categ_id
GROUP BY (categ.id)
```
```sql
ALTER TABLE `film`
  ADD CONSTRAINT `fk_categ` 
  FOREIGN KEY (`categ_id`) REFERENCES `categ` (`id`) 
  -- Quand je supprime une categorie qui est associé à un film => NULL
  ON DELETE SET NULL ON UPDATE RESTRICT;
```

```sql
ALTER TABLE `film`
  ADD CONSTRAINT `fk_categ` 
  FOREIGN KEY (`categ_id`) REFERENCES `categ` (`id`) 
   -- Quand je supprime une categorie qui est associé à un film => je supprime les films associés
  ON DELETE CASCADE ON UPDATE RESTRICT;
```