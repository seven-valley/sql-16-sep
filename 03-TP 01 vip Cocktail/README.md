# :cocktail: TP 01 VIP Cocktail
Créer une base de donnée : **invitation**  
Créer une table : **personne**  
Rajouter le prefixe "inv" à votre table  
  
Nou allons créer une liste d'invités pour des soirées VIP  
![brad](../img/03/brad.webp)
![george](../img/03/george.webp)
![jean](../img/03/jean.webp)
  

## Partie 1 Création de la table
Chaque personne à :
  
- un prénom
- un nom  
- un age  
- la date de sont inscription
- un status : Valide ou NON Valide (un booléen)
- un type : membre ou non membre (une énumération)
- une description
- salaire annuel

Créer un fichier SQL
- on efface la base si elle existe
- avec création de la base
- tester votre fichier en l'important dans PhpMyadmin

## la correction :heart_eyes: :
```mysql
DROP DATABASE invitation;
CREATE DATABASE invitation CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

USE invitation;
-- mettre un nom a la contrainte de clef primaire
-- CONSTRAINT pk_personne
-- ALT + SHIFT + fleche : dupliquer la ligne
CREATE TABLE inv_personne(
    id int NOT NULL AUTO_INCREMENT, 
    prenom VARCHAR(100) NOT NULL DEFAULT 'toto',
    nom VARCHAR(100) NOT NULL,
    age TINYINT(1) NOT NULL,
    inscription DATE NOT NULL,
    statut TINYINT(1) NOT NULL DEFAULT 1, -- 1 ok 0 pas ok
    type ENUM('membre','NON MEMBRE') NOT NULL DEFAULT 'NON MEMBRE',
    description TEXT, -- peut etre null
    salaire INT,
    CONSTRAINT pk_personne PRIMARY KEY(id)
) ENGINE=InnoDB; 
```
## Partie 2 Insertion des données


| prenom | nom | age | inscription | statut | type | description | salaire |
|----|---|---|---|---|---|---|---|
| Brad | PITT | 60 | 01/01/1970 | 1 | non membre | lorem ipsum | 2 000 000 |
| George | Cloney | 62 | 01/01/1999 | 1 | membre  | juste beau | 4 000 000 |
| Jean | DUJARDIN | 51 | 01/01/1994 | 0 | membre | brice de nice | 1 000 000 |


```mysql
TRUNCATE inv_personne;
INSERT INTO inv_personne (prenom,nom,age,inscription,statut,type,description,salaire) VALUES
('Brad','PITT',60,'1970-01-01',1,'NON membre','lorem ipsum',2000000),
('George','Cloney',62,'1999-01-01',1,'membre','juste beau',4000000),
('Jean','DUJARDIN',51,'1994-01-01',0,'membre','brice de nice',1000000)
;
```

fichier csv :  
```csv
NULL,Brad,PITT,60,1970-01-01,1,non membre,lorem ipsum,2000000
NULL,George,Cloney,62,1999-01-01,1,membre,juste beau,4000000
NULL,Jean,DUJARDIN,51,1994-01-01,0,membre,brice de nice,1000000
```
## Partie 3 Afficher

- afficher le plus gros chiffre d'affaire (avec MAX)
- afficher le plus petit chiffre d'affaire (avec MIN)
- afficher le nom de la personne du plus petit CA
- afficher le nom de la personne du plus gros CA
- afficher le salaire moyen
- afficher le nombre de personnes
- proposer une requete avec BETWEEN
- proposer une requete avec UCASE(), UPPER(),LCASE(),LOWER()
- proposer une requete avec LIKE '%..%'
- Trier par age les membres

```mysql
-- afficher le plus gros chiffre d'affaire (avec MAX)
SELECT 
MAX(salaire) AS plus_gros_ca 
FROM inv_personne;
```

```mysql
-- afficher le plus petit chiffre d'affaire (avec MIN)
SELECT 
MIN(salaire) AS plus_gros_ca 
FROM inv_personne;
```
```mysql
-- afficher le nom de la personne du plus petit CA
SELECT 
salaire,prenom,nom
FROM inv_personne 
ORDER BY salaire ASC
LIMIT 1;
```

```mysql
-- afficher le nom de la personne du plus gros CA
SELECT 
salaire,prenom,nom
FROM inv_personne 
ORDER BY salaire DESC
LIMIT 1;
```

```mysql
-- afficher le salaire moyen
SELECT AVG(salaire) AS salaire_moyen from inv_personne
```

```mysql
-- afficher le nombre de personnes

SELECT COUNT(id) FROM inv_personne;

-- GROUP BY utilisé souvent avec COUNT
```

```mysql
-- proposer une requete avec BETWEEN

SELECT
prenom,nom
FROM inv_personne
WHERE salaire BETWEEN 1000000 AND 40000000; 

```

alternative :
```mysql  
SELECT
prenom,nom
FROM inv_personne
WHERE salaire > 1000000
AND salaire < 4000000;
```


```mysql
-- proposer une requete avec UCASE(), UPPER(),LCASE(),LOWER()
Select UCASE(prenom) FROM personne
```


```mysql
-- proposer une requete avec LIKE '%..%'
SELECT nom, prenom FROM personne
WHERE prenom LIKE 'b%'
```


```mysql
SELECT 
prenom,nom
FROM inv_personne
WHERE type='membre'
ORDER BY age,nom,prenom;
```
