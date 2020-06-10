/* Update Plot*/
CREATE PROCEDURE spUpdatePlots
(
@PlotID INT ,
@FarmID INT ,
@PlantID INT ,
@UserOverride VARCHAR(40),
@PerformanceReview VARCHAR(50)
)
AS
BEGIN
UPDATE tblPlots 
SET
FarmID = @FarmID,
PlantID = @PlantID,
UserOverride=@UserOverride,
PerformanceReview=@PerformanceReview
WHERE PlotID = @PlotID
END

