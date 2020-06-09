/*Insert plant Category*/
CREATE PROCEDURE spInserPlantcategory
(
@CategoryName VARCHAR(40) ,
@CategoryDescription VARCHAR(80) 
)
AS
BEGIN
INSERT INTO tblPlantCategory(CategoryName,CategoryDescription) values(@CategoryName,@CategoryDescription)
END