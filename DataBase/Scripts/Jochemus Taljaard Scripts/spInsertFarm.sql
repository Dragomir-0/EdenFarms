/*Insert a new farm*/
CREATE PROCEDURE spInsertFarm
(
@UserID INT,
@FarmName VARCHAR(40),
@FarmLocation VARCHAR,
@LocationAlias VARCHAR(40)
)
AS 
BEGIN

INSERT INTO tblFarm(UserID,FarmName,FarmLocation,LocationAlias) values(@UserID,@FarmName,@FarmLocation,@LocationAlias)

END