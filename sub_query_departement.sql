-- Donnez la liste des employés ayant une commission
--SELECT *
--FROM Employe
--WHERE COMM IS NOT NULL

-- Donnez les noms, emplois et salaires des employés par emploi croissant , et pour chaque emploi par salaire décroissant 
--SELECT ENOM,PROF,SAL
--FROM Employe
--ORDER BY PROF ASC, SAL DESC

-- Donnez le salaire moyen des employés

--SELECT AVG(SAL) AS SalaireMoyen 
--FROM Employe

-- Donnez le salaire moyen du département Production 
-- SELECT AVG(SAL) As SalMoyenDeprod
-- FROM Employe
-- INNER JOIN Departement ON Departement.DNO = Employe.DNO
-- WHERE DNOM = 'Accounting'

-- Donnez les numéros de département et leur salaire maximum 
--Lorsque vous utilisez une fonction d'agrégation comme MAX, toutes les 
--autres colonnes dans la clause SELECT doivent être incluses dans une clause GROUP BY, 
--à moins qu'elles ne soient également des arguments de fonctions d'agrégation

-- SELECT MAX(SAL) AS SAL_MAX, DNO
-- FROM Employe
-- GROUP BY DNO

-- Donnez les différentes professions et leur salaire moyen
--SELECT PROF, AVG(SAL)
--FROM Employe
--GROUP BY PROF
 
-- Donnez le salaire moyen par profession le plus bas 
-- Impossible d'exécuter une fonction d'agrégation sur une expression comportant un agrégat ou une sous-requête.

--SELECT TOP 1 PROF, AVG(SAL) as Moy
--FROM Employe
--WHERE SAL IS NOT NULL
--GROUP BY PROF
--ORDER BY moy ASC 

-- Donnez le ou les emplois ayant le salaire moyen le plus bas, ainsi que ce salaire moyen

-- La clause ORDER BY n'est pas valide dans les vues, les fonctions inline, les tables dérivées, les sous-requêtes et les expressions de table communes, sauf si TOP, OFFSET ou FOR XML est également spécifié
SELECT PROF, AVG(SAL) as Moy
FROM Employe
GROUP BY PROF
HAVING AVG(SAL) = (SELECT TOP 1 AVG(SAL) as Moy FROM Employe WHERE SAL IS NOT NULL GROUP BY PROF ORDER BY Moy ASC)

-- Donnez le salaire moyen par profession le plus bas 
SELECT MIN(AVG_SAL) 
FROM (
    SELECT AVG(SAL) as AVG_SAL 
    FROM Employe 
    WHERE SAL IS NOT NULL 
    GROUP BY PROF
) AS Subquery;
