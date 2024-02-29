
-- D�afficher les noms et les prix des logiciels appartenant au projet ayant comme titre � Voonder >> tri�s dans l�ordre d�croissant des prix�
--SELECT NomLog, PrixLog
--FROM Logiciel
--INNER JOIN Projet ON Logiciel.NumProj = Projet.NumProj
--WHERE TitreProj = 'Voonder'
--ORDER BY PrixLog DESC


-- D�afficher le total des prix des logiciels du projet num�ro 11799. Lors de l�affichage, le titre de la colonne sera � cours total du projet �.
--SELECT SUM(PrixLog) AS 'cours total du projet'
--FROM LOGICIEL
--WHERE NumProj = 11799

-- Les projets qui ont plusieurs logiciel 
--SELECT P.NumProj, P.TitreProj, COUNT(L.CodLog) AS NombreLogiciels
--FROM Projet P
--JOIN Logiciel L ON P.NumProj = L.NumProj
--GROUP BY P.NumProj, P.TitreProj
--HAVING COUNT(L.CodLog) > 1;

-- Afficher le nombre de d�veloppeurs qui ont particip� au projet intitul� �Brainbox ��
--SELECT count(Developpeur.NumDev) as NombreDev
--FROM Realisation
--INNER JOIN Developpeur ON Realisation.NumDev = Developpeur.NumDev
--INNER JOIN Projet ON Realisation.NumProj = Projet.NumProj
--WHERE TitreProj = 'Brainbox'

-- Afficher les projets qui ont plus que 5 logiciels Les num�ros et noms des d�veloppeurs qui ont particip�s dans tout les projets.
SELECT P.NumProj, P.TitreProj
FROM Projet P
INNER JOIN Logiciel L ON P.NumProj = L.NumProj
GROUP BY P.NumProj, P.TitreProj
HAVING COUNT(L.CodLog) > 2;

-- Les num�ros et noms des d�veloppeurs qui ont particip�s dans tout les projets
SELECT NumProj, TitreProj 
FROM Projet P 
INNER JOIN Realisation R ON P.NumProj=R.NumProj
GROUP BY NumProj, TitreProj
HAVING count(*)=(SELECT COUNT(*) FROM Developpeur) 
-- Les num�ros de projets dans lesquelles tous les d�veloppeurs y participent dans sa r�alisation.
SELECT NumProj, TitreProj FROM Projet P INNER JOIN Realisation R ON P.NumProj=R.NumProj
GROUP BY NumProj, TitreProj
HAVING count(*)=(SELECT COUNT(*) FROM Developpeur) 