# TP 03 les chats

![terminal](/img/07/tableau.png)
  
![maincoon](/img/09/maincoon.webp)
![siamois](/img/09/siamois.webp)
![bengal](/img/09/bengal.webp)
![scottish](/img/09/scottish.webp)

01 - Créer la data base **zoo**  
02 - Créer la table **chat**  
03 - Ajouter les données  
04 - Afficher le chat avec l'id :2  
05 - Trier les chats par nom et par age  
06 - Afficher les chats qui vive entre 11 et 19 ans  
07 - Afficher le ou les chats dont le nom contient 'sia'  
08 - Afficher la moyenne d'age des chats  
09 - Afficher le nombre de chats dans la table  
10 - Ajouter les données à partir d'un fichier excel  

## La correction :heart_eyes: :

```mysql
# 01 - Créer la data base zoo  
CREATE DATABASE zoo CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
```

```mysql
# 02 - Créer la table chat 
CREATE TABLE chat (
  id int NOT NULL AUTO_INCREMENT,
  nom varchar(50) NOT NULL,
  yeux varchar(50)  NOT NULL,
  age int NOT NULL,
  CONSTRAINT pk_chat PRIMARY KEY (id)
) ENGINE=InnoDB;
```

```mysql
# 03 - Ajouter les données 
INSERT INTO chat (id, nom, yeux, age) VALUES
(1, 'Maine Coon', 'marron', 20),
(2, 'Siaimois', 'bleu', 25),
(3, 'Bengal', 'marron', 18),
(4, 'Scottish Fold', 'marron', 10);
```
```mysql
# 04 - Ajouter les données 
SELECT 
*
FROM chat  
```

```mysql
# 05 - Afficher le chat avec l'id :2 
SELECT 
id, nom, yeux, age 
FROM chat 
WHERE id=2
```

```mysql
# 06 - Afficher les chats qui vive entre 11 et 19 ans 
SELECT 
nom, age 
FROM chat 
WHERE age >=11
AND age <=19
```
```mysql
# 07 - Afficher le ou les chats dont le nom contient 'sia'  
SELECT 
id, nom, yeux, age 
FROM chat 
WHERE nom LIKE 'sia%'
```
```mysql
# 08 - Afficher la moyenne d'age des chats  
SELECT 
AVG(age)
FROM chat 
```
```mysql
# 09 - Afficher le nombre de chats dans la table 
SELECT 
COUNT(id) AS nb_chat
FROM chat  
```

