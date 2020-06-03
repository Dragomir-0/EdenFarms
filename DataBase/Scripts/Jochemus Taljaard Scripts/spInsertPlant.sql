/*Insert plant*/
CREATE PROCEDURE spInserPlant
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
INSERT INTO tblPlant(PlantName,OptimalInternalTemp,OptimalInternalHumidity,OptimalAmbientLight,OptimalInternalOxygen,OptimalNitrogen,OptimalPhosphorus,OptimalPotassium) 
values(@PlantName,@OptimalAmbientLight,@OptimalAmbientTemp,
@OptimalAmbientLight,@OptimalInternalOxygen,@OptimalNitrogen,@OptimalPhosphorus,@OptimalPotassium)
END