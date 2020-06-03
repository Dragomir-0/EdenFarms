/*Insert plant Category*/
CREATE PROCEDURE spInserPlantcategory
(
@CategoryName VARCHAR(40) ,
@CategoryDescription VARCHAR(100) 
)
AS
BEGIN
INSERT INTO tblPlantCategory(CategoryName,CategoryDescription) values(@CategoryName,@CategoryDescription)
END