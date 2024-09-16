# Exemple  pour SQL Server de Microsoft
```sql
-- CREATE DATABASE entreprise;

USE entreprise;
GO
DROP TABLE employe;
GO
CREATE TABLE employe(
	id INT CONSTRAINT  pk_personne PRIMARY KEY IDENTITY(1,1) ,
	nom VARCHAR(100) not null,
	prenom VARCHAR(100) not null,
	
);
GO
```


