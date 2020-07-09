CREATE DATABASE EdenFarmsDB
ON PRIMARY
(
NAME= BCLibraryDBData,
FILENAME= '%Documents%\EdenFarmsDB\EdenFarmsDBData.mdf',
SIZE= 20MB,
FILEGROWTH= 10%,
MAXSIZE= 10GB
)
LOG ON
(
NAME= BCLibraryDBLogs,
FILENAME= '%Documents%\EdenFarmsDB\EdenFarmsDBLogs.ldf',
SIZE= 20MB,
FILEGROWTH= 10%,
MAXSIZE= 10GB
)
GO
USE EdenFarmsDB
GO
CREATE Table tblRole
(
RoleID INT IDENTITY PRIMARY KEY,
RoleDescription VARCHAR(100) NOT NULL 
)
GO 
CREATE Table tblUser
(
UserID INT IDENTITY PRIMARY KEY,
RoleID INT FOREIGN KEY REFERENCES tblRole(RoleID),
UserName VARCHAR(40) NOT NULL,
UserPassword VARCHAR(50) NOT NULL, 
VatIDNumber VARCHAR(10) NOT NULL,
ContactNumber VARCHAR(10) NOT NULL,
Email VARCHAR(40) NOT NULL,
UserAddress VARCHAR(100) NOT NULL
);
GO
CREATE Table tblFarm
(
FarmID INT IDENTITY PRIMARY KEY,
UserID INT FOREIGN KEY REFERENCES tblUser(UserID),
FarmName VARCHAR(40) NOT NULL,
FarmLocation VARCHAR(100) NOT NULL,
LocationAlias VARCHAR(40)
)
GO
CREATE Table tblPlantCategory
(
PlantCategoryID INT IDENTITY PRIMARY KEY,
CategoryName VARCHAR(40) NOT NULL,
CategoryDescription VARCHAR(80) NOT NULL
)
GO
CREATE Table tblPlant
(
PlantID INT IDENTITY PRIMARY KEY,
PlantCategoryID INT FOREIGN KEY REFERENCES tblPlantCategory(PlantCategoryID),
PlantName VARCHAR(40) DEFAULT 0,
OptimalAmbientTemp DECIMAL DEFAULT 0,
OptimalAmbientHumidity DECIMAL DEFAULT 0,
OptimalAmbientLight VARCHAR(7) DEFAULT 0,
OptimalInternalTemp DECIMAL DEFAULT 0,
OptimalInternalHumidity DECIMAL DEFAULT 0,
OptimalInternalLight VARCHAR(7) DEFAULT 0,
OptimalInternalOxygen DECIMAL DEFAULT 0,
OptimalNitrogen DECIMAL DEFAULT 0,
OptimalPhosphorus DECIMAL DEFAULT 0,
OptimalPotassium DECIMAL DEFAULT 0
)
GO
CREATE Table tblPlots
(
PlotID INT IDENTITY PRIMARY KEY,
FarmID INT FOREIGN KEY REFERENCES tblFarm(FarmID),
PlantID INT FOREIGN KEY REFERENCES tblPlant(PlantID),
UserOverride VARCHAR(40),
PerformanceReview VARCHAR(50)
)