-- Donnez la liste des employ�s ayant une commission
--SELECT *
--FROM Employe
--WHERE COMM IS NOT NULL

-- Donnez les noms, emplois et salaires des employ�s par emploi croissant , et pour chaque emploi par salaire d�croissant 
--SELECT ENOM,PROF,SAL
--FROM Employe
--ORDER BY PROF ASC, SAL DESC

-- Donnez le salaire moyen des employ�s

--SELECT AVG(SAL) AS SalaireMoyen 
--FROM Employe

-- Donnez le salaire moyen du d�partement Production 
-- SELECT AVG(SAL) As SalMoyenDeprod
-- FROM Employe
-- INNER JOIN Departement ON Departement.DNO = Employe.DNO
-- WHERE DNOM = 'Accounting'

-- Donnez les num�ros de d�partement et leur salaire maximum 
--Lorsque vous utilisez une fonction d'agr�gation comme MAX, toutes les 
--autres colonnes dans la clause SELECT doivent �tre incluses dans une clause GROUP BY, 
--� moins qu'elles ne soient �galement des arguments de fonctions d'agr�gation

-- SELECT MAX(SAL) AS SAL_MAX, DNO
-- FROM Employe
-- GROUP BY DNO

-- Donnez les diff�rentes professions et leur salaire moyen
--SELECT PROF, AVG(SAL)
--FROM Employe
--GROUP BY PROF
 
-- Donnez le salaire moyen par profession le plus bas 
-- Impossible d'ex�cuter une fonction d'agr�gation sur une expression comportant un agr�gat ou une sous-requ�te.

--SELECT TOP 1 PROF, AVG(SAL) as Moy
--FROM Employe
--WHERE SAL IS NOT NULL
--GROUP BY PROF
--ORDER BY moy ASC 

-- Donnez le ou les emplois ayant le salaire moyen le plus bas, ainsi que ce salaire moyen

-- La clause ORDER BY n'est pas valide dans les vues, les fonctions inline, les tables d�riv�es, les sous-requ�tes et les expressions de table communes, sauf si TOP, OFFSET ou FOR XML est �galement sp�cifi�
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
