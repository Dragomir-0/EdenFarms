USE [EdenFarmsDB]
GO

DECLARE	@return_value int

EXEC	@return_value = [dbo].[InserUpdateDeletetPlots]
		@PlotID = NULL,
		@FarmID = NULL,
		@PlantID = NULL,
		@UserOverride = N'Overide Plant #234',
		@PerformanceReview = N'Excellent',
		@Input = N'Select'

SELECT	'Return Value' = @return_value

GO
