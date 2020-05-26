/*Insert user*/
IF EXISTS (SELECT * FROM sys.objects WHERE type = 'P' AND name = 'InserUpdateDeletetTheUsers')
DROP PROCEDURE InserUpdateDeletetTheUsers
GO
/*Create procedure InserUpdateDeleteThetUsers*/
Create PROCEDURE InserUpdateDeleteThetUsers
(
@UserID INT,
@UserName VARCHAR(40),
@VatIDNumber VARCHAR(10),
@ContactNumber VARCHAR(10),
@Email VARCHAR(40),
@Address VARCHAR,
@Input nvarchar(15) = ''

)
AS 
BEGIN

if(@Input='Insert')
BEGIN
INSERT INTO User_TBL(UserName,VatIDNumber,ContactNumber,Email,Address) values(@UserName,@VatIDNumber,@ContactNumber,@Email,@Address)
END

if(@Input = 'Update')
BEGIN

UPDATE User_TBL 
SET 
UserName = @UserName,
VatIDNumber = @VatIDNumber,
ContactNumber = @ContactNumber,
Email = @Email,
Address = @Address 
WHERE USERID = @UserID
END

if(@Input ='Delete')
BEGIN

DELETE FROM User_TBL WHERE USERID= @UserID

END 

if(@Input = 'Select')
BEGIN

Select * from User_TBL

END

END





