USE EdenFarmsDB

GO

CREATE PROCEDURE spInsertFarm
(
@UserID INT,
@FarmName VARCHAR(40),
@FarmLocation VARCHAR,
@LocationAlias VARCHAR(40)
)
AS 
BEGIN
INSERT INTO tblFarm(UserID,FarmName,FarmLocation,LocationAlias) 
VALUES(@UserID,@FarmName,@FarmLocation,@LocationAlias)
END

GO

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
VALUES(@PlantCategoryID,@PlantName,@OptimalAmbientTemp,@OptimalAmbientHumidity,@OptimalAmbientLight,@OptimalInternalTemp,@OptimalInternalHumidity,@OptimalInternalLight,@OptimalInternalOxygen,@OptimalNitrogen,@OptimalPhosphorus,@OptimalPotassium)
END

GO

CREATE PROCEDURE spInserPlantcategory
(
@CategoryName VARCHAR(40) ,
@CategoryDescription VARCHAR(80) 
)
AS
BEGIN
INSERT INTO tblPlantCategory(CategoryName,CategoryDescription) 
VALUES(@CategoryName,@CategoryDescription)
END

GO

CREATE PROCEDURE spInsertPlots
(
@FarmID INT,
@PlantID INT,
@UserOverride VARCHAR(40),
@PerformanceReview VARCHAR(50)
)
AS 
BEGIN
INSERT INTO tblPlots(FarmID,PlantID,UserOverride,PerformanceReview) 
VALUES(@FarmID,@PlantID,@UserOverride,@PerformanceReview)
END

GO

Create PROCEDURE spInserThetUsers
(
@UserName VARCHAR(40),
@UserPassword VARCHAR(50),
@VatIDNumber VARCHAR(10),
@ContactNumber VARCHAR(10),
@Email VARCHAR(40),
@Address VARCHAR(100)
)
AS 
BEGIN
INSERT INTO tblUser(UserName,UserPassword,VatIDNumber,ContactNumber,Email,UserAddress) 
VALUES(@UserName,@UserPassword,@VatIDNumber,@ContactNumber,@Email,@Address)
END