ALTER TABLE tbl_emanet 
ADD FOREIGN KEY (uye_no) REFERENCES tbl_uyeler (uye_no);

ALTER TABLE tbl_emanet 
ADD FOREIGN KEY (kutuphane_no) REFERENCES tbl_kutuphane (kutuphane_no);

ALTER TABLE tbl_kitap_kategori 
ADD FOREIGN KEY (kategori_no) REFERENCES tbl_kategoriler (kategori_no);

ALTER TABLE tbl_kitaplar_yazarlar
ADD FOREIGN KEY (yazar_no) REFERENCES tbl_yazarlar (yazar_no);

ALTER TABLE tbl_yayinevleri
ADD FOREIGN KEY (yayinevi_no) REFERENCES tbl_kitaplar (isbn);

ALTER TABLE tbl_yayinevi_kutuphane
ADD FOREIGN KEY (yayinevi_no) REFERENCES tbl_kutuphane (kutuphane_no);

ALTER TABLE tbl_yayinevi_yazarlar
ADD FOREIGN KEY (yayinevi_no) REFERENCES tbl_yazarlar (yazar_no);

ALTER TABLE tbl_kitap_kutuphane 
ADD FOREIGN KEY (isbn) REFERENCES tbl_kitaplar (isbn);

ALTER TABLE tbl_kutuphane 
ADD FOREIGN KEY (adres_no) REFERENCES tbl_adresler (adres_no);

ALTER TABLE tbl_emanet 
ADD FOREIGN KEY (isbn) REFERENCES tbl_kitaplar (isbn);

ALTER TABLE tbl_kitap_kategori 
ADD FOREIGN KEY (isbn) REFERENCES tbl_kitaplar (isbn);

ALTER TABLE tbl_kitaplar_yazarlar 
ADD FOREIGN KEY (isbn) REFERENCES tbl_kitaplar (isbn);

ALTER TABLE tbl_kitap_kutuphane 
ADD FOREIGN KEY (kutuphane_no) REFERENCES tbl_kutuphane(kutuphane_no);

