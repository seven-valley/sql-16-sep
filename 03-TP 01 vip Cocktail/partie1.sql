
CREATE DATABASE invitation CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

USE invitation;
-- mettre un nom a la contrainte de clef primaire
-- CONSTRAINT pk_personne
-- ALT + SHIFT + fleche : dupliquer la ligne
CREATE TABLE inv_personne(
    --id int NOT NULL AUTO_INCREMENT PRIMARY KEY,
    id int NOT NULL AUTO_INCREMENT CONSTRAINT pk_personne PRIMARY KEY,
    prenom VARCHAR(100) NOT NULL DEFAULT 'toto',
    nom VARCHAR(100) NOT NULL,
    age TINYINT(1) NOT NULL,
    inscription DATE NOT NULL,
    statut TINYINT(1) NOT NULL DEFAULT 1, -- 1 ok 0 pas ok
    type ENUM('membre','NON MEMBRE') NOT NULL DEFAULT 'NON MEMBRE',
    description TEXT, -- peut etre null
    salaire INT
)ENGINE=InnoDB;