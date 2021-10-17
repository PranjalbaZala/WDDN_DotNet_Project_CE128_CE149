CREATE PROC BookCreateOrUpdate
@BookID int,
@BookNo int,
@Name varchar(50),
@Category varchar(50)
@Price int
As
Begin
If(@BookID=0)
	Begin
	Insert into BookDetail(BookNo,Name,Category,Price)
	Values(@BookNo,@Name,@Category,@Price)
	END
ELSE
	Begin
	Update BookDetail
	SET
		BookNo=@BookNo,
		Name=@Name,
		Category=@Category
		Price=@Price
	Where BookID=@BookID
	END
END