USE [EdenFarmsDB]
GO

DECLARE	@return_value int

EXEC	@return_value = [dbo].[InserUpdateDeleteThetUsers]
		@UserID = 1,
		@UserName = N'Courteney',
		@VatIDNumber = N'#12Wo8rs',
		@ContactNumber = N'0825415698',
		@Email = N'Wor8s@gmail.com',
		@Address = N'12 April street, Pretoria ',
		@Input = N'Insert'
/*select, insert, update, delete*/
SELECT	'Return Value' = @return_value

GO
select * from User_TBL