/*Delete user*/
Create PROCEDURE spDeleteUsers
(
@USERID int
)
As
Begin 
DELETE FROM tblUser WHERE UserID = @USERID

End