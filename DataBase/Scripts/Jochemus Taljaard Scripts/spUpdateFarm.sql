/*Update Farm*/
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

UPDATE tblFarm 
SET 
UserID = @UserID,
FarmName = @FarmName,
FarmLocation = @FarmLocation,
LocationAlias = @LocationAlias,
WHERE FarmID = @FarmID
END