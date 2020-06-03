/*Insert user*/
IF EXISTS (SELECT * FROM sys.objects WHERE type = 'P' AND name = 'InserUpdateDeletetPlant')
DROP PROCEDURE InserUpdateDeletetPlant
GO

CREATE PROCEDURE InserUpdateDeletetPlant
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
@OptimalPotassium DECIMAL,
@Input varchar(15)

)
AS 
BEGIN

if(@Input='Insert')
BEGIN

INSERT INTO Plant_TBL(PlantName,OptimalInternalTemp,OptimalInternalHumidity,OptimalAmbientLight,OptimalInternalOxygen,OptimalNitrogen,OptimalPhosphorus,OptimalPotassium) 
values(@PlantName,@OptimalAmbientLight,@OptimalAmbientTemp,
@OptimalAmbientLight,@OptimalInternalOxygen,@OptimalNitrogen,@OptimalPhosphorus,@OptimalPotassium)

END

if(@Input = 'Update')
BEGIN

UPDATE Plant_TBL 
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

if(@Input ='Delete')
BEGIN

DELETE FROM Plant_TBL WHERE PlantID= @PlantID

END 

if(@Input = 'Select')
BEGIN

Select * from Plant_TBL

END

END







