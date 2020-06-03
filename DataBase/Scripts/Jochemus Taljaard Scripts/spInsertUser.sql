/*Insert user*/
Create PROCEDURE spInserThetUsers
(
@UserName VARCHAR(40),
@VatIDNumber VARCHAR(10),
@ContactNumber VARCHAR(10),
@Email VARCHAR(40),
@Address VARCHAR
)
AS 
BEGIN
INSERT INTO tblUser(UserName,VatIDNumber,ContactNumber,Email,UserAddress) values(@UserName,@VatIDNumber,@ContactNumber,@Email,@Address)
END