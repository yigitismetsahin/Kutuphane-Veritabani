create table tbl_kitap_kutuphane(
	kutuphane_no int not null,
	isbn int not null,
	kitap_adet int,
	primary key(kutuphane_no, isbn)
)