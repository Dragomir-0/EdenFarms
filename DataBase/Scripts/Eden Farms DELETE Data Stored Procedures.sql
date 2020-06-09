USE EdenFarmsDB

GO

CREATE PROCEDURE spDeletetFarm
(
@FarmID INT
)
AS
BEGIN
DELETE * FROM tblFarm 
WHERE FarmID=@FarmID
END 

GO

CREATE PROCEDURE spDeletetPlantCategory
(
@CategoryID INT 
)
AS
BEGIN
DELETE * FROM tblPlantCategory 
WHERE PlantCategoryID=@CategoryID
END

GO

CREATE PROCEDURE spDeletetPlots
(
@PlotID INT
)
AS
BEGIN
DELETE * FROM tblPlots 
WHERE PlotID= @PlotID
END

GO

CREATE PROCEDURE spDeletetPlant
(
@PlantID INT
)
AS
BEGIN
DELETE * FROM tblPlant 
WHERE PlantID=@PlantID
END 

GO

Create PROCEDURE spDeleteUsers
(
@UserID INT
)
AS
BEGIN 
DELETE * FROM tblUser 
WHERE UserID = @UserID
END