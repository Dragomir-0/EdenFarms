/*Delete Plant*/
Create procedure spDeletetPlant
(
@PlantID int
)
AS
BEGIN

DELETE FROM tblPlant WHERE PlantID= @PlantID

END 