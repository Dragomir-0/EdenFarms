/*Delete plant category */
Create procedure spDeletetPlantcategory
(
@CategoryID INT 
)
as
begin
Delete from tblPlantCategory where PlantCategoryID=@CategoryID
END