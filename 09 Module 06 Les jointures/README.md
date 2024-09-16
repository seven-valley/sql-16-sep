# Mise en place des jointures 

https://www.w3schools.com/mysql/mysql_join_inner.asp
  
![inner](/img/08/inner.png)  
  
```mysql
SELECT *
FROM fruit
INNER JOIN couleur on fruit.couleur_id = couleur.id;
```

```mysql
SELECT fruit.nom,couleur.nom A
FROM fruit
INNER JOIN couleur on fruit.couleur_id = couleur.id;

SELECT f.nom AS fruit,c.nom AS couleur
FROM fruit AS f
INNER JOIN couleur AS c on f.couleur_id = c.id;
```
![inner2](/img/08/inner2.png)  
  
## le LEFT JOIN
![left](/img/08/left.png)  
https://www.w3schools.com/sql/sql_join_left.asp

```mysql
SELECT f.nom AS fruit,c.nom AS couleur
FROM fruit AS f
LEFT JOIN couleur AS c on f.couleur_id = c.id;
```
![left2](/img/08/left2.png) 

# le RIGHT JOIN 
![right](/img/08/right.png)  
https://www.w3schools.com/sql/sql_join_right.asp

```mysql
SELECT f.nom AS fruit,c.nom AS couleur
FROM fruit AS f
RIGHT JOIN couleur AS c on f.couleur_id = c.id;
```
![right2](/img/08/right2.png)  