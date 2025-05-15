create table tbl_kutuphane(
	kutuphane_no int identity(1,1) primary key not null,
	kutuphane_ismi varchar(50),
	aciklamasi varchar(50),
	adres_no int
)