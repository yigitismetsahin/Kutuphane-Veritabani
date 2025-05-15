create table tbl_uyeler(
	uye_no int identity(1,1) primary key not null,
	uye_adi varchar(50) not null ,
	uye_soyadi varchar(50)  not null,
	cinsiyet char(1) ,
	uye_telefon int not null, 
	uye_eposta varchar(50),
	adres_no int,
)