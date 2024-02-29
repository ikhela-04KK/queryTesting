-- Insertion dans la table Representation


INSERT INTO Representation (Num_Rep, titre_Rep, lieu)
VALUES (1, 'Concert Rock', 'Salle de concert A'),
       (2, 'Festival Jazz', 'Parc Municipal'),
       (3, 'Soirée Pop', 'Club de Musique');

-- Insertion dans la table Musicien
INSERT INTO Musicien (Num_Mus, Nom, Num_Rep)
VALUES (101, 'John Doe', 1),
       (102, 'Jane Smith', 1),
       (103, 'Bob Johnson', 2),
       (104, 'Alice Brown', 3),
       (105, 'Charlie White', 3);

-- Insertion dans la table Programmer
INSERT INTO Programmer (DateP, Num_Rep, tarif)
VALUES ('2024-03-15', 1, 50.00),
       ('2024-04-20', 2, 40.00),
       ('2024-05-10', 3, 60.00);

-- Insertion dans la table Representation
INSERT INTO Representation (Num_Rep, titre_Rep, lieu)
VALUES (4, 'Concert Electro', 'Arena Stadium'),
       (5, 'Festival Hip Hop', 'City Park'),
       (6, 'Pop Night', 'Downtown Club');

-- Insertion dans la table Musicien
INSERT INTO Musicien (Num_Mus, Nom, Num_Rep)
VALUES (106, 'Eva Green', 4),
       (107, 'Alex Turner', 4),
       (108, 'Maria Rodriguez', 5),
       (109, 'Samuel Lee', 5),
       (110, 'Sophie Martin', 6),
       (111, 'David Johnson', 6);

-- Insertion dans la table Programmer
INSERT INTO Programmer (DateP, Num_Rep, tarif)
VALUES ('2024-06-18', 4, 55.00),
       ('2024-07-12', 5, 45.00),
       ('2024-08-05', 6, 65.00);

INSERT INTO Representation (Num_Rep, titre_Rep, lieu)
VALUES 
  (1, 'Concert Rock', 'Salle de concert A'),
  (2, 'Festival Jazz', 'Parc Municipal'),
  (3, 'Soirée Pop', 'Club de Musique'),
  (4, 'Concert Electro', 'Arena Stadium'),
  (5, 'Festival Hip Hop', 'City Park'),
  (6, 'Pop Night', 'Downtown Club');

INSERT INTO Programmer (DateP, Num_Rep, tarif)
VALUES 
  ('2008-07-25', 1, 50000.00),
  ('2008-07-25', 2, 60000.00),
  ('2008-07-25', 3, 70000.00),
  ('2008-07-25', 4, 80000.00),
  ('2008-07-25', 5, 90000.00),
  ('2008-07-25', 6, 100000.00);

INSERT INTO Representation (Num_Rep, titre_Rep, lieu)
VALUES 
  (7, 'Spectacle Théâtre', 'théâtre allissa'),
  (8, 'Comédie Musicale', 'théâtre allissa');

-- Ajout d'une représentation avec le numéro 20 et des musiciens y participant
INSERT INTO Representation (Num_Rep, titre_Rep, lieu)
VALUES (20, 'Concert de Jazz', 'Jazz Club');

INSERT INTO Musicien (Num_mus, nom, Num_Rep)
VALUES 
  (112, 'Sophie Williams', 20),
  (113, 'Michael Brown', 20),
  (114, 'Emma Turner', 20);

-- Ajout d'une autre représentation sans musiciens
INSERT INTO Representation (Num_Rep, titre_Rep, lieu)
VALUES (21, 'Exposition Artistique', 'Galerie d Art');
	