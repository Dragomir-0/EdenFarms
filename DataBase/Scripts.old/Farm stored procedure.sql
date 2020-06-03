IF EXISTS (SELECT * FROM sys.objects WHERE type = 'P' AND name = 'InserUpdateDeletetFarm')
DROP PROCEDURE InserUpdateDeletetFarm
GO

CREATE PROCEDURE InserUpdateDeletetFarm
(
@FarmID INT,
@UserID INT,
@FarmName VARCHAR(40),
@FarmLocation VARCHAR,
@LocationAlias VARCHAR(40),
@Input varchar(15)

)
AS 
BEGIN

if(@Input='Insert')
BEGIN

INSERT INTO Farm_TBL(FarmName,FarmLocation,LocationAlias) values(@FarmName,@FarmLocation,@LocationAlias)

END

if(@Input = 'Update')
BEGIN

UPDATE Farm_TBL 
SET 
FarmName = @FarmName,
FarmLocation = @FarmLocation,
LocationAlias = @LocationAlias
WHERE FarmID = @FarmID
END

if(@Input ='Delete')
BEGIN

DELETE FROM Farm_TBL WHERE FarmID= @FarmID

END 

if(@Input = 'Select')
BEGIN

Select * from Farm_TBL

END

END
