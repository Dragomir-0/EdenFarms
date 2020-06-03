IF EXISTS (SELECT * FROM sys.objects WHERE type = 'P' AND name = 'InserUpdateDeletetPlantcategory')
DROP PROCEDURE InserUpdateDeletetPlantcategory
GO

CREATE PROCEDURE InserUpdateDeletetPlantcategory
(
@PlantCategoryID INT,
@CategoryName VARCHAR(40) ,
@CategoryDescription VARCHAR(100) ,
@Input varchar(15)

)
AS 
BEGIN

if(@Input='Insert')
BEGIN

INSERT INTO PlantCategory_TBL(CategoryName,CategoryDescription) values(@CategoryName,@CategoryDescription)

END

if(@Input = 'Update')
BEGIN

UPDATE PlantCategory_TBL 
set 
CategoryName = @CategoryName,
CategoryDescription=@CategoryDescription
WHERE PlantCategoryID = @PlantCategoryID
END

if(@Input ='Delete')
BEGIN

DELETE FROM PlantCategory_TBL WHERE PlantCategoryID= @PlantCategoryID

END 

if(@Input = 'Select')
BEGIN

Select * from PlantCategory_TBL

END

END
