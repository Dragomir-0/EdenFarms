/*Update user*/
Create PROCEDURE spUpdateUsers
(
@userID int,
@UserName VARCHAR(40),
@VatIDNumber VARCHAR(10),
@ContactNumber VARCHAR(10),
@Email VARCHAR(40),
@Address VARCHAR
)
As
Begin
UPDATE tblUser 
SET 
UserName = @UserName,
VatIDNumber = @VatIDNumber,
ContactNumber = @ContactNumber,
Email = @Email,
UserAddress = @Address 
WHERE USERID = @UserID
END