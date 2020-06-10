/* Insert Plot*/
CREATE PROCEDURE spInsertPlots
(
@FarmID INT,
@PlantID INT,
@UserOverride VARCHAR(40),
@PerformanceReview VARCHAR(50)
)
AS 
BEGIN

INSERT INTO tblPlots(FarmID,PlantID,UserOverride,PerformanceReview) values(@FarmID,@PlantID,@UserOverride,@PerformanceReview)

END