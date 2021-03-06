USE [EdenFarmsDB]
GO

DECLARE	@return_value int

EXEC	@return_value = [dbo].[InserUpdateDeletetPlant]
		@PlantID = NULL,
		@PlantCategoryID = 1,
		@PlantName = N'Mielie',
		@OptimalAmbientTemp = 0.8,
		@OptimalAmbientHumidity = 0.2,
		@OptimalAmbientLight = N'0.9',
		@OptimalInternalOxygen = 85,
		@OptimalNitrogen = 35.5,
		@OptimalPhosphorus = 45,
		@OptimalPotassium = 12.5,
		@Input = N'Select'

SELECT	'Return Value' = @return_value

GO
