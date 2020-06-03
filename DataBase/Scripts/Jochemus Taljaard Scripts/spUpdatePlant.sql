Create procedure spUpdatePlant
(
@PlantID INT,
@PlantCategoryID INT,
@PlantName VARCHAR(40),
@OptimalAmbientTemp DECIMAL,
@OptimalAmbientHumidity DECIMAL,
@OptimalAmbientLight VARCHAR(7),
@OptimalInternalOxygen DECIMAL,
@OptimalNitrogen DECIMAL,
@OptimalPhosphorus DECIMAL,
@OptimalPotassium DECIMAL
)
AS
BEGIN
UPDATE tblPlant 
SET
PlantName=@PlantName,
OptimalAmbientTemp=@OptimalAmbientTemp,
OptimalAmbientHumidity=@OptimalAmbientHumidity,
OptimalAmbientLight=@OptimalAmbientLight,
OptimalInternalOxygen=@OptimalInternalOxygen,
OptimalNitrogen=@OptimalNitrogen,
OptimalPhosphorus=@OptimalPhosphorus,
OptimalPotassium=@OptimalPotassium
WHERE PlantID = @PlantID 
END