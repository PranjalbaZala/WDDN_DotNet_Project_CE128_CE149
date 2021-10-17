CREATE PROC BookDeleteByID
@BookID int
AS
	BEGIN
	Delete FROM BookDetail
	Where BookID=@BookID
END