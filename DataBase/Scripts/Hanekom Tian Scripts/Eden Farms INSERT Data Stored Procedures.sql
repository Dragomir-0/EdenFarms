USE EdenFarmsDB

GO

CREATE PROCEDURE spInsertFarm
(
@UserID INT,
@FarmName VARCHAR(40),
@FarmLocation VARCHAR(100),
@LocationAlias VARCHAR(40)
)
AS 
BEGIN
	BEGIN TRY
		BEGIN TRANSACTION

			INSERT INTO tblFarm(UserID,FarmName,FarmLocation,LocationAlias) 
			VALUES(@UserID,@FarmName,@FarmLocation,@LocationAlias)

		COMMIT
		PRINT 'spInsertFarm Transaction Successful'
	END TRY
	BEGIN CATCH
		ROLLBACK
		PRINT 'spInsertFarm Transaction UNSUCCESSFUL'
	END CATCH
END

GO

CREATE PROCEDURE spInsertPlant
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
	BEGIN TRY
		BEGIN TRANSACTION

			INSERT INTO tblPlant(PlantCategoryID,PlantName,OptimalAmbientTemp,OptimalAmbientHumidity,OptimalAmbientLight,OptimalInternalTemp,OptimalInternalHumidity,OptimalInternalLight,OptimalInternalOxygen,OptimalNitrogen,OptimalPhosphorus,OptimalPotassium) 
			VALUES(@PlantCategoryID,@PlantName,@OptimalAmbientTemp,@OptimalAmbientHumidity,@OptimalAmbientLight,@OptimalInternalTemp,@OptimalInternalHumidity,@OptimalInternalLight,@OptimalInternalOxygen,@OptimalNitrogen,@OptimalPhosphorus,@OptimalPotassium)

		COMMIT
		PRINT 'spInsertPlant Transaction Successful'
	END TRY
	BEGIN CATCH
		ROLLBACK
		PRINT 'spInsertPlant Transaction UNSUCCESSFUL'
	END CATCH
END

GO

CREATE PROCEDURE spInsertPlantCategory
(
@CategoryName VARCHAR(40) ,
@CategoryDescription VARCHAR(80) 
)
AS
BEGIN
	BEGIN TRY
		BEGIN TRANSACTION

			INSERT INTO tblPlantCategory(CategoryName,CategoryDescription) 
			VALUES(@CategoryName,@CategoryDescription)

		COMMIT
		PRINT 'spInsertPlantCategory Transaction Successful'
	END TRY
	BEGIN CATCH
		ROLLBACK
		PRINT 'spInsertPlantCategory Transaction UNSUCCESSFUL'
	END CATCH
END

GO

CREATE PROCEDURE spInsertPlot
(
@FarmID INT,
@PlantID INT,
@UserOverride VARCHAR(40),
@PerformanceReview VARCHAR(50)
)
AS 
BEGIN
	BEGIN TRY
		BEGIN TRANSACTION

			INSERT INTO tblPlots(FarmID,PlantID,UserOverride,PerformanceReview) 
			VALUES(@FarmID,@PlantID,@UserOverride,@PerformanceReview)

		COMMIT
		PRINT 'spInsertPlot Transaction Successful'
	END TRY
	BEGIN CATCH
		ROLLBACK
		PRINT 'spInsertPlot Transaction UNSUCCESSFUL'
	END CATCH
END

GO

CREATE PROCEDURE spInsertUser
(
@RoleID INT,
@UserName VARCHAR(40),
@UserPassword VARCHAR(50),
@VatIDNumber VARCHAR(10),
@ContactNumber VARCHAR(10),
@Email VARCHAR(40),
@Address VARCHAR(100)
)
AS 
BEGIN
	BEGIN TRY
		BEGIN TRANSACTION

			INSERT INTO tblUser(RoleID,UserName,UserPassword,VatIDNumber,ContactNumber,Email,UserAddress) 
			VALUES(@RoleID,@UserName,@UserPassword,@VatIDNumber,@ContactNumber,@Email,@Address)

		COMMIT
		PRINT 'spInsertUser Transaction Successful'
	END TRY
	BEGIN CATCH
		ROLLBACK
		PRINT 'spInsertUser Transaction UNSUCCESSFUL'
	END CATCH
END

GO

CREATE PROCEDURE spInsertRole
(
@Description VARCHAR(100)
)
AS
BEGIN
	BEGIN TRY
		BEGIN TRANSACTION

			INSERT INTO tblRole(RoleDescription)
			VALUES(@Description)

		COMMIT
		PRINT 'spInsertRole Transaction Successful'
	END TRY
	BEGIN CATCH
		ROLLBACK
		PRINT 'spInsertRole Transaction UNSUCCESSFUL'
	END CATCH
END