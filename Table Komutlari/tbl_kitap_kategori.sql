create table tbl_kitap_kategori(
	isbn int not null ,
	kategori_no int not null, 
	primary key("isbn","kategori_no")
)