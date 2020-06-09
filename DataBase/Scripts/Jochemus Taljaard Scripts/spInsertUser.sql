/*Insert user*/
Create PROCEDURE spInserThetUsers
(
@UserName VARCHAR(40),
@UserPassword VARCHAR(40),
@VatIDNumber VARCHAR(10),
@ContactNumber VARCHAR(10),
@Email VARCHAR(40),
@Address VARCHAR
)
AS 
BEGIN
INSERT INTO tblUser(UserName,UserPassword,VatIDNumber,ContactNumber,Email,UserAddress) values(@UserName,@UserPassword,@VatIDNumber,@ContactNumber,@Email,@Address)
END