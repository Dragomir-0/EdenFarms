USE [EdenFarmsDB]
GO

DECLARE	@return_value int

EXEC	@return_value = [dbo].[InserUpdateDeletetPlantcategory]
		@PlantCategoryID = 1,
		@CategoryName = N'Non-vascular plants',
		@CategoryDescription = N'These plants have thin tissue',
		@Input = N'Select'

SELECT	'Return Value' = @return_value

GO
