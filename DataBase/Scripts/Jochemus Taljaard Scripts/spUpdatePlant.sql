Create procedure spUpdatePlant
(
@PlantID INT,
@PlantCategoryID INT,
@PlantName VARCHAR(40),
@OptimalAmbientTemp DECIMAL,
@OptimalAmbientHumidity DECIMAL,
@OptimalAmbientLight VARCHAR(7),
@OptimalInternalTemp DECIMAL,
@OptimalInternalHumidity DECIMAL,
@OptimalInternalLight VARCHAR(7),
@OptimalInternalOxygen DECIMAL,
@OptimalNitrogen DECIMAL,
@OptimalPhosphorus DECIMAL,
@OptimalPotassium DECIMAL
)
AS
BEGIN
UPDATE tblPlant 
SET
PlantCategoryID = @PlantCategoryID,
PlantName=@PlantName,
OptimalAmbientTemp=@OptimalAmbientTemp,
OptimalAmbientHumidity=@OptimalAmbientHumidity,
OptimalAmbientLight=@OptimalAmbientLight,
OptimalInternalTemp = @OptimalInternalTemp,
OptimalInternalHumidity = @OptimalInternalHumidity,
OptimalInternalLight = @OptimalAmbientLight,
OptimalInternalOxygen=@OptimalInternalOxygen,
OptimalNitrogen=@OptimalNitrogen,
OptimalPhosphorus=@OptimalPhosphorus,
OptimalPotassium=@OptimalPotassium
WHERE PlantID = @PlantID 
END