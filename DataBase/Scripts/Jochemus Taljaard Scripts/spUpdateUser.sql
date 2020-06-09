/*Update user*/
Create PROCEDURE spUpdateUsers
(
@userID INT,
@UserName VARCHAR(40),
@UserPassword VARCHAR(50),
@VatIDNumber VARCHAR(10),
@ContactNumber VARCHAR(10),
@Email VARCHAR(40),
@Address VARCHAR(100)
)
As
Begin
UPDATE tblUser 
SET 
UserName = @UserName,
UserPassword = @UserPassword,
VatIDNumber = @VatIDNumber,
ContactNumber = @ContactNumber,
Email = @Email,
UserAddress = @Address 
WHERE USERID = @UserID
END