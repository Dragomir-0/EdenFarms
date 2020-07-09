USE EdenFarmsDB

GO

CREATE PROCEDURE spDeleteFarm
(
@FarmID INT
)
AS
BEGIN
	BEGIN TRY
		BEGIN TRANSACTION

			DELETE FROM tblPlots
			WHERE FarmID = @FarmID 

			DELETE FROM tblFarm 
			WHERE FarmID=@FarmID

		COMMIT
		PRINT 'spDeleteFarm Transaction Successful'
	END TRY
	BEGIN CATCH
		ROLLBACK
		PRINT 'spDeleteFarm Transaction UNSUCCSESSFUL'
	END CATCH
END

GO

CREATE PROCEDURE spDeletePlantCategory
(
@CategoryID INT 
)
AS
BEGIN
	BEGIN TRY
		BEGIN TRANSACTION

			DELETE FROM tblPlots
			WHERE PlantID = (SELECT PlantID
							FROM tblPlant
							WHERE PlantCategoryID=@CategoryID)

			DELETE FROM tblPlant
			WHERE PlantCategoryID=@CategoryID

			DELETE FROM tblPlantCategory 
			WHERE PlantCategoryID=@CategoryID

		COMMIT
		PRINT 'spDeletePlantCategory Transaction Successful'
	END TRY
	BEGIN CATCH
		ROLLBACK
		PRINT 'spDeletePlantCategory Transaction UNSUCCSESSFUL'
	END CATCH
END

GO

CREATE PROCEDURE spDeletePlot
(
@PlotID INT
)
AS
BEGIN
	BEGIN TRY
		BEGIN TRANSACTION

			DELETE FROM tblPlots 
			WHERE PlotID= @PlotID

		COMMIT
		PRINT 'spDeletePlot Transaction Successful'
	END TRY
	BEGIN CATCH
		ROLLBACK
		PRINT 'spDeletePlot Transaction UNSUCCSESSFUL'
	END CATCH
END

GO

CREATE PROCEDURE spDeletePlant
(
@PlantID INT
)
AS
BEGIN
	BEGIN TRY
		BEGIN TRANSACTION

			DELETE FROM tblPlots
			WHERE PlantID=@PlantID

			DELETE FROM tblPlant 
			WHERE PlantID=@PlantID

		COMMIT
		PRINT 'spDeletePlant Transaction Successful'
	END TRY
	BEGIN CATCH
		ROLLBACK
		PRINT 'spDeletePlant Transaction UNSUCCSESSFUL'
	END CATCH
END 

GO

CREATE PROCEDURE spDeleteUser
(
@UserID INT
)
AS
BEGIN 
	BEGIN TRY
		BEGIN TRANSACTION

			DELETE FROM tblPlots
			WHERE FarmID = (SELECT FarmID
							FROM tblFarm
							WHERE UserID=@UserID)

			DELETE FROM tblFarm
			WHERE UserID=@UserID

			DELETE FROM tblUser 
			WHERE UserID = @UserID

		COMMIT
		PRINT 'spDeleteUser Transaction Successful'
	END TRY
	BEGIN CATCH
		ROLLBACK
		PRINT 'spDeleteUser Transaction UNSUCCSESSFUL'
	END CATCH
END

GO

CREATE PROCEDURE spDeleteRole
(
@RoleID INT
)
AS
BEGIN
	BEGIN TRY
		BEGIN TRANSACTION

			DELETE FROM tblRole
			WHERE RoleID = @RoleID

		COMMIT
		PRINT 'spDeleteRole Transaction Successful'
	END TRY
	BEGIN CATCH
		ROLLBACK
		PRINT 'spDeleteRole Transaction UNSUCCSESSFUL'
	END CATCH
END