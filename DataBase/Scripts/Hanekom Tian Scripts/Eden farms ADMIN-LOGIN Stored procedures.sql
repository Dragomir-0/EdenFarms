USE EdenFarmsDB

GO

CREATE PROCEDURE spAdminLogin
@username varchar(40),
@password varchar(50)
AS
BEGIN
	IF Exists(SELECT * FROM tblUser WHERE UserName = @username AND UserPassword = @password)
		SELECT RoleID FROM tblUser WHERE UserName = @username AND UserPassword = @password
	ELSE
		ROLLBACK
		PRINT 'Login unsuccessful'
END