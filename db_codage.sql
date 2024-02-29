-- Table pour les développeurs
USE LOGICIEL; 

CREATE TABLE Developpeur (
    NumDev INT PRIMARY KEY,
    NomDev VARCHAR(255) NOT NULL,
    AdrDev VARCHAR(255),
    EmailDev VARCHAR(255),
    TelDev VARCHAR(15)
);

-- Table pour les projets
CREATE TABLE Projet (
    NumProj INT PRIMARY KEY,
    TitreProj VARCHAR(255) NOT NULL,
    DateDeb DATE,
    DateFin DATE
);

-- Table pour les logiciels
CREATE TABLE Logiciel (
    CodLog INT PRIMARY KEY,
    NomLog VARCHAR(255) NOT NULL,
    PrixLog DECIMAL(10, 2),
    NumProj INT,
    FOREIGN KEY (NumProj) REFERENCES Projet(NumProj)
);

-- Table pour les réalisations (relation entre développeurs et projets)
CREATE TABLE Realisation (
    NumProj INT,
    NumDev INT,
    PRIMARY KEY (NumProj, NumDev),
    FOREIGN KEY (NumProj) REFERENCES Projet(NumProj),
    FOREIGN KEY (NumDev) REFERENCES Developpeur(NumDev)
);
