-- la liste des titres des r�prensentations 
SELECT titre_Rep 
FROM Representation;

-- la liste des titres repr�sentations ayant lieu au << th�atres allissa >> 
SELECT titre_Rep
FROM Representation
WHERE lieu = 'th��tre allissa'

--WITH CTE AS (
--    SELECT Num_Rep, nom,
--           ROW_NUMBER() OVER (PARTITION BY Num_Rep ORDER BY (SELECT NULL)) AS RowNum
--    FROM Musicien
--)
--DELETE FROM CTE WHERE RowNum > 1;

-- La liste des noms des musiciens et des titres et les titres des repr�sentations auxquelles ilsparticipent.
SELECT DISTINCT Nom, titre_Rep
FROM Musicien
INNER JOIN Representation ON Representation.Num_Rep = Musicien.Num_Rep

-- Le nombre des musiciens qui participent � la repr�sentations n�20.
SELECT count(*) AS NombreMusique
FROM Musicien 
WHERE Num_Rep = 20

-- Les repr�sentations et leurs dates dont le tarif ne d�passe pas 150000.
SELECT Representation.Num_Rep , titre_Rep , lieu , DateP
FROM Representation 
INNER JOIN Programmer ON Programmer.Num_Rep = Representation.Num_Rep
WHERE tarif < 150000

