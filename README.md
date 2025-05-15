# Kütüphane Veri tabanı
* Proje : Kütüphane veritabanın yapılması ve işlevli şekilde çalışması.
* Bu veritabanı yapılırken [Microsof SQL SERVER 2022](https://www.microsoft.com/tr-tr/sql-server/sql-server-downloads) kullanılmıştır.




# Veritabanı özellikleri

 Veri tabanı birden fazla kütüphane, yayınevi ve yazarlar üzerine yoğunlaşmaktadır. Detaylıca yapılmış olup büyük verilerle birlikte kullanılabilir.


| Tablolar     | İşlevi        |
| -------------| ------------- |
|ÜYELER| Kütüphaneye kayıt olan kişilerin bilgilerini tutar.
|EMANET| Üyelerin emanet aldığı ve nereden aldığı verilerini tutar.
|YAZARLAR	| Yazarlarla ilgili verileri tutar.
|KÜTÜPHANE| Kütüphane adıyla berabe ilgili verileri tutar.
|YAYINEVLERİ| Yayın evleriyle alakalı verileri tutar.
|YAYINEVİ_KÜTÜPHANE| Yayınevleri ve kütüphane arasındaki ilişkiyi tutar.
|YAYINEVİ_YAZARLAR| Yayınevleri ve yazarlar arasındaki ilişkiyi tutar.
|KİTAP_KÜTÜPHANE|Kitap ve kütüphane arasındaki ilişkileri tutar.
|KİTAP_YAZAR|Kitapları hangi yazarın yazdığı bilgilerini tutar.
|KİTAP_KATEGORİ|Kitapların hangi kategoriye ait olduğunu tutar.
|KİTAPLAR_YAZARLAR|Kitap ve yazarlar arasındaki ilişkiyi tutar.
|ADRESLER|Adres bilgilerini tutar.
|KİTAPLAR|Kitaplar ile alakalı verileri tutar.
|KATEGORİLER|Kategori türlerini tutar.



# E-R Diyagramı

![](https://raw.githubusercontent.com/yigitismetsahin/Kutuphane-Veritabani/refs/heads/main/E-R%20Diyagrami/E-R%20Diyagram%C4%B1.png)



# Veri tabanında bulunan kurallar
Veritabanı aşağıda bulunan kurallar üzerine yapılmıştır.

1. Her üyenin adı, soyadı, telefon numarası, adresi ve e-posta adresi bulunmalıdır.
2. Her yazarın adı ve soyadı bulunmalıdır.
3. Her kitabın adı ve ISBN numarası bulunmalıdır.
4. Her kütüphanenin ismi ve adresi bulunmalıdır.
5. Emanet edilen kitapların, kitap numarası, ISBN’si, üye numarası, kütüphane numarası
ve emanet tarihi bulunmalıdır.
6. Her kitap kategorisinin adı bulunmalıdır.
7. Her yayın evinin adı ve telefon numarası adresi bulunmalıdır.
8. Her bir adresin mahallesi, bina numarası, şehri ve posta kodu bulunmalıdır.
9. Her kitaptan kaç adet olduğu bulunmalıdır.
10. Hangi yayın evi hangi kütüphaneye kitap sağladığı bulunmalıdır.
11. Bir kitap birden fazla yazara ait olabilir.
12. Bir yazar birden fazla kitap yazmış olabilir
13. Bir kitap tek bir kategoriye ait olabilir.
14. Bir kategori birden fazla kitaba ait olabilir.
15. Bir kitap birden fazla kütüphanede bulunabilir.
16. Bir kütüphanede birden fazla kitap bulunabilir.
17. Bir üye birden fazla kitap ödünç alabilir.
18. Bir kitap birden fazla üyeye ödünç verilebilir.
19. Bir yayınevi birden fazla yazar ile çalışabilir
20. Bir yazar birden fazla yayınevi ile çalışabilir.
21. Bir yayınevi birden fazla kütüphane ile çalışabilir.
22. Bir kütüphane birden fazla yayınevi ile anlaşma yapabilir.
23. Bir kütüphane bir adrese bağlıdır.
24. Bir üyenin yalnızca bir adresi olabilir.
25. Bir yayınevinin yalnızca bir adresi olabilir.
