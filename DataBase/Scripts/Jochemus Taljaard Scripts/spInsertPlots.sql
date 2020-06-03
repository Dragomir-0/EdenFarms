/* Insert Plot*/
CREATE PROCEDURE spInsertPlots
(
@PlotID INT ,
@FarmID INT ,
@PlantID INT ,
@UserOverride VARCHAR(40),
@PerformanceReview VARCHAR(50)
)
AS 
BEGIN

INSERT INTO tblPlots(UserOverride,PerformanceReview) values(@UserOverride,@PerformanceReview)

END