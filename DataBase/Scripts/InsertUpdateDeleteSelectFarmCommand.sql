USE [EdenFarmsDB]
GO

DECLARE	@return_value int

EXEC	@return_value = [dbo].[InserUpdateDeletetFarm]
		@FarmID = 1,
		@UserID = 1,
		@FarmName = N'Groot appel plaas',
		@FarmLocation = N'Pretoria north Farm 2144',
		@LocationAlias = N'Pretoria north Farm 2144',
		@Input = N'Select'

SELECT	'Return Value' = @return_value

GO
