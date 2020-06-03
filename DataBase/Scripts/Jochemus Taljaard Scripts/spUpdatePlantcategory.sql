/* Update Plant category*/
Create procedure UpdatePlantcategory
(
@PlantCategoryID INT,
@CategoryName VARCHAR(40) ,
@CategoryDescription VARCHAR(100)
)
AS
BEGIN
UPDATE tblPlantCategory 
set 
CategoryName = @CategoryName,
CategoryDescription=@CategoryDescription
WHERE PlantCategoryID = @PlantCategoryID
END