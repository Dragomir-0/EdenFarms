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
	BEGIN TRY
		BEGIN TRANSACTION

			UPDATE tblFarm 
			SET 
			UserID = @UserID,
			FarmName = @FarmName,
			FarmLocation = @FarmLocation,
			LocationAlias = @LocationAlias
			WHERE FarmID = @FarmID

		COMMIT
		PRINT 'spUpdateFarm Transaction Successful'
	END TRY
	BEGIN CATCH
		ROLLBACK
		PRINT 'spUpdateFarm Transaction UNSUCCESSFUL'
	END CATCH
END

GO

CREATE PROCEDURE spUpdateFarmUserID
(
@FarmID INT,
@UserID INT
)
AS
BEGIN
	BEGIN TRY
		BEGIN TRANSACTION

			UPDATE tblFarm 
			SET 
			UserID = @UserID
			WHERE FarmID = @FarmID

		COMMIT
		PRINT 'spUpdateFarmUserID Transaction Successful'
	END TRY
	BEGIN CATCH
		ROLLBACK
		PRINT 'spUpdateFarmUserID Transaction UNSUCCESSFUL'
	END CATCH
END

GO

CREATE PROCEDURE spUpdateFarmName
(
@FarmID INT,
@FarmName VARCHAR(40)
)
AS
BEGIN
	BEGIN TRY
		BEGIN TRANSACTION

			UPDATE tblFarm 
			SET 
			FarmName = @FarmName
			WHERE FarmID = @FarmID

		COMMIT
		PRINT 'spUpdateFarmName Transaction Successful'
	END TRY
	BEGIN CATCH
		ROLLBACK
		PRINT 'spUpdateFarmName Transaction UNSUCCESSFUL'
	END CATCH
END

GO

CREATE PROCEDURE spUpdateFarmLocation
(
@FarmID INT,
@FarmLocation VARCHAR(100)
)
AS
BEGIN
	BEGIN TRY
		BEGIN TRANSACTION

			UPDATE tblFarm 
			SET 
			FarmLocation = @FarmLocation
			WHERE FarmID = @FarmID

		COMMIT
		PRINT 'spUpdateFarmLocation Transaction Successful'
	END TRY
	BEGIN CATCH
		ROLLBACK
		PRINT 'spUpdateFarmLocation Transaction UNSUCCESSFUL'
	END CATCH
END

GO

CREATE PROCEDURE spUpdateFarmLocationAlias
(
@FarmID INT,
@LocationAlias VARCHAR(40)
)
AS
BEGIN
	BEGIN TRY
		BEGIN TRANSACTION

			UPDATE tblFarm 
			SET 
			LocationAlias = @LocationAlias
			WHERE FarmID = @FarmID

		COMMIT
		PRINT 'spUpdateFarmLocationAlias Transaction Successful'
	END TRY
	BEGIN CATCH
		ROLLBACK
		PRINT 'spUpdateFarmLocationAlias Transaction UNSUCCESSFUL'
	END CATCH
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
	BEGIN TRY
		BEGIN TRANSACTION

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

		COMMIT
		PRINT 'spUpdatePlant Transaction Successful'
	END TRY
	BEGIN CATCH
		ROLLBACK
		PRINT 'spUpdatePlant Transaction UNSUCCESSFUL'
	END CATCH
END

GO

CREATE PROCEDURE spUpdatePlantCategoryID
(
@PlantID INT,
@PlantCategoryID INT
)
AS
BEGIN
	BEGIN TRY
		BEGIN TRANSACTION

			UPDATE tblPlant 
			SET
			PlantCategoryID = @PlantCategoryID
			WHERE PlantID = @PlantID 

		COMMIT
		PRINT 'spUpdatePlantCategoryID Transaction Successful'
	END TRY
	BEGIN CATCH
		ROLLBACK
		PRINT 'spUpdatePlantCategoryID Transaction UNSUCCESSFUL'
	END CATCH
END

GO

CREATE PROCEDURE spUpdatePlantName
(
@PlantID INT,
@PlantName VARCHAR(40)
)
AS
BEGIN
	BEGIN TRY
		BEGIN TRANSACTION

			UPDATE tblPlant 
			SET
			PlantName=@PlantName
			WHERE PlantID = @PlantID 

		COMMIT
		PRINT 'spUpdatePlantName Transaction Successful'
	END TRY
	BEGIN CATCH
		ROLLBACK
		PRINT 'spUpdatePlantName Transaction UNSUCCESSFUL'
	END CATCH
END

GO

CREATE PROCEDURE spUpdatePlantOptimalAmbientTemp
(
@PlantID INT,
@OptimalAmbientTemp DECIMAL
)
AS
BEGIN
	BEGIN TRY
		BEGIN TRANSACTION

			UPDATE tblPlant 
			SET
			OptimalAmbientTemp=@OptimalAmbientTemp
			WHERE PlantID = @PlantID 

		COMMIT
		PRINT 'spUpdatePlantOptimalAmbientTemp Transaction Successful'
	END TRY
	BEGIN CATCH
		ROLLBACK
		PRINT 'spUpdatePlantOptimalAmbientTemp Transaction UNSUCCESSFUL'
	END CATCH
END

GO

CREATE PROCEDURE spUpdatePlantOptimalAmbientHumidity
(
@PlantID INT,
@OptimalAmbientHumidity DECIMAL
)
AS
BEGIN
	BEGIN TRY
		BEGIN TRANSACTION

			UPDATE tblPlant 
			SET
			OptimalAmbientHumidity=@OptimalAmbientHumidity
			WHERE PlantID = @PlantID 

		COMMIT
		PRINT 'spUpdatePlantOptimalAmbientHumidity Transaction Successful'
	END TRY
	BEGIN CATCH
		ROLLBACK
		PRINT 'spUpdatePlantOptimalAmbientHumidity Transaction UNSUCCESSFUL'
	END CATCH
END

GO

CREATE PROCEDURE spUpdatePlantOptimalAmbientLight
(
@PlantID INT,
@OptimalAmbientLight VARCHAR(7)
)
AS
BEGIN
	BEGIN TRY
		BEGIN TRANSACTION

			UPDATE tblPlant 
			SET
			OptimalAmbientLight=@OptimalAmbientLight
			WHERE PlantID = @PlantID 

		COMMIT
		PRINT 'spUpdatePlantOptimalAmbientLight Transaction Successful'
	END TRY
	BEGIN CATCH
		ROLLBACK
		PRINT 'spUpdatePlantOptimalAmbientLight Transaction UNSUCCESSFUL'
	END CATCH
END

GO

CREATE PROCEDURE spUpdatePlantOptimalInternalTemp
(
@PlantID INT,
@OptimalInternalTemp DECIMAL
)
AS
BEGIN
	BEGIN TRY
		BEGIN TRANSACTION

			UPDATE tblPlant 
			SET
			OptimalInternalTemp = @OptimalInternalTemp
			WHERE PlantID = @PlantID 

		COMMIT
		PRINT 'spUpdatePlantOptimalInternalTemp Transaction Successful'
	END TRY
	BEGIN CATCH
		ROLLBACK
		PRINT 'spUpdatePlantOptimalInternalTemp Transaction UNSUCCESSFUL'
	END CATCH
END

GO

CREATE PROCEDURE spUpdatePlantOptimalInternalHumidity
(
@PlantID INT,
@OptimalInternalHumidity DECIMAL
)
AS
BEGIN
	BEGIN TRY
		BEGIN TRANSACTION

			UPDATE tblPlant 
			SET
			OptimalInternalHumidity = @OptimalInternalHumidity
			WHERE PlantID = @PlantID 

		COMMIT
		PRINT 'spUpdatePlantOptimalInternalHumidity Transaction Successful'
	END TRY
	BEGIN CATCH
		ROLLBACK
		PRINT 'spUpdatePlantOptimalInternalHumidity Transaction UNSUCCESSFUL'
	END CATCH
END

GO

CREATE PROCEDURE spUpdatePlantOptimalInternalLight
(
@PlantID INT,
@OptimalInternalLight VARCHAR(7)
)
AS
BEGIN
	BEGIN TRY
		BEGIN TRANSACTION

			UPDATE tblPlant 
			SET
			OptimalInternalLight = @OptimalInternalLight
			WHERE PlantID = @PlantID 

		COMMIT
		PRINT 'spUpdatePlantOptimalInternalLight Transaction Successful'
	END TRY
	BEGIN CATCH
		ROLLBACK
		PRINT 'spUpdatePlantOptimalInternalLight Transaction UNSUCCESSFUL'
	END CATCH
END

GO

CREATE PROCEDURE spUpdatePlantOptimalInternalOxygen
(
@PlantID INT,
@OptimalInternalOxygen DECIMAL
)
AS
BEGIN
	BEGIN TRY
		BEGIN TRANSACTION

			UPDATE tblPlant 
			SET
			OptimalInternalOxygen=@OptimalInternalOxygen
			WHERE PlantID = @PlantID 

		COMMIT
		PRINT 'spUpdatePlantOptimalInternalOxygen Transaction Successful'
	END TRY
	BEGIN CATCH
		ROLLBACK
		PRINT 'spUpdatePlantOptimalInternalOxygen Transaction UNSUCCESSFUL'
	END CATCH
END

GO

CREATE PROCEDURE spUpdatePlantOptimalNitrogen
(
@PlantID INT,
@OptimalNitrogen DECIMAL
)
AS
BEGIN
	BEGIN TRY
		BEGIN TRANSACTION

			UPDATE tblPlant 
			SET
			OptimalNitrogen=@OptimalNitrogen
			WHERE PlantID = @PlantID 

		COMMIT
		PRINT 'spUpdatePlantOptimalNitrogen Transaction Successful'
	END TRY
	BEGIN CATCH
		ROLLBACK
		PRINT 'spUpdatePlantOptimalNitrogen Transaction UNSUCCESSFUL'
	END CATCH
END

GO

CREATE PROCEDURE spUpdatePlantOptimalPhosphorus
(
@PlantID INT,
@OptimalPhosphorus DECIMAL
)
AS
BEGIN
	BEGIN TRY
		BEGIN TRANSACTION

			UPDATE tblPlant 
			SET
			OptimalPhosphorus=@OptimalPhosphorus
			WHERE PlantID = @PlantID 

		COMMIT
		PRINT 'spUpdatePlantOptimalPhosphorus Transaction Successful'
	END TRY
	BEGIN CATCH
		ROLLBACK
		PRINT 'spUpdatePlantOptimalPhosphorus Transaction UNSUCCESSFUL'
	END CATCH
END

GO

CREATE PROCEDURE spUpdatePlantOptimalPotassium
(
@PlantID INT,
@OptimalPotassium DECIMAL
)
AS
BEGIN
	BEGIN TRY
		BEGIN TRANSACTION

			UPDATE tblPlant 
			SET
			OptimalPotassium=@OptimalPotassium
			WHERE PlantID = @PlantID 

		COMMIT
		PRINT 'spUpdatePlantOptimalPotassium Transaction Successful'
	END TRY
	BEGIN CATCH
		ROLLBACK
		PRINT 'spUpdatePlantOptimalPotassium Transaction UNSUCCESSFUL'
	END CATCH
END

GO

CREATE PROCEDURE UpdatePlantCategory
(
@PlantCategoryID INT,
@CategoryName VARCHAR(40) ,
@CategoryDescription VARCHAR(80)
)
AS
BEGIN
	BEGIN TRY
		BEGIN TRANSACTION

			UPDATE tblPlantCategory 
			SET
			CategoryName = @CategoryName,
			CategoryDescription=@CategoryDescription
			WHERE PlantCategoryID = @PlantCategoryID

		COMMIT
		PRINT 'UpdatePlantCategory Transaction Successful'
	END TRY
	BEGIN CATCH
		ROLLBACK
		PRINT 'UpdatePlantCategory Transaction UNSUCCESSFUL'
	END CATCH
END

GO

CREATE PROCEDURE UpdatePlantCategoryName
(
@PlantCategoryID INT,
@CategoryName VARCHAR(40)
)
AS
BEGIN
	BEGIN TRY
		BEGIN TRANSACTION

			UPDATE tblPlantCategory 
			SET
			CategoryName = @CategoryName
			WHERE PlantCategoryID = @PlantCategoryID

		COMMIT
		PRINT 'UpdatePlantCategoryName Transaction Successful'
	END TRY
	BEGIN CATCH
		ROLLBACK
		PRINT 'UpdatePlantCategoryName Transaction UNSUCCESSFUL'
	END CATCH
END

GO

CREATE PROCEDURE UpdatePlantCategoryDescription
(
@PlantCategoryID INT,
@CategoryDescription VARCHAR(80)
)
AS
BEGIN
	BEGIN TRY
		BEGIN TRANSACTION

			UPDATE tblPlantCategory 
			SET
			CategoryDescription=@CategoryDescription
			WHERE PlantCategoryID = @PlantCategoryID

		COMMIT
		PRINT 'UpdatePlantCategoryDescription Transaction Successful'
	END TRY
	BEGIN CATCH
		ROLLBACK
		PRINT 'UpdatePlantCategoryDescription Transaction UNSUCCESSFUL'
	END CATCH
END

GO

CREATE PROCEDURE spUpdatePlot
(
@PlotID INT ,
@FarmID INT ,
@PlantID INT ,
@UserOverride VARCHAR(40),
@PerformanceReview VARCHAR(50)
)
AS
BEGIN
	BEGIN TRY
		BEGIN TRANSACTION

			UPDATE tblPlots 
			SET
			FarmID = @FarmID,
			PlantID = @PlantID,
			UserOverride=@UserOverride,
			PerformanceReview=@PerformanceReview
			WHERE PlotID = @PlotID

		COMMIT
		PRINT 'spUpdatePlot Transaction Successful'
	END TRY
	BEGIN CATCH
		ROLLBACK
		PRINT 'spUpdatePlot Transaction UNSUCCESSFUL'
	END CATCH
END

GO

CREATE PROCEDURE spUpdatePlotFarmID
(
@PlotID INT ,
@FarmID INT
)
AS
BEGIN
	BEGIN TRY
		BEGIN TRANSACTION

			UPDATE tblPlots 
			SET
			FarmID = @FarmID
			WHERE PlotID = @PlotID

		COMMIT
		PRINT 'spUpdatePlotFarmID Transaction Successful'
	END TRY
	BEGIN CATCH
		ROLLBACK
		PRINT 'spUpdatePlotFarmID Transaction UNSUCCESSFUL'
	END CATCH
END

GO

CREATE PROCEDURE spUpdatePlotPlantID
(
@PlotID INT ,
@PlantID INT
)
AS
BEGIN
	BEGIN TRY
		BEGIN TRANSACTION

			UPDATE tblPlots 
			SET
			PlantID = @PlantID
			WHERE PlotID = @PlotID

		COMMIT
		PRINT 'spUpdatePlotPlantID Transaction Successful'
	END TRY
	BEGIN CATCH
		ROLLBACK
		PRINT 'spUpdatePlotPlantID Transaction UNSUCCESSFUL'
	END CATCH
END

GO

CREATE PROCEDURE spUpdatePlotUserOverride
(
@PlotID INT ,
@UserOverride VARCHAR(40)
)
AS
BEGIN
	BEGIN TRY
		BEGIN TRANSACTION

			UPDATE tblPlots 
			SET
			UserOverride=@UserOverride
			WHERE PlotID = @PlotID

		COMMIT
		PRINT 'spUpdatePlotUserOverride Transaction Successful'
	END TRY
	BEGIN CATCH
		ROLLBACK
		PRINT 'spUpdatePlotUserOverride Transaction UNSUCCESSFUL'
	END CATCH
END

GO

CREATE PROCEDURE spUpdatePlotPerformanceReview
(
@PlotID INT ,
@PerformanceReview VARCHAR(50)
)
AS
BEGIN
	BEGIN TRY
		BEGIN TRANSACTION

			UPDATE tblPlots 
			SET
			PerformanceReview=@PerformanceReview
			WHERE PlotID = @PlotID

		COMMIT
		PRINT 'spUpdatePlotPerformanceReview Transaction Successful'
	END TRY
	BEGIN CATCH
		ROLLBACK
		PRINT 'spUpdatePlotPerformanceReview Transaction UNSUCCESSFUL'
	END CATCH
END

GO

CREATE PROCEDURE spUpdateUser
(
@UserID INT,
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

			UPDATE tblUser 
			SET 
			RoleID = @RoleID,
			UserName = @UserName,
			UserPassword = @UserPassword,
			VatIDNumber = @VatIDNumber,
			ContactNumber = @ContactNumber,
			Email = @Email,
			UserAddress = @Address 
			WHERE UserID = @UserID

		COMMIT
		PRINT 'spUpdateUser Transaction Successful'
	END TRY
	BEGIN CATCH
		ROLLBACK
		PRINT 'spUpdateUser Transaction UNSUCCESSFUL'
	END CATCH
END

GO

CREATE PROCEDURE spUpdateUserRoleID
(
@UserID INT,
@RoleID INT
)
AS
BEGIN
	BEGIN TRY
		BEGIN TRANSACTION

			UPDATE tblUser 
			SET 
			RoleID = @RoleID
			WHERE UserID = @UserID

		COMMIT
		PRINT 'spUpdateUserRoleID Transaction Successful'
	END TRY
	BEGIN CATCH
		ROLLBACK
		PRINT 'spUpdateUserRoleID Transaction UNSUCCESSFUL'
	END CATCH
END

GO

CREATE PROCEDURE spUpdateUserName
(
@UserID INT,
@UserName VARCHAR(40)
)
AS
BEGIN
	BEGIN TRY
		BEGIN TRANSACTION

			UPDATE tblUser 
			SET 
			UserName = @UserName
			WHERE UserID = @UserID

		COMMIT
		PRINT 'spUpdateUserName Transaction Successful'
	END TRY
	BEGIN CATCH
		ROLLBACK
		PRINT 'spUpdateUserName Transaction UNSUCCESSFUL'
	END CATCH
END

GO

CREATE PROCEDURE spUpdateUserPassword
(
@UserID INT,
@UserPassword VARCHAR(50)
)
AS
BEGIN
	BEGIN TRY
		BEGIN TRANSACTION

			UPDATE tblUser 
			SET 
			UserPassword = @UserPassword
			WHERE UserID = @UserID

		COMMIT
		PRINT 'spUpdateUserPassword Transaction Successful'
	END TRY
	BEGIN CATCH
		ROLLBACK
		PRINT 'spUpdateUserPassword Transaction UNSUCCESSFUL'
	END CATCH
END

GO

CREATE PROCEDURE spUpdateUserVatIDNumber
(
@UserID INT,
@VatIDNumber VARCHAR(10)
)
AS
BEGIN
	BEGIN TRY
		BEGIN TRANSACTION

			UPDATE tblUser 
			SET 
			VatIDNumber = @VatIDNumber
			WHERE UserID = @UserID

		COMMIT
		PRINT 'spUpdateUserVatIDNumber Transaction Successful'
	END TRY
	BEGIN CATCH
		ROLLBACK
		PRINT 'spUpdateUserVatIDNumber Transaction UNSUCCESSFUL'
	END CATCH
END

GO

CREATE PROCEDURE spUpdateUserContactNumber
(
@UserID INT,
@ContactNumber VARCHAR(10)
)
AS
BEGIN
	BEGIN TRY
		BEGIN TRANSACTION

			UPDATE tblUser 
			SET 
			ContactNumber = @ContactNumber
			WHERE UserID = @UserID

		COMMIT
		PRINT 'spUpdateUserContactNumber Transaction Successful'
	END TRY
	BEGIN CATCH
		ROLLBACK
		PRINT 'spUpdateUserContactNumber Transaction UNSUCCESSFUL'
	END CATCH
END

GO

CREATE PROCEDURE spUpdateUserEmail
(
@UserID INT,
@Email VARCHAR(40)
)
AS
BEGIN
	BEGIN TRY
		BEGIN TRANSACTION

			UPDATE tblUser 
			SET 
			Email = @Email
			WHERE UserID = @UserID

		COMMIT
		PRINT 'spUpdateUserEmail Transaction Successful'
	END TRY
	BEGIN CATCH
		ROLLBACK
		PRINT 'spUpdateUserEmail Transaction UNSUCCESSFUL'
	END CATCH
END

GO

CREATE PROCEDURE spUpdateUserAddress
(
@UserID INT,
@Address VARCHAR(100)
)
AS
BEGIN
	BEGIN TRY
		BEGIN TRANSACTION

			UPDATE tblUser 
			SET 
			UserAddress = @Address 
			WHERE UserID = @UserID

		COMMIT
		PRINT 'spUpdateUserAddress Transaction Successful'
	END TRY
	BEGIN CATCH
		ROLLBACK
		PRINT 'spUpdateUserAddress Transaction UNSUCCESSFUL'
	END CATCH
END

GO

CREATE PROCEDURE spUpdateRole
(
@RoleID INT,
@Description VARCHAR(100)
)
AS
BEGIN
	BEGIN TRY
		BEGIN TRANSACTION

			UPDATE tblRole
			SET
			RoleDescription = @Description
			WHERE RoleID = @RoleID

		COMMIT
		PRINT 'spUpdateRole Transaction Successful'
	END TRY
	BEGIN CATCH
		ROLLBACK
		PRINT 'spUpdateRole Transaction UNSUCCESSFUL'
	END CATCH
END