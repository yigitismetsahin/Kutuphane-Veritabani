select * from tbl_kitaplar;

select uye_adi,uye_soyadi from tbl_uyeler;

select * from tbl_adresler where Sehir = 'Ýstanbul';

select * from tbl_kitaplar where sayfa_sayisi < 100;

select yazar_adi, yazar_soyad from tbl_yazarlar where yazar_no in
(select yazar_no from tbl_yayinevi_yazarlar where yayinevi_no = 2);

select top 5 * from tbl_kitaplar order by sayfa_sayisi desc;

select * from tbl_emanet where DATEDIFF(dd,emanet_tarih,teslim_tarih)<10;

select COUNT(*) kitap_adet from tbl_kitap_kutuphane where kutuphane_no = 2;

select * from tbl_kitap_kategori where kategori_no in
(select kategori_no from tbl_kitap_kategori where kategori_no = 7);

select * from tbl_kitaplar where sayfa_sayisi between 100 and 200;

select * from tbl_uyeler where uye_telefon like '%532%';

select * from tbl_kitap_kategori where kategori_no not in (7);

select distinct kitap_no, kitap_adet from tbl_kitap_kutuphane where kitap_adet < 30;

select top 5 * from tbl_kitaplar order by sayfa_sayisi asc;

select * from tbl_adresler where cadde is null;

select * from tbl_adresler where sehir = 'Ýstanbul' or sehir= 'Samsun';

select yayin_tarihi,DATEDIFF(yy,yayin_tarihi,GETDATE()) yillik from tbl_kitaplar;

select * from tbl_emanet where teslim_tarih is null;

select * from tbl_emanet where DATEPART(yy,teslim_tarih) between 2022 and 2023;

select AVG(sayfa_sayisi) as ortalama_sayfa from tbl_kitaplar;