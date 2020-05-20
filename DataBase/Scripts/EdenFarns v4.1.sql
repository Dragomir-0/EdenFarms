CREATE DATABASE EdenFarmsDB
ON PRIMARY
(
NAME= BCLibraryDBData,
FILENAME= 'D:\Documents\University Tian Hanekom\Project 381\Tian Hanekom\Milestone 3\Eden Farms Database\EdenFarmsDBData.mdf',
SIZE= 20MB,
FILEGROWTH= 10%,
MAXSIZE= 10GB
)
LOG ON
(
NAME= BCLibraryDBLogs,
FILENAME= 'D:\Documents\University Tian Hanekom\Project 381\Tian Hanekom\Milestone 3\Eden Farms Database\EdenFarmsDBLogs.ldf',
SIZE= 20MB,
FILEGROWTH= 10%,
MAXSIZE= 10GB
)
GO
USE EdenFarmsDB
GO
CREATE Table User_TBL
(
UserID INT IDENTITY PRIMARY KEY,
UserName VARCHAR(40) NOT NULL,
VatIDNumber VARCHAR(10) NOT NULL,
ContactNumber VARCHAR(10) NOT NULL,
Email VARCHAR(40) NOT NULL,
Address VARCHAR NOT NULL
);
GO 
CREATE Table Farm_TBL
(
FarmID INT IDENTITY PRIMARY KEY,
UserID INT FOREIGN KEY REFERENCES User_TBL(UserID),
FarmName VARCHAR(40) NOT NULL,
FarmLocation VARCHAR NOT NULL,
LocationAlias VARCHAR(40)
)
GO
CREATE Table PlantCategory_TBL
(
PlantCategoryID INT IDENTITY PRIMARY KEY,
CategoryName VARCHAR(40) NOT NULL,
CategoryDescription VARCHAR NOT NULL
)
GO
CREATE Table Plant_TBL
(
PlantID INT IDENTITY PRIMARY KEY,
PlantCategoryID INT FOREIGN KEY REFERENCES PlantCategory_TBL(PlantCategoryID),
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
CREATE Table Plots_TBL
(
PlotID INT IDENTITY PRIMARY KEY,
FarmID INT FOREIGN KEY REFERENCES Farm_TBL(FarmID),
PlantID INT FOREIGN KEY REFERENCES Plant_TBL(PlantID),
UserOverride VARCHAR(40),
PerformanceReview VARCHAR(50)
)
