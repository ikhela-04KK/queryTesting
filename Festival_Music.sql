USE FESTIVAL_MUSIQUE

IF OBJECT_ID('Musicien', 'U') IS NOT NULL 
DROP TABLE dbo.Musicien
GO
IF OBJECT_ID('Programmer', 'U') IS NOT NULL 
DROP TABLE dbo.Programmer
GO
IF OBJECT_ID('Representation', 'U') IS NOT NULL 
DROP TABLE dbo.Representation
GO 

-- Create the table in the specified schema 
CREATE TABLE Representation(
	Num_Rep INT NOT NULL PRIMARY KEY, 
	titre_Rep VARCHAR(50), 
	lieu VARCHAR(50)
); 
GO 
-- Create the table in the specified schema 
CREATE TABLE Musicien (
	Num_Mus INT NOT NULL PRIMARY KEY, 
	Nom  VARCHAR(50), 
	Num_Rep INT NOT NULL,
	FOREIGN KEY (Num_Rep) REFERENCES Representation(Num_Rep)
		ON UPDATE CASCADE 
		ON DELETE CASCADE
	-- add foreign ke
); 
GO 
-- Create the table in the specified schema 
CREATE TABLE Programmer (
	DateP Date , 
	Num_Rep INT NOT NULL, 
	tarif INT NOT NULL,
	FOREIGN KEY (Num_Rep) REFERENCES Representation(Num_Rep)
		ON UPDATE CASCADE
		ON DELETE CASCADE
); 