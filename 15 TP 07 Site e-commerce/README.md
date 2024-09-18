# TP 7 SITE E-commerce

![base](../img/13/data.png)


# La base de données
```mysql
CREATE TABLE client (
  id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
  nom VARCHAR(100) NOT NULL,
  prenom VARCHAR(100),
  CONSTRAINT PRIMARY pk_client(id)
);

CREATE TABLE commande (
  id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
  datetime VARCHAR(100) NOT NULL,
  client_id int NOT NULL,
    CONSTRAINT PRIMARY pk_commande(id)
);

CREATE TABLE article (
  id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
  nom VARCHAR(100) NOT NULL,
  prix float NOT NULL,
   CONSTRAINT PRIMARY pk_article(id)
);

-- ajouter la table ligne ...

ALTER TABLE commande ADD FOREIGN KEY (client_id) REFERENCES client (id);
```

# Objectifs
 1- ajouter la table ligne