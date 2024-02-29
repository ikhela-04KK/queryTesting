-- Identifier les valeurs non convertibles dans la colonne SAL
SELECT * FROM Employe WHERE ISNUMERIC(SAL) = 0 AND SAL IS NOT NULL;

-- Identifier les valeurs non convertibles dans la colonne COMM
SELECT * FROM Employe WHERE ISNUMERIC(COMM) = 0 AND COMM IS NOT NULL;

-- Mettre à jour les valeurs non convertibles à NULL par exemple
UPDATE Employe SET SAL = NULL WHERE ISNUMERIC(SAL) = 0 AND SAL IS NOT NULL;
UPDATE Employe SET COMM = NULL WHERE ISNUMERIC(COMM) = 0 AND COMM IS NOT NULL;
