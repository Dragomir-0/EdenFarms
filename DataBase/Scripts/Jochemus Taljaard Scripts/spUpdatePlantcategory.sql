/* Update Plant category*/
Create procedure UpdatePlantcategory
(
@PlantCategoryID INT,
@CategoryName VARCHAR(40) ,
@CategoryDescription VARCHAR(80)
)
AS
BEGIN
UPDATE tblPlantCategory 
set 
CategoryName = @CategoryName,
CategoryDescription=@CategoryDescription
WHERE PlantCategoryID = @PlantCategoryID
END