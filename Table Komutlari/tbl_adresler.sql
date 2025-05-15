create table tbl_adresler(
	adres_no int identity(1,1) primary key,
	cadde varchar(20),
	mahalle varchar(20),
	bina_no int,
	sehir varchar(20),
	posta_kodu int,
	ulke varchar(20)
)