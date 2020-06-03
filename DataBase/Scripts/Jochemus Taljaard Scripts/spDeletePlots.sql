/* Delete Plot*/
CREATE PROCEDURE spDeletetPlots
(
@PlotID int
)
AS
BEGIN

DELETE FROM tblPlots WHERE PlotID= @PlotID

END