/*Insert plant*/
CREATE PROCEDURE spInserPlant
(
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
INSERT INTO tblPlant(PlantCategoryID,PlantName,OptimalAmbientTemp,OptimalAmbientHumidity,OptimalAmbientLight,OptimalInternalTemp,OptimalInternalHumidity,OptimalInternalLight,OptimalInternalOxygen,OptimalNitrogen,OptimalPhosphorus,OptimalPotassium) 
values(@PlantCategoryID,@PlantName,@OptimalAmbientTemp,@OptimalAmbientHumidity,@OptimalAmbientLight,@OptimalInternalTemp,@OptimalInternalHumidity,@OptimalInternalLight,@OptimalInternalOxygen,@OptimalNitrogen,@OptimalPhosphorus,@OptimalPotassium)
END