create table tbl_yayinevleri(
		yayinevi_no int identity(1,1) primary key not null,
		yayinevi_ad varchar(50) not null,
		yayinevi_telefon int not null,
		isbn int,
		adres_no int
)