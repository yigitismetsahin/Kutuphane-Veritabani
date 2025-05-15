create table tbl_kitaplar_yazarlar(
	isbn int not null,
	yazar_no int not null,
	primary key(isbn, yazar_no)
)