/*Update Farm*/
CREATE PROCEDURE spUpdateFarm
(
@FarmID INT,
@UserID INT,
@FarmName VARCHAR(40),
@FarmLocation VARCHAR,
@LocationAlias VARCHAR(40)
)
AS
BEGIN

UPDATE tblFarm 
SET 
FarmName = @FarmName,
FarmLocation = @FarmLocation,
LocationAlias = @LocationAlias
WHERE FarmID = @FarmID
END