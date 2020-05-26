IF EXISTS (SELECT * FROM sys.objects WHERE type = 'P' AND name = 'InserUpdateDeletetPlots')
DROP PROCEDURE InserUpdateDeletetPlots
GO

CREATE PROCEDURE InserUpdateDeletetPlots
(
@PlotID INT ,
@FarmID INT ,
@PlantID INT ,
@UserOverride VARCHAR(40),
@PerformanceReview VARCHAR(50),
@Input varchar(15)

)
AS 
BEGIN

if(@Input='Insert')
BEGIN

INSERT INTO Plots_TBL(UserOverride,PerformanceReview) values(@UserOverride,@PerformanceReview)

END

if(@Input = 'Update')
BEGIN

UPDATE Plots_TBL 
set 
UserOverride=@UserOverride,
PerformanceReview=@PerformanceReview
WHERE PlotID = @PlotID
END

if(@Input ='Delete')
BEGIN

DELETE FROM Plots_TBL WHERE PlotID= @PlotID

END 

if(@Input = 'Select')
BEGIN

Select * from Plots_TBL

END

END
