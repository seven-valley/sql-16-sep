# TP 03 A Table de jointure

![chat](/img/09/chat.png)

![maincoon](/img/09/maincoon.webp)
![siamois](/img/09/siamois.webp)
![bengal](/img/09/bengal.webp)
![scottish](/img/09/scottish.webp)

# objectif :
1 - Création de la base de données **spa**  
2 - Création de la table **chat**  
3 - Creation de la table **couleur**  
4 - Insérer  les données  
5 - Afficher les chats avec leur couleur d'yeux  
6 - Faire le script pour supprimer les table (DROP TABLE)  

```mysql
CREATE TABLE chat (
 id int NOT NULL AUTO_INCREMENT,
 nom VARCHAR(50) NOT NULL,
 couleur_id int NOT NULL,
 CONSTRAINT pk_chat PRIMARY KEY (id)
)ENGINE=INNODB;

CREATE TABLE couleur (
 id int NOT NULL AUTO_INCREMENT,
 nom VARCHAR(50) NOT NULL,
 CONSTRAINT pk_couleur PRIMARY KEY (id)
)ENGINE=INNODB;

ALTER TABLE chat ADD CONSTRAINT fk_couleur FOREIGN KEY (couleur_id) REFERENCES couleur(id);
```

```mysql
INSERT INTO couleur (nom) VALUES
('marron'),
('bleu');



INSERT INTO chat (nom,couleur_id) VALUES
('maine coon',1),
('siaimois',2),
('bengal',1),
('Scottish Fold',1);
```
# propmt de dbDiagram.io
https://dbdiagram.io/

```
Table couleur{
  id int [pk,not null, increment]
  nom varchar(30) [not null]
}

Table chat{
  id int [pk,not null, increment]
  nom varchar(30) [not null]
  couleur_id int [not null]
}

Ref: "couleur"."id" < "chat"."couleur_id"
```
