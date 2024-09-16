# Table de jointure

![salade](/img/08/salade.png)
  
![salade](/img/10/salade.png)
propmt db diagram :

## Une clef étrangère ?
- c'est la clef primaire d'une autre table
- mise en place d'un **contrainte d'intégrité** de clef étragère:
  - je viens vérifier que l'id ajouter est un id de clef primaire  
  - La clef étragère couleur_id de la table fruit  
doit correspondre à la clef primaire de couleur  

# relation clef étrangère :
**Many to One** et **One To many**
Un fruit à une seule couleur : **Many to One**  
Une couleur est posséder par plusieurs fruis **One to   Many** 

```
Table fruit {
  id INT [pk, not null]
  nom VARCHAR(30) [not null]
  couleur_id INT [not null]
}

Table couleur {
  id INT [pk, not null]
  nom VARCHAR(30) [not null]
}

Ref: "couleur"."id" < "fruit"."couleur_id"
```

## Creation des tables Version 1 :
```mysql
CREATE TABLE couleur (
  id INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
  nom VARCHAR(30) NOT NULL
)ENGINE=InnoDB;


-- ajout de la contrainte de clef etrangere foreign key
CREATE TABLE fruit (
  id INT PRIMARY  KEY AUTO_INCREMENT NOT NULL,
  nom VARCHAR(30) NOT NULL,
  couleur_id INT  NULL,
    CONSTRAINT fk_couleur FOREIGN KEY (couleur_id) REFERENCES couleur(id)
)ENGINE=InnoDB;
```
## Creation des tables Version 2 :
```mysql

CREATE TABLE couleur (
  id INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
  nom VARCHAR(30) NOT NULL
)ENGINE=InnoDB;


CREATE TABLE fruit (
  id INT PRIMARY  KEY AUTO_INCREMENT NOT NULL,
  nom VARCHAR(30) NOT NULL,
  couleur_id INT  NULL,    
)ENGINE=InnoDB;

-- ajout de la contrainte de clef etrangere foreign key
ALTER TABLE fruit ADD CONSTRAINT fk_couleur FOREIGN KEY (couleur_id) REFERENCES couleur (id);
```

# pseudo code pour db diagram

https://dbdiagram.io/home  

```mysql
CREATE TABLE `fruit` (
  `id` INT PRIMARY KEY NOT NULL,
  `nom` VARCHAR(30) NOT NULL,
  `couleur_id` INT NOT NULL
)ENGINE=InnoDB;

CREATE TABLE `couleur` (
  `id` INT PRIMARY KEY NOT NULL,
  `nom` VARCHAR(30) NOT NULL
)ENGINE=InnoDB;

ALTER TABLE `fruit` ADD FOREIGN KEY (`couleur_id`) REFERENCES `couleur` (`id`);
```

# Ajouter les données
```mysql
INSERT INTO couleur (nom) VALUES ('rouge'),('vert'),('bleu');
INSERT INTO fruit (nom,couleur_id) VALUES ('pomme',1),('poire',2),('cerise',NULL);
```
