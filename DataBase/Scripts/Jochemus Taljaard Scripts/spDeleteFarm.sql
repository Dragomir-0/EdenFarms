/*Delete farm*/
Create procedure spDeletetFarm
(
@FarmID INT
)
AS
BEGIN

DELETE FROM tblFarm WHERE FarmID= @FarmID

END 