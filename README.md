# Plan de la formation

## JOUR 1

### Creation de data base
- Créer une base de données  
- Effacer une base de données  
### Creation d'une table
- Créer une table  
- Effacer une table  
- Ajouter des champs avec un type  
- Créer une contrainte de clef primare  
- Créer une contrainte de nullité  
- Mettre des valeurs par défault  

### Ajouter des données
- Ajouter des données avec ou sans clef primaire  
- Tester les valeurs par défaults  
- Tester les valeurs null  

### Lecture des données
- Prendre en main **as**
- Utiliser la condition **where**
- Filtrer avec **LIMIT**
- Classer avec **ORDER BY**

**TP 01 invitation**
Création d'une table personne
  
![personne](./img/personne.png)
  
## JOUR 2

### Révision
TP 02  de Révision chat du JOUR 1

### la clef étrangère
- Créer une clef étrangère  
- Remplir une table avec une clef étrangère  
- Présentation de db diagram    
![salade](./img/08/salade.png)



### Les Jointures :
LEFT RIGHT ou INNER JOIN ?
Mettre en place des jointures pour extraires les données

### TP 03 Chats avec clef étrangère
- Afficher les chat avec les couleurs des yeux 

### TP 04 Films  avec clef étrangère
- Afficher les films avec les catégories

### TP 05 CRM 
- Extraire les données avec plusieurs jointures
- mettre en place un left join  
  
 :shipit:  
# Les raccourcis VS CODE

## dupliquer une ligne
<kbd>Alt</kbd> + <kbd>Shift</kbd> + <kbd>fleche</kbd> (fleche haut et bas)

## deplacer la ligne ou un bloque
<kbd>Alt</kbd> +  <kbd>fleche</kbd>

## Modifier plusieurs occurance
Je met surbrillance puis x le nombre d'occurance  
<kbd>Ctrl</kbd> +  <kbd>D</kbd>  

## supprimer la ligne
<kbd>Ctrl</kbd> +  <kbd>Shift</kbd>  +  <kbd>k</kbd>  

## Ré indenter le code
<kbd>Shift</kbd> +  <kbd>Alt</kbd>  +  <kbd>f</kbd>  

## Rechercher dans tous les fichiers
<kbd>Ctrl</kbd> +  <kbd>Shift</kbd>  +  <kbd>f</kbd> 

# mettre en commentaire plusieurs lignes
<kbd>Ctrl</kbd> +  <kbd>/</kbd>

# Emmet
## Activer emmet
file > preferences > settings  
je tape "emmet"  
j'active trigger on tab  

# structure HTML
!+ <kbd>tab</kbd>

.container  
```html 
<div class="container"></div> 
 ```
.toto  
```html 
<div class="toto"></div> 
``` 
#titre
```html   
<div id="titre"></div>  
```

les tableaux :
```
table>thead>tr>th*6 
```

```
tbody>tr*2>td*3
````

```
table>thead>tr>th*3^^tbody>tr*2>td*3
```
Les tableaux
```html
<table>
    <thead>
        <tr>
            <th>#</th>
            <th>Prénom</th>
            <th>Nom</th>
        </tr>
    </thead>
    <tbody>
        <tr>
            <td>0</td>
            <td>Brad</td>
            <td>PITT</td>
        </tr>
        <tr>
            <td>1</td>
            <td>Tom</td>
            <td>Cruise</td>
        </tr>
    </tbody>
</table>
```

# Liens sympa
Admin panel  
https://themeforest.net/category/site-templates/admin-templates

Maquettes bootstrap  
https://startbootstrap.com/templates/landing-pages
https://startbootstrap.com/template/small-business

changer le themes de bootstrap  
https://bootswatch.com/

le openclassrooms de Envato   
https://tutsplus.com/
