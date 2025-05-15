create table tbl_yazarlar(
	yazar_no int identity(1,1) primary key not null,
	yazar_adi varchar(50),
	yazar_soyad varchar(50)
)