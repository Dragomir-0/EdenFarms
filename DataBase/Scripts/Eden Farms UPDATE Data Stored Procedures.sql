USE EdenFarmsDB

GO

CREATE PROCEDURE spUpdateFarm
(
@FarmID INT,
@UserID INT,
@FarmName VARCHAR(40),
@FarmLocation VARCHAR(100),
@LocationAlias VARCHAR(40)
)
AS
BEGIN
UPDATE tblFarm 
SET 
UserID = @UserID,
FarmName = @FarmName,
FarmLocation = @FarmLocation,
LocationAlias = @LocationAlias,
WHERE FarmID = @FarmID
END

GO

CREATE PROCEDURE spUpdatePlant
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

GO

CREATE PROCEDURE UpdatePlantcategory
(
@PlantCategoryID INT,
@CategoryName VARCHAR(40) ,
@CategoryDescription VARCHAR(80)
)
AS
BEGIN
UPDATE tblPlantCategory 
SET
CategoryName = @CategoryName,
CategoryDescription=@CategoryDescription
WHERE PlantCategoryID = @PlantCategoryID
END

GO

CREATE PROCEDURE spUpdatePlots
(
@PlotID INT ,
@FarmID INT ,
@PlantID INT ,
@UserOverride VARCHAR(40),
@PerformanceReview VARCHAR(50)
)
AS
BEGIN
UPDATE tblPlots 
SET
FarmID = @FarmID,
PlantID = @PlantID,
UserOverride=@UserOverride,
PerformanceReview=@PerformanceReview
WHERE PlotID = @PlotID
END

GO

CREATE PROCEDURE spUpdateUsers
(
@userID INT,
@UserName VARCHAR(40),
@UserPassword VARCHAR(50),
@VatIDNumber VARCHAR(10),
@ContactNumber VARCHAR(10),
@Email VARCHAR(40),
@Address VARCHAR(100)
)
AS
BEGIN
UPDATE tblUser 
SET 
UserName = @UserName,
UserPassword = @UserPassword,
VatIDNumber = @VatIDNumber,
ContactNumber = @ContactNumber,
Email = @Email,
UserAddress = @Address 
WHERE USERID = @UserID
END