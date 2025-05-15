create table tbl_emanet(
	emanet_kitapno int identity(1,1) primary key not null,
	isbn int not null,
	uye_no int not null,
	kutuphane_no int not null,
	emanet_tarih datetime,
	teslim_tarih datetime,
)