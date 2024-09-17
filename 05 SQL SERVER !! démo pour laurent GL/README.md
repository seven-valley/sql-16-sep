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

```sql
CREATE TABLE [chat] (
  [id] int PRIMARY KEY NOT NULL IDENTITY(1, 1),
  [nom] VARCHAR(255) NOT NULL,
  [couleur_id] int NOT NULL
)
GO

CREATE TABLE [yeux] (
  [id] int PRIMARY KEY NOT NULL IDENTITY(1, 1),
  [nom] VARCHAR(255) NOT NULL
)
GO

ALTER TABLE [chat] ADD CONSTRAINT fk_couleur FOREIGN KEY ([couleur_id]) REFERENCES [yeux] ([id])
GO
```


