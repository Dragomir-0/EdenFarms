USE [master]
GO
/****** Object:  Database [EdenFarmsDB]    Script Date: 26-Oct-20 7:42:10 PM ******/
CREATE DATABASE [EdenFarmsDB]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'EdenFarmsDBData', FILENAME = N'D:\Documents\EdenFarmsDB\EdenFarmsDBData.mdf' , SIZE = 20480KB , MAXSIZE = 10485760KB , FILEGROWTH = 10%)
 LOG ON 
( NAME = N'EdenFarmsDBLogs', FILENAME = N'D:\Documents\EdenFarmsDB\EdenFarmsDBLogs.ldf' , SIZE = 20480KB , MAXSIZE = 10485760KB , FILEGROWTH = 10%)
GO
ALTER DATABASE [EdenFarmsDB] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [EdenFarmsDB].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [EdenFarmsDB] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [EdenFarmsDB] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [EdenFarmsDB] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [EdenFarmsDB] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [EdenFarmsDB] SET ARITHABORT OFF 
GO
ALTER DATABASE [EdenFarmsDB] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [EdenFarmsDB] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [EdenFarmsDB] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [EdenFarmsDB] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [EdenFarmsDB] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [EdenFarmsDB] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [EdenFarmsDB] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [EdenFarmsDB] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [EdenFarmsDB] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [EdenFarmsDB] SET  ENABLE_BROKER 
GO
ALTER DATABASE [EdenFarmsDB] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [EdenFarmsDB] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [EdenFarmsDB] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [EdenFarmsDB] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [EdenFarmsDB] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [EdenFarmsDB] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [EdenFarmsDB] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [EdenFarmsDB] SET RECOVERY FULL 
GO
ALTER DATABASE [EdenFarmsDB] SET  MULTI_USER 
GO
ALTER DATABASE [EdenFarmsDB] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [EdenFarmsDB] SET DB_CHAINING OFF 
GO
ALTER DATABASE [EdenFarmsDB] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [EdenFarmsDB] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [EdenFarmsDB] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'EdenFarmsDB', N'ON'
GO
ALTER DATABASE [EdenFarmsDB] SET QUERY_STORE = OFF
GO
USE [EdenFarmsDB]
GO
/****** Object:  User [EdenFarmsDB_User]    Script Date: 26-Oct-20 7:42:11 PM ******/
CREATE USER [EdenFarmsDB_User] FOR LOGIN [USER] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  Table [dbo].[tblFarm]    Script Date: 26-Oct-20 7:42:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblFarm](
	[FarmID] [int] IDENTITY(1,1) NOT NULL,
	[UserID] [int] NULL,
	[FarmName] [varchar](40) NOT NULL,
	[FarmLocation] [varchar](100) NOT NULL,
	[LocationAlias] [varchar](40) NULL,
PRIMARY KEY CLUSTERED 
(
	[FarmID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblPlant]    Script Date: 26-Oct-20 7:42:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblPlant](
	[PlantID] [int] IDENTITY(1,1) NOT NULL,
	[PlantCategoryID] [int] NULL,
	[PlantName] [varchar](40) NULL,
	[OptimalAmbientTemp] [decimal](18, 0) NULL,
	[OptimalAmbientHumidity] [decimal](18, 0) NULL,
	[OptimalAmbientLight] [varchar](7) NULL,
	[OptimalInternalTemp] [decimal](18, 0) NULL,
	[OptimalInternalHumidity] [decimal](18, 0) NULL,
	[OptimalInternalLight] [varchar](7) NULL,
	[OptimalInternalOxygen] [decimal](18, 0) NULL,
	[OptimalNitrogen] [decimal](18, 0) NULL,
	[OptimalPhosphorus] [decimal](18, 0) NULL,
	[OptimalPotassium] [decimal](18, 0) NULL,
PRIMARY KEY CLUSTERED 
(
	[PlantID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblPlantCategory]    Script Date: 26-Oct-20 7:42:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblPlantCategory](
	[PlantCategoryID] [int] IDENTITY(1,1) NOT NULL,
	[CategoryName] [varchar](40) NOT NULL,
	[CategoryDescription] [varchar](80) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[PlantCategoryID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblPlots]    Script Date: 26-Oct-20 7:42:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblPlots](
	[PlotID] [int] IDENTITY(1,1) NOT NULL,
	[FarmID] [int] NULL,
	[PlantID] [int] NULL,
	[UserOverride] [varchar](40) NULL,
	[PerformanceReview] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[PlotID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblRole]    Script Date: 26-Oct-20 7:42:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblRole](
	[RoleID] [int] IDENTITY(1,1) NOT NULL,
	[RoleDescription] [varchar](100) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[RoleID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblUser]    Script Date: 26-Oct-20 7:42:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblUser](
	[UserID] [int] IDENTITY(1,1) NOT NULL,
	[RoleID] [int] NULL,
	[UserName] [varchar](40) NOT NULL,
	[UserPassword] [varchar](50) NOT NULL,
	[VatIDNumber] [varchar](10) NOT NULL,
	[ContactNumber] [varchar](10) NOT NULL,
	[Email] [varchar](40) NOT NULL,
	[UserAddress] [varchar](100) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[UserID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[tblPlant] ADD  DEFAULT ((0)) FOR [PlantName]
GO
ALTER TABLE [dbo].[tblPlant] ADD  DEFAULT ((0)) FOR [OptimalAmbientTemp]
GO
ALTER TABLE [dbo].[tblPlant] ADD  DEFAULT ((0)) FOR [OptimalAmbientHumidity]
GO
ALTER TABLE [dbo].[tblPlant] ADD  DEFAULT ((0)) FOR [OptimalAmbientLight]
GO
ALTER TABLE [dbo].[tblPlant] ADD  DEFAULT ((0)) FOR [OptimalInternalTemp]
GO
ALTER TABLE [dbo].[tblPlant] ADD  DEFAULT ((0)) FOR [OptimalInternalHumidity]
GO
ALTER TABLE [dbo].[tblPlant] ADD  DEFAULT ((0)) FOR [OptimalInternalLight]
GO
ALTER TABLE [dbo].[tblPlant] ADD  DEFAULT ((0)) FOR [OptimalInternalOxygen]
GO
ALTER TABLE [dbo].[tblPlant] ADD  DEFAULT ((0)) FOR [OptimalNitrogen]
GO
ALTER TABLE [dbo].[tblPlant] ADD  DEFAULT ((0)) FOR [OptimalPhosphorus]
GO
ALTER TABLE [dbo].[tblPlant] ADD  DEFAULT ((0)) FOR [OptimalPotassium]
GO
ALTER TABLE [dbo].[tblFarm]  WITH CHECK ADD FOREIGN KEY([UserID])
REFERENCES [dbo].[tblUser] ([UserID])
GO
ALTER TABLE [dbo].[tblPlant]  WITH CHECK ADD FOREIGN KEY([PlantCategoryID])
REFERENCES [dbo].[tblPlantCategory] ([PlantCategoryID])
GO
ALTER TABLE [dbo].[tblPlots]  WITH CHECK ADD FOREIGN KEY([FarmID])
REFERENCES [dbo].[tblFarm] ([FarmID])
GO
ALTER TABLE [dbo].[tblPlots]  WITH CHECK ADD FOREIGN KEY([PlantID])
REFERENCES [dbo].[tblPlant] ([PlantID])
GO
ALTER TABLE [dbo].[tblUser]  WITH CHECK ADD FOREIGN KEY([RoleID])
REFERENCES [dbo].[tblRole] ([RoleID])
GO
/****** Object:  StoredProcedure [dbo].[spDeleteFarm]    Script Date: 26-Oct-20 7:42:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[spDeleteFarm]
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
/****** Object:  StoredProcedure [dbo].[spDeletePlant]    Script Date: 26-Oct-20 7:42:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[spDeletePlant]
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
/****** Object:  StoredProcedure [dbo].[spDeletePlantCategory]    Script Date: 26-Oct-20 7:42:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[spDeletePlantCategory]
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
/****** Object:  StoredProcedure [dbo].[spDeletePlot]    Script Date: 26-Oct-20 7:42:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[spDeletePlot]
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
/****** Object:  StoredProcedure [dbo].[spDeleteRole]    Script Date: 26-Oct-20 7:42:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[spDeleteRole]
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
GO
/****** Object:  StoredProcedure [dbo].[spDeleteUser]    Script Date: 26-Oct-20 7:42:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[spDeleteUser]
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
/****** Object:  StoredProcedure [dbo].[spInsertFarm]    Script Date: 26-Oct-20 7:42:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[spInsertFarm]
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
/****** Object:  StoredProcedure [dbo].[spInsertPlant]    Script Date: 26-Oct-20 7:42:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[spInsertPlant]
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
/****** Object:  StoredProcedure [dbo].[spInsertPlantCategory]    Script Date: 26-Oct-20 7:42:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[spInsertPlantCategory]
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
/****** Object:  StoredProcedure [dbo].[spInsertPlot]    Script Date: 26-Oct-20 7:42:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[spInsertPlot]
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
/****** Object:  StoredProcedure [dbo].[spInsertRole]    Script Date: 26-Oct-20 7:42:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[spInsertRole]
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
GO
/****** Object:  StoredProcedure [dbo].[spInsertUser]    Script Date: 26-Oct-20 7:42:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[spInsertUser]
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
/****** Object:  StoredProcedure [dbo].[spListAllPlantDetails]    Script Date: 26-Oct-20 7:42:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

/* GET SPECIFIC PLANT DETAILS WITH ID */

CREATE PROCEDURE [dbo].[spListAllPlantDetails]
@id INT
AS
BEGIN
SELECT *
FROM tblPlant
WHERE PlantID = @id
END

GO
/****** Object:  StoredProcedure [dbo].[spListFarmAlias]    Script Date: 26-Oct-20 7:42:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[spListFarmAlias]
@id INT
AS
BEGIN
SELECT LocationAlias
FROM tblFarm
WHERE FarmID = @id
END

GO
/****** Object:  StoredProcedure [dbo].[spListFarmByLocation]    Script Date: 26-Oct-20 7:42:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[spListFarmByLocation]
@location VARCHAR(100)
AS
BEGIN
SELECT FarmID
FROM tblFarm
WHERE FarmLocation = @location
END

GO
/****** Object:  StoredProcedure [dbo].[spListFarmByLocationAlias]    Script Date: 26-Oct-20 7:42:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[spListFarmByLocationAlias]
@alias VARCHAR(40)
AS
BEGIN
SELECT FarmID
FROM tblFarm
WHERE LocationAlias = @alias
END

GO
/****** Object:  StoredProcedure [dbo].[spListFarmByName]    Script Date: 26-Oct-20 7:42:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[spListFarmByName]
@name VARCHAR(40)
AS
BEGIN
SELECT FarmID
FROM tblFarm
WHERE FarmName = @name
END

GO
/****** Object:  StoredProcedure [dbo].[spListFarmByUserID]    Script Date: 26-Oct-20 7:42:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

/* GROUP FARMS BY PROCEDURES */

CREATE PROCEDURE [dbo].[spListFarmByUserID]
@id INT
AS
BEGIN
SELECT FarmID
FROM tblFarm
WHERE UserID = @id
END

GO
/****** Object:  StoredProcedure [dbo].[spListFarmDetails]    Script Date: 26-Oct-20 7:42:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

/* LIST Farm DETAILS WITH ID */

CREATE PROCEDURE [dbo].[spListFarmDetails]
@id INT
AS
BEGIN
SELECT *
FROM tblFarm
WHERE FarmID = @id
END

GO
/****** Object:  StoredProcedure [dbo].[spListFarmLocation]    Script Date: 26-Oct-20 7:42:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[spListFarmLocation]
@id INT
AS
BEGIN
SELECT FarmLocation
FROM tblFarm
WHERE FarmID = @id
END

GO
/****** Object:  StoredProcedure [dbo].[spListFarmName]    Script Date: 26-Oct-20 7:42:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[spListFarmName]
@id INT
AS
BEGIN
SELECT FarmName
FROM tblFarm
WHERE FarmID = @id
END

GO
/****** Object:  StoredProcedure [dbo].[spListFarmUser]    Script Date: 26-Oct-20 7:42:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[spListFarmUser]
@id INT
AS
BEGIN
SELECT UserID
FROM tblFarm
WHERE FarmID = @id
END

GO
/****** Object:  StoredProcedure [dbo].[spListPlantAmbientVariables]    Script Date: 26-Oct-20 7:42:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[spListPlantAmbientVariables]
@id INT
AS
BEGIN
SELECT OptimalAmbientHumidity, OptimalAmbientLight, OptimalAmbientTemp
FROM tblPlant
WHERE PlantID = @id
END

GO
/****** Object:  StoredProcedure [dbo].[spListPlantByAmbientHumidity]    Script Date: 26-Oct-20 7:42:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[spListPlantByAmbientHumidity]
@humid DECIMAL
AS
BEGIN
SELECT PlantID
FROM tblPlant
WHERE OptimalAmbientHumidity = @humid
END

GO
/****** Object:  StoredProcedure [dbo].[spListPlantByAmbientLight]    Script Date: 26-Oct-20 7:42:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[spListPlantByAmbientLight]
@light VARCHAR(7)
AS
BEGIN
SELECT PlantID
FROM tblPlant
WHERE OptimalAmbientLight = @light
END

GO
/****** Object:  StoredProcedure [dbo].[spListPlantByAmbientTemp]    Script Date: 26-Oct-20 7:42:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[spListPlantByAmbientTemp]
@temp DECIMAL
AS
BEGIN
SELECT PlantID
FROM tblPlant
WHERE OptimalAmbientTemp = @temp
END

GO
/****** Object:  StoredProcedure [dbo].[spListPlantByAmbientVariables]    Script Date: 26-Oct-20 7:42:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[spListPlantByAmbientVariables]
@temp DECIMAL, @humid DECIMAL, @light varchar(7)
AS
BEGIN
SELECT PlantID
FROM tblPlant
WHERE OptimalAmbientTemp = @temp AND OptimalAmbientHumidity = @humid AND OptimalAmbientLight = @light
END

GO
/****** Object:  StoredProcedure [dbo].[spListPlantByInternalHumidity]    Script Date: 26-Oct-20 7:42:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[spListPlantByInternalHumidity]
@humid DECIMAL
AS
BEGIN
SELECT PlantID
FROM tblPlant
WHERE OptimalInternalHumidity = @humid
END

GO
/****** Object:  StoredProcedure [dbo].[spListPlantByInternalLight]    Script Date: 26-Oct-20 7:42:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[spListPlantByInternalLight]
@light varchar(7)
AS
BEGIN
SELECT PlantID
FROM tblPlant
WHERE OptimalInternalLight = @light
END

GO
/****** Object:  StoredProcedure [dbo].[spListPlantByInternalOxygen]    Script Date: 26-Oct-20 7:42:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[spListPlantByInternalOxygen]
@oxy DECIMAL
AS
BEGIN
SELECT PlantID
FROM tblPlant
WHERE OptimalInternalOxygen = @oxy
END

GO
/****** Object:  StoredProcedure [dbo].[spListPlantByInternalTemp]    Script Date: 26-Oct-20 7:42:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[spListPlantByInternalTemp]
@temp DECIMAL
AS
BEGIN
SELECT PlantID
FROM tblPlant
WHERE OptimalInternalTemp = @temp
END

GO
/****** Object:  StoredProcedure [dbo].[spListPlantByInternalVariables]    Script Date: 26-Oct-20 7:42:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[spListPlantByInternalVariables]
@temp DECIMAL, @humid DECIMAL, @light varchar(7), @oxy DECIMAL
AS
BEGIN
SELECT PlantID
FROM tblPlant
WHERE OptimalInternalTemp = @temp AND OptimalInternalHumidity = @humid AND OptimalInternalLight = @light AND OptimalInternalOxygen = @oxy
END

GO
/****** Object:  StoredProcedure [dbo].[spListPlantByNitrogen]    Script Date: 26-Oct-20 7:42:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[spListPlantByNitrogen]
@nitro DECIMAL
AS
BEGIN
SELECT PlantID
FROM tblPlant
WHERE OptimalNitrogen = @nitro
END

GO
/****** Object:  StoredProcedure [dbo].[spListPlantByPhosphorus]    Script Date: 26-Oct-20 7:42:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[spListPlantByPhosphorus]
@phos DECIMAL
AS
BEGIN
SELECT PlantID
FROM tblPlant
WHERE OptimalPhosphorus = @phos
END

GO
/****** Object:  StoredProcedure [dbo].[spListPlantByPotassium]    Script Date: 26-Oct-20 7:42:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[spListPlantByPotassium]
@pot DECIMAL
AS
BEGIN
SELECT PlantID
FROM tblPlant
WHERE OptimalPotassium = @pot
END

GO
/****** Object:  StoredProcedure [dbo].[spListPlantByVariables]    Script Date: 26-Oct-20 7:42:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[spListPlantByVariables]
@nitro DECIMAL, @phos DECIMAL, @pot DECIMAL
AS
BEGIN
SELECT PlantID
FROM tblPlant
WHERE OptimalNitrogen = @nitro AND OptimalPhosphorus = @phos AND OptimalPotassium = @pot
END

GO
/****** Object:  StoredProcedure [dbo].[spListPlantCategoryIDDetails]    Script Date: 26-Oct-20 7:42:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

/* LIST PLANT CATEGORY DETAILS PROCEDURES */

CREATE PROCEDURE [dbo].[spListPlantCategoryIDDetails]
@id INT
AS
BEGIN
SELECT *
FROM tblPlantCategory
WHERE PlantCategoryID = @id
END

GO
/****** Object:  StoredProcedure [dbo].[spListPlantCategoryNameDetails]    Script Date: 26-Oct-20 7:42:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[spListPlantCategoryNameDetails]
@name VARCHAR(40)
AS
BEGIN
SELECT *
FROM tblPlantCategory
WHERE CategoryName = @name
END

GO
/****** Object:  StoredProcedure [dbo].[spListPlantDescriptionDetails]    Script Date: 26-Oct-20 7:42:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[spListPlantDescriptionDetails]
@desc VARCHAR(80)
AS
BEGIN
SELECT *
FROM tblPlantCategory
WHERE CategoryDescription = @desc
END

GO
/****** Object:  StoredProcedure [dbo].[spListPlantDetails]    Script Date: 26-Oct-20 7:42:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[spListPlantDetails]
@id INT
AS
BEGIN
SELECT PlantID, PlantCategoryID, PlantName
FROM tblPlant
WHERE PlantID = @id
END

GO
/****** Object:  StoredProcedure [dbo].[spListPlantInternalVariables]    Script Date: 26-Oct-20 7:42:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[spListPlantInternalVariables]
@id INT
AS
BEGIN
SELECT OptimalInternalHumidity, OptimalInternalLight, OptimalInternalOxygen, OptimalInternalTemp
FROM tblPlant
WHERE PlantID = @id
END

GO
/****** Object:  StoredProcedure [dbo].[spListPlantsByCategoryID]    Script Date: 26-Oct-20 7:42:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

/* GROUP PLANTS BY PROCEDURES */

CREATE PROCEDURE [dbo].[spListPlantsByCategoryID]
@categoryID INT
AS
BEGIN
SELECT PlantID
FROM tblPlant
WHERE PlantCategoryID = @categoryID
END

GO
/****** Object:  StoredProcedure [dbo].[spListPlantsByName]    Script Date: 26-Oct-20 7:42:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[spListPlantsByName]
@name VARCHAR(40)
AS
BEGIN
SELECT PlantID
FROM tblPlant
WHERE PlantName = @name
END

GO
/****** Object:  StoredProcedure [dbo].[spListPlantVariables]    Script Date: 26-Oct-20 7:42:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[spListPlantVariables]
@id INT
AS
BEGIN
SELECT OptimalNitrogen, OptimalPhosphorus, OptimalPotassium
FROM tblPlant
WHERE PlantID = @id
END

GO
/****** Object:  StoredProcedure [dbo].[spListPlotByFarmID]    Script Date: 26-Oct-20 7:42:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[spListPlotByFarmID]
@id INT
AS
BEGIN
SELECT PlotID
FROM tblPlots
WHERE FarmID = @id
END

GO
/****** Object:  StoredProcedure [dbo].[spListPlotByPlantID]    Script Date: 26-Oct-20 7:42:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

/* GROUP PLOTS BY PROCEDURES */

CREATE PROCEDURE [dbo].[spListPlotByPlantID]
@id INT
AS
BEGIN
SELECT PlotID
FROM tblPlots
WHERE PlantID = @id
END

GO
/****** Object:  StoredProcedure [dbo].[spListPlotDetails]    Script Date: 26-Oct-20 7:42:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

/* GET PLOT DETAILS WITH PLOT-ID */

CREATE PROCEDURE [dbo].[spListPlotDetails]
@id INT
AS
BEGIN
SELECT *
FROM tblPlots
WHERE PlotID = @id
END

GO
/****** Object:  StoredProcedure [dbo].[spListPlotOverrides]    Script Date: 26-Oct-20 7:42:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[spListPlotOverrides]
@id INT
AS
BEGIN
SELECT UserOverride
FROM tblPlots
WHERE PlotID = @id
END

GO
/****** Object:  StoredProcedure [dbo].[spListPlotPerformance]    Script Date: 26-Oct-20 7:42:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[spListPlotPerformance]
@id INT
AS
BEGIN
SELECT PerformanceReview
FROM tblPlots
WHERE PlotID = @id
END

GO
/****** Object:  StoredProcedure [dbo].[spListRoleDescriptionDetails]    Script Date: 26-Oct-20 7:42:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[spListRoleDescriptionDetails]
@desc VARCHAR(100)
AS
BEGIN	
SELECT *
FROM tblRole
WHERE RoleDescription = @desc
END
GO
/****** Object:  StoredProcedure [dbo].[spListRoleIDDetails]    Script Date: 26-Oct-20 7:42:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[spListRoleIDDetails]
@id INT
AS
BEGIN
SELECT *
FROM tblRole
WHERE RoleID = @id
END

GO
/****** Object:  StoredProcedure [dbo].[spListRoles]    Script Date: 26-Oct-20 7:42:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

/* LIST ROLE DETAILS PROCEDURES */

CREATE PROCEDURE [dbo].[spListRoles]
AS
BEGIN
SELECT *
FROM tblRole
END

GO
/****** Object:  StoredProcedure [dbo].[spListUserAddressDetails]    Script Date: 26-Oct-20 7:42:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[spListUserAddressDetails]
@address VARCHAR(100)
AS
BEGIN
SELECT *
FROM tblUser
WHERE UserAddress = @address
END

GO
/****** Object:  StoredProcedure [dbo].[spListUserContactDetails]    Script Date: 26-Oct-20 7:42:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[spListUserContactDetails]
@num VARCHAR(10)
AS
BEGIN
SELECT *
FROM tblUser
WHERE ContactNumber = @num
END

GO
/****** Object:  StoredProcedure [dbo].[spListUserEmailDetails]    Script Date: 26-Oct-20 7:42:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[spListUserEmailDetails]
@email VARCHAR(40)
AS
BEGIN
SELECT *
FROM tblUser
WHERE Email = @email
END

GO
/****** Object:  StoredProcedure [dbo].[spListUserIDDetails]    Script Date: 26-Oct-20 7:42:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

/* LIST USER DETAILS PROCEDURES */

CREATE PROCEDURE [dbo].[spListUserIDDetails]
@id INT
AS
BEGIN
SELECT *
FROM tblUser
WHERE UserID = @id
END

GO
/****** Object:  StoredProcedure [dbo].[spListUserNameDetails]    Script Date: 26-Oct-20 7:42:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[spListUserNameDetails]
@name VARCHAR(40)
AS
BEGIN
SELECT *
FROM tblUser
WHERE UserName = @name
END

GO
/****** Object:  StoredProcedure [dbo].[spListUserPasswordDetails]    Script Date: 26-Oct-20 7:42:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[spListUserPasswordDetails]
@password VARCHAR(50)
AS
BEGIN
SELECT * 
FROM tblUser
WHERE UserPassword = @password
END

GO
/****** Object:  StoredProcedure [dbo].[spListUserRoleIDDetails]    Script Date: 26-Oct-20 7:42:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[spListUserRoleIDDetails]
@id INT
AS
BEGIN
SELECT *
FROM tblUser
WHERE RoleID = @id
END

GO
/****** Object:  StoredProcedure [dbo].[spListUserVatDetails]    Script Date: 26-Oct-20 7:42:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[spListUserVatDetails]
@vat VARCHAR(10)
AS
BEGIN
SELECT *
FROM tblUser
WHERE VatIDNumber = @vat
END

GO
/****** Object:  StoredProcedure [dbo].[spUpdateFarm]    Script Date: 26-Oct-20 7:42:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[spUpdateFarm]
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
/****** Object:  StoredProcedure [dbo].[spUpdateFarmLocation]    Script Date: 26-Oct-20 7:42:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[spUpdateFarmLocation]
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
/****** Object:  StoredProcedure [dbo].[spUpdateFarmLocationAlias]    Script Date: 26-Oct-20 7:42:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[spUpdateFarmLocationAlias]
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
/****** Object:  StoredProcedure [dbo].[spUpdateFarmName]    Script Date: 26-Oct-20 7:42:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[spUpdateFarmName]
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
/****** Object:  StoredProcedure [dbo].[spUpdateFarmUserID]    Script Date: 26-Oct-20 7:42:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[spUpdateFarmUserID]
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
/****** Object:  StoredProcedure [dbo].[spUpdatePlant]    Script Date: 26-Oct-20 7:42:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[spUpdatePlant]
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
/****** Object:  StoredProcedure [dbo].[spUpdatePlantCategory]    Script Date: 26-Oct-20 7:42:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[spUpdatePlantCategory]
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
/****** Object:  StoredProcedure [dbo].[spUpdatePlantCategoryDescription]    Script Date: 26-Oct-20 7:42:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[spUpdatePlantCategoryDescription]
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
/****** Object:  StoredProcedure [dbo].[spUpdatePlantCategoryID]    Script Date: 26-Oct-20 7:42:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[spUpdatePlantCategoryID]
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
/****** Object:  StoredProcedure [dbo].[spUpdatePlantCategoryName]    Script Date: 26-Oct-20 7:42:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[spUpdatePlantCategoryName]
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
/****** Object:  StoredProcedure [dbo].[spUpdatePlantName]    Script Date: 26-Oct-20 7:42:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[spUpdatePlantName]
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
/****** Object:  StoredProcedure [dbo].[spUpdatePlantOptimalAmbientHumidity]    Script Date: 26-Oct-20 7:42:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[spUpdatePlantOptimalAmbientHumidity]
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
/****** Object:  StoredProcedure [dbo].[spUpdatePlantOptimalAmbientLight]    Script Date: 26-Oct-20 7:42:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[spUpdatePlantOptimalAmbientLight]
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
/****** Object:  StoredProcedure [dbo].[spUpdatePlantOptimalAmbientTemp]    Script Date: 26-Oct-20 7:42:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[spUpdatePlantOptimalAmbientTemp]
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
/****** Object:  StoredProcedure [dbo].[spUpdatePlantOptimalInternalHumidity]    Script Date: 26-Oct-20 7:42:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[spUpdatePlantOptimalInternalHumidity]
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
/****** Object:  StoredProcedure [dbo].[spUpdatePlantOptimalInternalLight]    Script Date: 26-Oct-20 7:42:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[spUpdatePlantOptimalInternalLight]
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
/****** Object:  StoredProcedure [dbo].[spUpdatePlantOptimalInternalOxygen]    Script Date: 26-Oct-20 7:42:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[spUpdatePlantOptimalInternalOxygen]
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
/****** Object:  StoredProcedure [dbo].[spUpdatePlantOptimalInternalTemp]    Script Date: 26-Oct-20 7:42:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[spUpdatePlantOptimalInternalTemp]
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
/****** Object:  StoredProcedure [dbo].[spUpdatePlantOptimalNitrogen]    Script Date: 26-Oct-20 7:42:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[spUpdatePlantOptimalNitrogen]
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
/****** Object:  StoredProcedure [dbo].[spUpdatePlantOptimalPhosphorus]    Script Date: 26-Oct-20 7:42:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[spUpdatePlantOptimalPhosphorus]
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
/****** Object:  StoredProcedure [dbo].[spUpdatePlantOptimalPotassium]    Script Date: 26-Oct-20 7:42:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[spUpdatePlantOptimalPotassium]
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
/****** Object:  StoredProcedure [dbo].[spUpdatePlot]    Script Date: 26-Oct-20 7:42:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[spUpdatePlot]
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
/****** Object:  StoredProcedure [dbo].[spUpdatePlotFarmID]    Script Date: 26-Oct-20 7:42:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[spUpdatePlotFarmID]
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
/****** Object:  StoredProcedure [dbo].[spUpdatePlotPerformanceReview]    Script Date: 26-Oct-20 7:42:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[spUpdatePlotPerformanceReview]
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
/****** Object:  StoredProcedure [dbo].[spUpdatePlotPlantID]    Script Date: 26-Oct-20 7:42:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[spUpdatePlotPlantID]
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
/****** Object:  StoredProcedure [dbo].[spUpdatePlotUserOverride]    Script Date: 26-Oct-20 7:42:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[spUpdatePlotUserOverride]
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
/****** Object:  StoredProcedure [dbo].[spUpdateRole]    Script Date: 26-Oct-20 7:42:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[spUpdateRole]
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
GO
/****** Object:  StoredProcedure [dbo].[spUpdateUser]    Script Date: 26-Oct-20 7:42:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[spUpdateUser]
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
/****** Object:  StoredProcedure [dbo].[spUpdateUserAddress]    Script Date: 26-Oct-20 7:42:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[spUpdateUserAddress]
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
/****** Object:  StoredProcedure [dbo].[spUpdateUserContactNumber]    Script Date: 26-Oct-20 7:42:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[spUpdateUserContactNumber]
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
/****** Object:  StoredProcedure [dbo].[spUpdateUserEmail]    Script Date: 26-Oct-20 7:42:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[spUpdateUserEmail]
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
/****** Object:  StoredProcedure [dbo].[spUpdateUserName]    Script Date: 26-Oct-20 7:42:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[spUpdateUserName]
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
/****** Object:  StoredProcedure [dbo].[spUpdateUserPassword]    Script Date: 26-Oct-20 7:42:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[spUpdateUserPassword]
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
/****** Object:  StoredProcedure [dbo].[spUpdateUserRoleID]    Script Date: 26-Oct-20 7:42:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[spUpdateUserRoleID]
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
/****** Object:  StoredProcedure [dbo].[spUpdateUserVatIDNumber]    Script Date: 26-Oct-20 7:42:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[spUpdateUserVatIDNumber]
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
USE [master]
GO
ALTER DATABASE [EdenFarmsDB] SET  READ_WRITE 
GO
