/*Insert a new farm*/
CREATE PROCEDURE spInsertFarm
(
@FarmID INT,
@UserID INT,
@FarmName VARCHAR(40),
@FarmLocation VARCHAR,
@LocationAlias VARCHAR(40)
)
AS 
BEGIN

INSERT INTO tblFarm(FarmName,FarmLocation,LocationAlias) values(@FarmName,@FarmLocation,@LocationAlias)

END