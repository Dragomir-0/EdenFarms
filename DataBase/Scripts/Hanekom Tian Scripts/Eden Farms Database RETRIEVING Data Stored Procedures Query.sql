USE EdenFarmsDB

GO

/* GROUP PLANTS BY PROCEDURES */

CREATE PROCEDURE spListPlantsByCategoryID
@categoryID INT
AS
BEGIN
SELECT PlantID
FROM tblPlant
WHERE PlantCategoryID = @categoryID
END

GO

CREATE PROCEDURE spListPlantsByName
@name VARCHAR(40)
AS
BEGIN
SELECT PlantID
FROM tblPlant
WHERE PlantName = @name
END

GO

CREATE PROCEDURE spListPlantByAmbientTemp
@temp DECIMAL
AS
BEGIN
SELECT PlantID
FROM tblPlant
WHERE OptimalAmbientTemp = @temp
END

GO

CREATE PROCEDURE spListPlantByAmbientHumidity
@humid DECIMAL
AS
BEGIN
SELECT PlantID
FROM tblPlant
WHERE OptimalAmbientHumidity = @humid
END

GO

CREATE PROCEDURE spListPlantByAmbientLight
@light VARCHAR(7)
AS
BEGIN
SELECT PlantID
FROM tblPlant
WHERE OptimalAmbientLight = @light
END

GO

CREATE PROCEDURE spListPlantByAmbientVariables
@temp DECIMAL, @humid DECIMAL, @light varchar(7)
AS
BEGIN
SELECT PlantID
FROM tblPlant
WHERE OptimalAmbientTemp = @temp AND OptimalAmbientHumidity = @humid AND OptimalAmbientLight = @light
END

GO

CREATE PROCEDURE spListPlantByInternalTemp
@temp DECIMAL
AS
BEGIN
SELECT PlantID
FROM tblPlant
WHERE OptimalInternalTemp = @temp
END

GO

CREATE PROCEDURE spListPlantByInternalHumidity
@humid DECIMAL
AS
BEGIN
SELECT PlantID
FROM tblPlant
WHERE OptimalInternalHumidity = @humid
END

GO

CREATE PROCEDURE spListPlantByInternalLight
@light varchar(7)
AS
BEGIN
SELECT PlantID
FROM tblPlant
WHERE OptimalInternalLight = @light
END

GO

CREATE PROCEDURE spListPlantByInternalOxygen
@oxy DECIMAL
AS
BEGIN
SELECT PlantID
FROM tblPlant
WHERE OptimalInternalOxygen = @oxy
END

GO

CREATE PROCEDURE spListPlantByInternalVariables
@temp DECIMAL, @humid DECIMAL, @light varchar(7), @oxy DECIMAL
AS
BEGIN
SELECT PlantID
FROM tblPlant
WHERE OptimalInternalTemp = @temp AND OptimalInternalHumidity = @humid AND OptimalInternalLight = @light AND OptimalInternalOxygen = @oxy
END

GO

CREATE PROCEDURE spListPlantByNitrogen
@nitro DECIMAL
AS
BEGIN
SELECT PlantID
FROM tblPlant
WHERE OptimalNitrogen = @nitro
END

GO

CREATE PROCEDURE spListPlantByPhosphorus
@phos DECIMAL
AS
BEGIN
SELECT PlantID
FROM tblPlant
WHERE OptimalPhosphorus = @phos
END

GO

CREATE PROCEDURE spListPlantByPotassium
@pot DECIMAL
AS
BEGIN
SELECT PlantID
FROM tblPlant
WHERE OptimalPotassium = @pot
END

GO 

CREATE PROCEDURE spListPlantByVariables
@nitro DECIMAL, @phos DECIMAL, @pot DECIMAL
AS
BEGIN
SELECT PlantID
FROM tblPlant
WHERE OptimalNitrogen = @nitro AND OptimalPhosphorus = @phos AND OptimalPotassium = @pot
END

GO

/* GET SPECIFIC PLANT DETAILS WITH ID */

CREATE PROCEDURE spListAllPlantDetails
@id INT
AS
BEGIN
SELECT *
FROM tblPlant
WHERE PlantID = @id
END

GO

CREATE PROCEDURE spListPlantDetails
@id INT
AS
BEGIN
SELECT PlantID, PlantCategoryID, PlantName
FROM tblPlant
WHERE PlantID = @id
END

GO

CREATE PROCEDURE spListPlantAmbientVariables
@id INT
AS
BEGIN
SELECT OptimalAmbientHumidity, OptimalAmbientLight, OptimalAmbientTemp
FROM tblPlant
WHERE PlantID = @id
END

GO

CREATE PROCEDURE spListPlantInternalVariables
@id INT
AS
BEGIN
SELECT OptimalInternalHumidity, OptimalInternalLight, OptimalInternalOxygen, OptimalInternalTemp
FROM tblPlant
WHERE PlantID = @id
END

GO

CREATE PROCEDURE spListPlantVariables
@id INT
AS
BEGIN
SELECT OptimalNitrogen, OptimalPhosphorus, OptimalPotassium
FROM tblPlant
WHERE PlantID = @id
END

GO

/* GROUP PLOTS BY PROCEDURES */

CREATE PROCEDURE spListPlotByPlantID
@id INT
AS
BEGIN
SELECT PlotID
FROM tblPlots
WHERE PlantID = @id
END

GO

CREATE PROCEDURE spListPlotByFarmID
@id INT
AS
BEGIN
SELECT PlotID
FROM tblPlots
WHERE FarmID = @id
END

GO

/* GET PLOT DETAILS WITH PLOT-ID */

CREATE PROCEDURE spListPlotDetails
@id INT
AS
BEGIN
SELECT *
FROM tblPlots
WHERE PlotID = @id
END

GO

CREATE PROCEDURE spListPlotOverrides
@id INT
AS
BEGIN
SELECT UserOverride
FROM tblPlots
WHERE PlotID = @id
END

GO

CREATE PROCEDURE spListPlotPerformance
@id INT
AS
BEGIN
SELECT PerformanceReview
FROM tblPlots
WHERE PlotID = @id
END

GO

/* GROUP FARMS BY PROCEDURES */

CREATE PROCEDURE spListFarmByUserID
@id INT
AS
BEGIN
SELECT FarmID
FROM tblFarm
WHERE UserID = @id
END

GO

CREATE PROCEDURE spListFarmByName
@name VARCHAR(40)
AS
BEGIN
SELECT FarmID
FROM tblFarm
WHERE FarmName = @name
END

GO

CREATE PROCEDURE spListFarmByLocation
@location VARCHAR(100)
AS
BEGIN
SELECT FarmID
FROM tblFarm
WHERE FarmLocation = @location
END

GO

CREATE PROCEDURE spListFarmByLocationAlias
@alias VARCHAR(40)
AS
BEGIN
SELECT FarmID
FROM tblFarm
WHERE LocationAlias = @alias
END

GO

/* LIST Farm DETAILS WITH ID */

CREATE PROCEDURE spListFarmDetails
@id INT
AS
BEGIN
SELECT *
FROM tblFarm
WHERE FarmID = @id
END

GO

CREATE PROCEDURE spListFarmUser
@id INT
AS
BEGIN
SELECT UserID
FROM tblFarm
WHERE FarmID = @id
END

GO

CREATE PROCEDURE spListFarmName
@id INT
AS
BEGIN
SELECT FarmName
FROM tblFarm
WHERE FarmID = @id
END

GO

CREATE PROCEDURE spListFarmLocation
@id INT
AS
BEGIN
SELECT FarmLocation
FROM tblFarm
WHERE FarmID = @id
END

GO

CREATE PROCEDURE spListFarmAlias
@id INT
AS
BEGIN
SELECT LocationAlias
FROM tblFarm
WHERE FarmID = @id
END

GO

/* LIST USER DETAILS PROCEDURES */

CREATE PROCEDURE spListUserIDDetails
@id INT
AS
BEGIN
SELECT *
FROM tblUser
WHERE UserID = @id
END

GO

CREATE PROCEDURE spListUserRoleIDDetails
@id INT
AS
BEGIN
SELECT *
FROM tblUser
WHERE RoleID = @id
END

GO

CREATE PROCEDURE spListUserNameDetails
@name VARCHAR(40)
AS
BEGIN
SELECT *
FROM tblUser
WHERE UserName = @name
END

GO

CREATE PROCEDURE spListUserPasswordDetails
@password VARCHAR(50)
AS
BEGIN
SELECT * 
FROM tblUser
WHERE UserPassword = @password
END

GO

CREATE PROCEDURE spListUserVatDetails
@vat VARCHAR(10)
AS
BEGIN
SELECT *
FROM tblUser
WHERE VatIDNumber = @vat
END

GO

CREATE PROCEDURE spListUserContactDetails
@num VARCHAR(10)
AS
BEGIN
SELECT *
FROM tblUser
WHERE ContactNumber = @num
END

GO

CREATE PROCEDURE spListUserEmailDetails
@email VARCHAR(40)
AS
BEGIN
SELECT *
FROM tblUser
WHERE Email = @email
END

GO

CREATE PROCEDURE spListUserAddressDetails
@address VARCHAR(100)
AS
BEGIN
SELECT *
FROM tblUser
WHERE UserAddress = @address
END

GO

/* LIST PLANT CATEGORY DETAILS PROCEDURES */

CREATE PROCEDURE spListPlantCategoryIDDetails
@id INT
AS
BEGIN
SELECT *
FROM tblPlantCategory
WHERE PlantCategoryID = @id
END

GO

CREATE PROCEDURE spListPlantCategoryNameDetails
@name VARCHAR(40)
AS
BEGIN
SELECT *
FROM tblPlantCategory
WHERE CategoryName = @name
END

GO

CREATE PROCEDURE spListPlantDescriptionDetails
@desc VARCHAR(80)
AS
BEGIN
SELECT *
FROM tblPlantCategory
WHERE CategoryDescription = @desc
END

GO

/* LIST ROLE DETAILS PROCEDURES */

CREATE PROCEDURE spListRoles
AS
BEGIN
SELECT *
FROM tblRole
END

GO

CREATE PROCEDURE spListRoleIDDetails
@id INT
AS
BEGIN
SELECT *
FROM tblRole
WHERE RoleID = @id
END

GO

CREATE PROCEDURE spListRoleDescriptionDetails
@desc VARCHAR(100)
AS
BEGIN	
SELECT *
FROM tblRole
WHERE RoleDescription = @desc
END