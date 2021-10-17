CREATE PROC BookViewByID
@BookID int
AS
	BEGIN
	SELECT * FROM BookDetail
	Where BookID=@BookID
END