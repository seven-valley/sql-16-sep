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

## Partie 2 Insertion des données


| prenom | nom | age | inscription | statut | type | description | salaire |
|----|---|---|---|---|---|---|---|
| Brad | PITT | 60 | 01/01/1970 | 1 | non membre | lorem ipsum | 2 000 000 |
| George | Cloney | 62 | 01/01/1999 | 1 | membre  | juste beau | 4 000 000 |
| Jean | DUJARDIN | 51 | 01/01/1994 | 0 | membre | brice de nice | 1 000 000 |

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

