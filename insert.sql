INSERT INTO Kraje(Nazwa, Waluta, Jêzyk) VALUES ('Polska', 'Z³oty', 'Polski');
INSERT INTO Miasta(Nazwa, Ludnoœæ, IDKraju) VALUES ('Gdañsk', 573971, IDENT_CURRENT('Kraje')); 
INSERT INTO Magazyny(Adres, CzyPrzepe³niony, Rozmiar, Kod_pocztowy, IDKraju, IDMiasta) VALUES ('Piecewska 30', 0, 15000, '80-288', IDENT_CURRENT('Kraje'), IDENT_CURRENT('Miasta'));
INSERT INTO Magazyny(Adres, CzyPrzepe³niony, Rozmiar, Kod_pocztowy, IDKraju, IDMiasta) VALUES ('Podwale Grodzkie 8', 0, 40000, '80-895', IDENT_CURRENT('Kraje'), IDENT_CURRENT('Miasta'));
INSERT INTO Miasta(Nazwa, Ludnoœæ, IDKraju) VALUES ('Warszawa', 573971, IDENT_CURRENT('Kraje')); 
INSERT INTO Magazyny(Adres, CzyPrzepe³niony, Rozmiar, Kod_pocztowy, IDKraju, IDMiasta) VALUES ('Wiejska 13', 0, 80000, '05-077', IDENT_CURRENT('Kraje'), IDENT_CURRENT('Miasta'));

INSERT INTO Kraje(Nazwa, Waluta, Jêzyk) VALUES ('Niemcy', 'Euro', 'Niemiecki');
INSERT INTO Miasta(Nazwa, Ludnoœæ, IDKraju) VALUES ('Berlin', 3575000, IDENT_CURRENT('Kraje')); 
INSERT INTO Magazyny(Adres, CzyPrzepe³niony, Rozmiar, Kod_pocztowy, IDKraju, IDMiasta) VALUES ('Friedrichstraße 23', 0, 67000, '10117', IDENT_CURRENT('Kraje'), IDENT_CURRENT('Miasta'));

INSERT INTO Kraje(Nazwa, Waluta, Jêzyk) VALUES ('USA', 'Dolar amerykañski', 'Angielski');
INSERT INTO Miasta(Nazwa, Ludnoœæ, IDKraju) VALUES ('San Francisco', 884363, IDENT_CURRENT('Kraje'));
INSERT INTO Magazyny(Adres, CzyPrzepe³niony, Rozmiar, Kod_pocztowy, IDKraju, IDMiasta) VALUES ('Lombard St 142', 0, 94000, '94016', IDENT_CURRENT('Kraje'), IDENT_CURRENT('Miasta'));
INSERT INTO Magazyny(Adres, CzyPrzepe³niony, Rozmiar, Kod_pocztowy, IDKraju, IDMiasta) VALUES ('Bay St 234', 0, 50000, '94122', IDENT_CURRENT('Kraje'), IDENT_CURRENT('Miasta'));
INSERT INTO Miasta(Nazwa, Ludnoœæ, IDKraju) VALUES ('Saint Louis', 308626, IDENT_CURRENT('Kraje'));
INSERT INTO Magazyny(Adres, CzyPrzepe³niony, Rozmiar, Kod_pocztowy, IDKraju, IDMiasta) VALUES ('Cass Ave', 0, 25000, '63101', IDENT_CURRENT('Kraje'), IDENT_CURRENT('Miasta'));

INSERT INTO Kraje(Nazwa, Waluta, Jêzyk) VALUES ('Anglia', 'Funt', 'Angielski');
INSERT INTO Miasta(Nazwa, Ludnoœæ, IDKraju) VALUES ('Londyn', 8136000, IDENT_CURRENT('Kraje'));
INSERT INTO Magazyny(Adres, CzyPrzepe³niony, Rozmiar, Kod_pocztowy, IDKraju, IDMiasta) VALUES ('Oaklands Ave 13', 0, 48000, 'MK10 7FJ', IDENT_CURRENT('Kraje'), IDENT_CURRENT('Miasta'));
INSERT INTO Miasta(Nazwa, Ludnoœæ, IDKraju) VALUES ('Liverpool', 552267, IDENT_CURRENT('Kraje'));
INSERT INTO Magazyny(Adres, CzyPrzepe³niony, Rozmiar, Kod_pocztowy, IDKraju, IDMiasta) VALUES ('Elmswood Rd', 0, 48000, 'L1 0AQ', IDENT_CURRENT('Kraje'), IDENT_CURRENT('Miasta'));

INSERT INTO Kraje(Nazwa, Waluta, Jêzyk) VALUES ('Grecja', 'Euro', 'Grecki');

INSERT INTO Kraje(Nazwa, Waluta, Jêzyk) VALUES ('Finlandia', 'Euro', 'Fiñski');
INSERT INTO Miasta(Nazwa, Ludnoœæ, IDKraju) VALUES ('Helsinki', 631695, IDENT_CURRENT('Kraje'));
INSERT INTO Magazyny(Adres, CzyPrzepe³niony, Rozmiar, Kod_pocztowy, IDKraju, IDMiasta) VALUES ('Lönnrotinkatu', 0, 37000, '00100', IDENT_CURRENT('Kraje'), IDENT_CURRENT('Miasta'));

INSERT INTO Kraje(Nazwa, Waluta, Jêzyk) VALUES ('Francja', 'Euro', 'Francuski');
INSERT INTO Miasta(Nazwa, Ludnoœæ, IDKraju) VALUES ('Pary¿', 2200000, IDENT_CURRENT('Kraje'));
INSERT INTO Magazyny(Adres, CzyPrzepe³niony, Rozmiar, Kod_pocztowy, IDKraju, IDMiasta) VALUES ('Rue du Buisson Saint-Louis', 0, 19000, '75010', IDENT_CURRENT('Kraje'), IDENT_CURRENT('Miasta'));

INSERT INTO Kraje(Nazwa, Waluta, Jêzyk) VALUES ('Japonia', 'Jen', 'Japoñski');
INSERT INTO Miasta(Nazwa, Ludnoœæ, IDKraju) VALUES ('Tokio', 9273000, IDENT_CURRENT('Kraje'));
INSERT INTO Magazyny(Adres, CzyPrzepe³niony, Rozmiar, Kod_pocztowy, IDKraju, IDMiasta) VALUES ('Waseda Dori', 0, 100000, '162-0825', IDENT_CURRENT('Kraje'), IDENT_CURRENT('Miasta'));
INSERT INTO Miasta(Nazwa, Ludnoœæ, IDKraju) VALUES ('Kumamoto', 740822, IDENT_CURRENT('Kraje'));
INSERT INTO Magazyny(Adres, CzyPrzepe³niony, Rozmiar, Kod_pocztowy, IDKraju, IDMiasta) VALUES ('Sangyo Road', 0, 90000, '860-0811', IDENT_CURRENT('Kraje'), IDENT_CURRENT('Miasta'));

INSERT INTO Kraje(Nazwa, Waluta, Jêzyk) VALUES ('Kanada', 'Dolar kanadyjski', 'Francuski');
INSERT INTO Miasta(Nazwa, Ludnoœæ, IDKraju) VALUES ('Vancouver', 631490, IDENT_CURRENT('Kraje'));
INSERT INTO Magazyny(Adres, CzyPrzepe³niony, Rozmiar, Kod_pocztowy, IDKraju, IDMiasta) VALUES ('Point Grey RD', 0, 78000, 'BC V6K 1A1', IDENT_CURRENT('Kraje'), IDENT_CURRENT('Miasta'));

INSERT INTO Kraje(Nazwa, Waluta, Jêzyk) VALUES ('Rosja', 'Rubel rosyjski', 'Rosyjski');
INSERT INTO Miasta(Nazwa, Ludnoœæ, IDKraju) VALUES ('Moskwa', 11920000, IDENT_CURRENT('Kraje'));
INSERT INTO Magazyny(Adres, CzyPrzepe³niony, Rozmiar, Kod_pocztowy, IDKraju, IDMiasta) VALUES ('Vysokovol''tnyy Proyezd', 0, 100000, '127566', IDENT_CURRENT('Kraje'), IDENT_CURRENT('Miasta'));
INSERT INTO Magazyny(Adres, CzyPrzepe³niony, Rozmiar, Kod_pocztowy, IDKraju, IDMiasta) VALUES ('Deguninskaya Ulitsa', 0, 40000, '127486', IDENT_CURRENT('Kraje'), IDENT_CURRENT('Miasta'));

INSERT INTO Kraje(Nazwa, Waluta, Jêzyk) VALUES ('Indie', 'Rupia indyjska', 'Hindi');
INSERT INTO Miasta(Nazwa, Ludnoœæ, IDKraju) VALUES ('Bombaj', 18410000, IDENT_CURRENT('Kraje'));




INSERT INTO Towary(Nazwa, Waga, Wymiary) VALUES ('Gitara Cort M200 WS', 2.4, '60x99x10');
INSERT INTO Towary(Nazwa, Waga, Wymiary) VALUES ('Pi³ka do siatkówki', 0.26 , '30x30x30');
INSERT INTO Towary(Nazwa, Waga, Wymiary) VALUES ('Kostka gitarowa', 0.01 , '4x5x0.071');
INSERT INTO Towary(Nazwa, Waga, Wymiary) VALUES ('Obraz', 1.43 , '200x100x15');
INSERT INTO Towary(Nazwa, Waga, Wymiary) VALUES ('Drukarka', 2.5 , '100x110x50');
INSERT INTO Towary(Nazwa, Waga, Wymiary) VALUES ('Lampka nocna', 0.5 , '50x10x20');
INSERT INTO Towary(Nazwa, Waga, Wymiary) VALUES ('Pluszowy go³¹b', 0.1 , '30x40x10');
INSERT INTO Towary(Nazwa, Waga, Wymiary) VALUES ('Laptop', 1.5 , '60x40x2');
INSERT INTO Towary(Nazwa, Waga, Wymiary) VALUES ('Monitor', 2 , '80x45x5');
INSERT INTO Towary(Nazwa, Waga, Wymiary) VALUES ('Flamastry', 0.2 , '10x15x3');
INSERT INTO Towary(Nazwa, Waga, Wymiary) VALUES ('Netflix karta podarunkowa', 0.01 , '10x10x0.01');
INSERT INTO Towary(Nazwa, Waga, Wymiary) VALUES ('XBOX OneX', 3.8 , '30x24x6');
INSERT INTO Towary(Nazwa, Waga, Wymiary) VALUES ('Globus', 0.5 , '40x35x35');
INSERT INTO Towary(Nazwa, Waga, Wymiary) VALUES ('Poduszka', 0.35 , '50x50x15');




INSERT INTO Firmy_kurierskie(Nazwa, Numer_kontaktowy) VALUES ('UPS', '22 489 48 77');
INSERT INTO Firmy_kurierskie(Nazwa, Numer_kontaktowy) VALUES ('DHL', '22 493 33 33');
INSERT INTO Firmy_kurierskie(Nazwa, Numer_kontaktowy) VALUES ('DPD', '22 577 55 55');
INSERT INTO Firmy_kurierskie(Nazwa, Numer_kontaktowy) VALUES ('FedEx', '801 002 800');
INSERT INTO Firmy_kurierskie(Nazwa, Numer_kontaktowy) VALUES ('inPost', '722 444 000');
INSERT INTO Firmy_kurierskie(Nazwa, Numer_kontaktowy) VALUES ('GLS', '+48 46 814 82 20');
INSERT INTO Firmy_kurierskie(Nazwa, Numer_kontaktowy) VALUES ('Pocztex', '+48 43 842 0 842');
INSERT INTO Firmy_kurierskie(Nazwa, Numer_kontaktowy) VALUES ('Jetpack', '79 158 74 37');
INSERT INTO Firmy_kurierskie(Nazwa, Numer_kontaktowy) VALUES ('Wings Express', '202 555 0111');
INSERT INTO Firmy_kurierskie(Nazwa, Numer_kontaktowy) VALUES ('TNT', '+1 202 555 0189');
INSERT INTO Firmy_kurierskie(Nazwa, Numer_kontaktowy) VALUES ('Qurier Parcel Service', '22 631 27 84');




INSERT INTO Kurierzy_w_kraju(IDKuriera, IDKraju) VALUES (1,1);
INSERT INTO Kurierzy_w_kraju(IDKuriera, IDKraju) VALUES (1,7);
INSERT INTO Kurierzy_w_kraju(IDKuriera, IDKraju) VALUES (1,8);
INSERT INTO Kurierzy_w_kraju(IDKuriera, IDKraju) VALUES (2,4);
INSERT INTO Kurierzy_w_kraju(IDKuriera, IDKraju) VALUES (2,5);
INSERT INTO Kurierzy_w_kraju(IDKuriera, IDKraju) VALUES (2,10);
INSERT INTO Kurierzy_w_kraju(IDKuriera, IDKraju) VALUES (2,7);
INSERT INTO Kurierzy_w_kraju(IDKuriera, IDKraju) VALUES (3,11);
INSERT INTO Kurierzy_w_kraju(IDKuriera, IDKraju) VALUES (3,4);
INSERT INTO Kurierzy_w_kraju(IDKuriera, IDKraju) VALUES (3,9);
INSERT INTO Kurierzy_w_kraju(IDKuriera, IDKraju) VALUES (4,6);
INSERT INTO Kurierzy_w_kraju(IDKuriera, IDKraju) VALUES (4,5);
INSERT INTO Kurierzy_w_kraju(IDKuriera, IDKraju) VALUES (5,11);
INSERT INTO Kurierzy_w_kraju(IDKuriera, IDKraju) VALUES (5,9);
INSERT INTO Kurierzy_w_kraju(IDKuriera, IDKraju) VALUES (6,7);
INSERT INTO Kurierzy_w_kraju(IDKuriera, IDKraju) VALUES (7,10);
INSERT INTO Kurierzy_w_kraju(IDKuriera, IDKraju) VALUES (7,8);
INSERT INTO Kurierzy_w_kraju(IDKuriera, IDKraju) VALUES (8,11);
INSERT INTO Kurierzy_w_kraju(IDKuriera, IDKraju) VALUES (8,9);
INSERT INTO Kurierzy_w_kraju(IDKuriera, IDKraju) VALUES (9,10);
INSERT INTO Kurierzy_w_kraju(IDKuriera, IDKraju) VALUES (9,2);
INSERT INTO Kurierzy_w_kraju(IDKuriera, IDKraju) VALUES (10,11);
INSERT INTO Kurierzy_w_kraju(IDKuriera, IDKraju) VALUES (10,3);
INSERT INTO Kurierzy_w_kraju(IDKuriera, IDKraju) VALUES (10,5);
INSERT INTO Kurierzy_w_kraju(IDKuriera, IDKraju) VALUES (11,2);
INSERT INTO Kurierzy_w_kraju(IDKuriera, IDKraju) VALUES (11,6);
INSERT INTO Kurierzy_w_kraju(IDKuriera, IDKraju) VALUES (11,5);




INSERT INTO Stany_towarów(Liczba, IDTowar, IDMagazyn) VALUES (3000, 1, 1);
INSERT INTO Stany_towarów(Liczba, IDTowar, IDMagazyn) VALUES (14000, 3, 1);
INSERT INTO Stany_towarów(Liczba, IDTowar, IDMagazyn) VALUES (7000, 5, 1);
INSERT INTO Stany_towarów(Liczba, IDTowar, IDMagazyn) VALUES (17000, 2, 2);
INSERT INTO Stany_towarów(Liczba, IDTowar, IDMagazyn) VALUES (2000, 4, 2);
INSERT INTO Stany_towarów(Liczba, IDTowar, IDMagazyn) VALUES (600, 6, 2);
INSERT INTO Stany_towarów(Liczba, IDTowar, IDMagazyn) VALUES (300, 7, 3);
INSERT INTO Stany_towarów(Liczba, IDTowar, IDMagazyn) VALUES (3604, 9, 3);
INSERT INTO Stany_towarów(Liczba, IDTowar, IDMagazyn) VALUES (2100, 11, 3);
INSERT INTO Stany_towarów(Liczba, IDTowar, IDMagazyn) VALUES (3060, 8, 4);
INSERT INTO Stany_towarów(Liczba, IDTowar, IDMagazyn) VALUES (8030, 9, 4);
INSERT INTO Stany_towarów(Liczba, IDTowar, IDMagazyn) VALUES (6600, 10, 4);
INSERT INTO Stany_towarów(Liczba, IDTowar, IDMagazyn) VALUES (30000, 13, 5);
INSERT INTO Stany_towarów(Liczba, IDTowar, IDMagazyn) VALUES (506, 12, 5);
INSERT INTO Stany_towarów(Liczba, IDTowar, IDMagazyn) VALUES (7045, 11, 5);
INSERT INTO Stany_towarów(Liczba, IDTowar, IDMagazyn) VALUES (30000, 13, 6);
INSERT INTO Stany_towarów(Liczba, IDTowar, IDMagazyn) VALUES (506, 12, 6);
INSERT INTO Stany_towarów(Liczba, IDTowar, IDMagazyn) VALUES (7045, 11, 6);
INSERT INTO Stany_towarów(Liczba, IDTowar, IDMagazyn) VALUES (300, 7, 7);
INSERT INTO Stany_towarów(Liczba, IDTowar, IDMagazyn) VALUES (3604, 9, 7);
INSERT INTO Stany_towarów(Liczba, IDTowar, IDMagazyn) VALUES (2100, 11, 7);
INSERT INTO Stany_towarów(Liczba, IDTowar, IDMagazyn) VALUES (600, 6, 8);
INSERT INTO Stany_towarów(Liczba, IDTowar, IDMagazyn) VALUES (300, 7, 8);
INSERT INTO Stany_towarów(Liczba, IDTowar, IDMagazyn) VALUES (3604, 9, 8);
INSERT INTO Stany_towarów(Liczba, IDTowar, IDMagazyn) VALUES (6600, 10, 9);
INSERT INTO Stany_towarów(Liczba, IDTowar, IDMagazyn) VALUES (30000, 13, 9);
INSERT INTO Stany_towarów(Liczba, IDTowar, IDMagazyn) VALUES (506, 12, 9);
INSERT INTO Stany_towarów(Liczba, IDTowar, IDMagazyn) VALUES (7045, 11, 9);
INSERT INTO Stany_towarów(Liczba, IDTowar, IDMagazyn) VALUES (3060, 8, 10);
INSERT INTO Stany_towarów(Liczba, IDTowar, IDMagazyn) VALUES (8030, 9, 10);
INSERT INTO Stany_towarów(Liczba, IDTowar, IDMagazyn) VALUES (6600, 10, 10);
INSERT INTO Stany_towarów(Liczba, IDTowar, IDMagazyn) VALUES (6600, 10, 11);
INSERT INTO Stany_towarów(Liczba, IDTowar, IDMagazyn) VALUES (30000, 13, 11);
INSERT INTO Stany_towarów(Liczba, IDTowar, IDMagazyn) VALUES (506, 12, 11);
INSERT INTO Stany_towarów(Liczba, IDTowar, IDMagazyn) VALUES (3060, 8, 12);
INSERT INTO Stany_towarów(Liczba, IDTowar, IDMagazyn) VALUES (8030, 9, 12);
INSERT INTO Stany_towarów(Liczba, IDTowar, IDMagazyn) VALUES (6600, 10, 12);
INSERT INTO Stany_towarów(Liczba, IDTowar, IDMagazyn) VALUES (2000, 4, 13);
INSERT INTO Stany_towarów(Liczba, IDTowar, IDMagazyn) VALUES (600, 6, 13);
INSERT INTO Stany_towarów(Liczba, IDTowar, IDMagazyn) VALUES (300, 7, 13);
INSERT INTO Stany_towarów(Liczba, IDTowar, IDMagazyn) VALUES (3604, 9, 14);
INSERT INTO Stany_towarów(Liczba, IDTowar, IDMagazyn) VALUES (6600, 10, 14);
INSERT INTO Stany_towarów(Liczba, IDTowar, IDMagazyn) VALUES (30000, 13, 14);
INSERT INTO Stany_towarów(Liczba, IDTowar, IDMagazyn) VALUES (506, 12, 14);
INSERT INTO Stany_towarów(Liczba, IDTowar, IDMagazyn) VALUES (7045, 3, 15);
INSERT INTO Stany_towarów(Liczba, IDTowar, IDMagazyn) VALUES (300, 7, 15);
INSERT INTO Stany_towarów(Liczba, IDTowar, IDMagazyn) VALUES (3604, 9, 15);
INSERT INTO Stany_towarów(Liczba, IDTowar, IDMagazyn) VALUES (2100, 11, 15);
INSERT INTO Stany_towarów(Liczba, IDTowar, IDMagazyn) VALUES (300, 7, 16);
INSERT INTO Stany_towarów(Liczba, IDTowar, IDMagazyn) VALUES (3604, 9, 16);
INSERT INTO Stany_towarów(Liczba, IDTowar, IDMagazyn) VALUES (2100, 11, 16);
INSERT INTO Stany_towarów(Liczba, IDTowar, IDMagazyn) VALUES (600, 6, 16);




INSERT INTO Oferty(Cena, IDTowar) VALUES (899, 1);
INSERT INTO Oferty(Cena, IDTowar) VALUES (129.99, 2);
INSERT INTO Oferty(Cena, IDTowar) VALUES (1.99, 3);
INSERT INTO Oferty(Cena, IDTowar) VALUES (599.89, 4);
INSERT INTO Oferty(Cena, IDTowar) VALUES (398, 5);
INSERT INTO Oferty(Cena, IDTowar) VALUES (79.99, 6);
INSERT INTO Oferty(Cena, IDTowar) VALUES (89.99, 7);
INSERT INTO Oferty(Cena, IDTowar) VALUES (3299, 8);
INSERT INTO Oferty(Cena, IDTowar) VALUES (829, 9);
INSERT INTO Oferty(Cena, IDTowar) VALUES (59.99, 10);
INSERT INTO Oferty(Cena, IDTowar) VALUES (59.99, 11);
INSERT INTO Oferty(Cena, IDTowar) VALUES (1599.99, 12);
INSERT INTO Oferty(Cena, IDTowar) VALUES (49.99, 13);
INSERT INTO Oferty(Cena, IDTowar) VALUES (29.99, 14);
INSERT INTO Oferty(Cena, Czy_Aktualna, IDTowar) VALUES (99.99, 0, 2);
INSERT INTO Oferty(Cena, Czy_Aktualna, IDTowar) VALUES (450, 0, 5);
INSERT INTO Oferty(Cena, Czy_Aktualna, IDTowar) VALUES (49.99, 0, 10);
INSERT INTO Oferty(Cena, Czy_Aktualna, IDTowar) VALUES (4.50, 0, 3);




INSERT INTO Oferty_w_kraju(IDKraju, IDOferty) VALUES (1, 1);
INSERT INTO Oferty_w_kraju(IDKraju, IDOferty) VALUES (1, 2);
INSERT INTO Oferty_w_kraju(IDKraju, IDOferty) VALUES (1, 3);
INSERT INTO Oferty_w_kraju(IDKraju, IDOferty) VALUES (2, 4);
INSERT INTO Oferty_w_kraju(IDKraju, IDOferty) VALUES (2, 5);
INSERT INTO Oferty_w_kraju(IDKraju, IDOferty) VALUES (2, 2);
INSERT INTO Oferty_w_kraju(IDKraju, IDOferty) VALUES (3, 6);
INSERT INTO Oferty_w_kraju(IDKraju, IDOferty) VALUES (3, 7);
INSERT INTO Oferty_w_kraju(IDKraju, IDOferty) VALUES (3, 8);
INSERT INTO Oferty_w_kraju(IDKraju, IDOferty) VALUES (4, 2);
INSERT INTO Oferty_w_kraju(IDKraju, IDOferty) VALUES (5, 9);
INSERT INTO Oferty_w_kraju(IDKraju, IDOferty) VALUES (5, 10);
INSERT INTO Oferty_w_kraju(IDKraju, IDOferty) VALUES (6, 11);
INSERT INTO Oferty_w_kraju(IDKraju, IDOferty) VALUES (7, 12);
INSERT INTO Oferty_w_kraju(IDKraju, IDOferty) VALUES (8, 14);
INSERT INTO Oferty_w_kraju(IDKraju, IDOferty) VALUES (8, 1);
INSERT INTO Oferty_w_kraju(IDKraju, IDOferty) VALUES (9, 3);
INSERT INTO Oferty_w_kraju(IDKraju, IDOferty) VALUES (9, 13);
INSERT INTO Oferty_w_kraju(IDKraju, IDOferty) VALUES (9, 6);
INSERT INTO Oferty_w_kraju(IDKraju, IDOferty) VALUES (10, 2);
INSERT INTO Oferty_w_kraju(IDKraju, IDOferty) VALUES (10, 7);
INSERT INTO Oferty_w_kraju(IDKraju, IDOferty) VALUES (10, 5);
INSERT INTO Oferty_w_kraju(IDKraju, IDOferty) VALUES (11, 4);
INSERT INTO Oferty_w_kraju(IDKraju, IDOferty) VALUES (11, 14);

INSERT INTO Opcje_dostaw(Nazwa, Cena, Waga_max, IDKuriera) VALUES ('Szybka dostawa', 15.99, 15, 1);
INSERT INTO Opcje_dostaw(Nazwa, Cena, Waga_max, IDKuriera) VALUES ('Du¿a dostawa', 150.99, 200, 1);
INSERT INTO Opcje_dostaw(Nazwa, Cena, Waga_max, IDKuriera) VALUES ('Dostawa nastêpnego dnia', 34.99, 10, 1);
INSERT INTO Opcje_dostaw(Nazwa, Cena, Waga_max, IDKuriera) VALUES ('Normalna dostawa', 10.99, 20, 1);
INSERT INTO Opcje_dostaw(Nazwa, Cena, Waga_max, IDKuriera) VALUES ('Szybka dostawa', 15.99, 20, 2);
INSERT INTO Opcje_dostaw(Nazwa, Cena, Waga_max, IDKuriera) VALUES ('Du¿a dostawa', 200, 500, 2);
INSERT INTO Opcje_dostaw(Nazwa, Cena, Waga_max, IDKuriera) VALUES ('Dostawa nastêpnego dnia', 29.90, 5, 2);
INSERT INTO Opcje_dostaw(Nazwa, Cena, Waga_max, IDKuriera) VALUES ('Normalna dostawa', 8.99, 20, 2);
INSERT INTO Opcje_dostaw(Nazwa, Cena, Waga_max, IDKuriera) VALUES ('Szybka dostawa', 16.99, 15, 3);
INSERT INTO Opcje_dostaw(Nazwa, Cena, Waga_max, IDKuriera) VALUES ('Normalna dostawa', 9.99, 10, 3);
INSERT INTO Opcje_dostaw(Nazwa, Cena, Waga_max, IDKuriera) VALUES ('Szybka dostawa', 10.99, 10, 4);
INSERT INTO Opcje_dostaw(Nazwa, Cena, Waga_max, IDKuriera) VALUES ('Du¿a dostawa', 99.99, 100, 4);
INSERT INTO Opcje_dostaw(Nazwa, Cena, Waga_max, IDKuriera) VALUES ('Dostawa nastêpnego dnia', 25, 10, 4);
INSERT INTO Opcje_dostaw(Nazwa, Cena, Waga_max, IDKuriera) VALUES ('Normalna dostawa', 10.99, 20, 4);
INSERT INTO Opcje_dostaw(Nazwa, Cena, Waga_max, IDKuriera) VALUES ('Szybka dostawa', 15.99, 15, 5);
INSERT INTO Opcje_dostaw(Nazwa, Cena, Waga_max, IDKuriera) VALUES ('Normalna dostawa', 4.99, 10, 5);
INSERT INTO Opcje_dostaw(Nazwa, Cena, Waga_max, IDKuriera) VALUES ('Szybka dostawa', 16.99, 20, 6);
INSERT INTO Opcje_dostaw(Nazwa, Cena, Waga_max, IDKuriera) VALUES ('Dostawa nastêpnego dnia', 19.90, 2, 6);
INSERT INTO Opcje_dostaw(Nazwa, Cena, Waga_max, IDKuriera) VALUES ('Normalna dostawa', 10.99, 20, 6);
INSERT INTO Opcje_dostaw(Nazwa, Cena, Waga_max, IDKuriera) VALUES ('Szybka dostawa', 10.99, 10, 7);
INSERT INTO Opcje_dostaw(Nazwa, Cena, Waga_max, IDKuriera) VALUES ('Normalna dostawa', 10.99, 20, 7);
INSERT INTO Opcje_dostaw(Nazwa, Cena, Waga_max, IDKuriera) VALUES ('Normalna dostawa', 12.99, 25, 8);
INSERT INTO Opcje_dostaw(Nazwa, Cena, Waga_max, IDKuriera) VALUES ('Normalna dostawa', 10.99, 15, 9);
INSERT INTO Opcje_dostaw(Nazwa, Cena, Waga_max, IDKuriera) VALUES ('Szybka dostawa', 18.99, 15, 10);
INSERT INTO Opcje_dostaw(Nazwa, Cena, Waga_max, IDKuriera) VALUES ('Du¿a dostawa', 199.99, 200, 10);
INSERT INTO Opcje_dostaw(Nazwa, Cena, Waga_max, IDKuriera) VALUES ('Dostawa nastêpnego dnia', 30.99, 15, 10);
INSERT INTO Opcje_dostaw(Nazwa, Cena, Waga_max, IDKuriera) VALUES ('Normalna dostawa', 11.99, 20, 10);
INSERT INTO Opcje_dostaw(Nazwa, Cena, Waga_max, IDKuriera) VALUES ('Dostawa nastêpnego dnia', 20.99, 10, 11);
INSERT INTO Opcje_dostaw(Nazwa, Cena, Waga_max, IDKuriera) VALUES ('Normalna dostawa', 10.99, 20, 11);




INSERT INTO Klienci(Imie, Nazwisko, Kod_pocztowy, Adres, Login_klienta, Has³o, Email, IDMiasta) VALUES
			('Apolonia', 'Wysocka', '60-302', 'ul. Wawerska 81', 'ApWys', 
			0x03AC674216F3E15C761EE1A5E255F067953623C8B388B4459E13F978D7C846F4, 'ApoloniaWysocka@armyspy.com', 2);
INSERT INTO Klienci(Imie, Nazwisko, Kod_pocztowy, Adres, Login_klienta, Has³o, Email, IDMiasta) VALUES
			('Jaros³aw', 'Wiœniewski', '81-587', 'ul. Buraczana 135', 'JarWis', 
			0xDEA4775697B76CA10F56D237145C5540584ECBE1E9173658D26B61261CB8EF76, 'JaroslawWisniewski@dayrep.com', 1);
INSERT INTO Klienci(Imie, Nazwisko, Kod_pocztowy, Adres, Login_klienta, Has³o, Email, IDMiasta) VALUES
			('Phillipp', 'Weiß', '93354', 'Schaarsteinweg 64', 'PhWe', 
			0x2391B726CE7E9588466B8E1BF4C7E95FBF744DEFD9605A4B2EAB7FAF29AC2F14, 'PhillippWeiss@armyspy.com', 3);
INSERT INTO Klienci(Imie, Nazwisko, Kod_pocztowy, Adres, Login_klienta, Has³o, Email, IDMiasta) VALUES
			('Julia', 'H. Jones', 'TN 37210', '1747 McDowell Street', 'JulJo', 
			0x2AC215DA703106C8614362232E08A07DD42903534E5E51D27163AB3EE66B6082, 'JuliaHJones@dayrep.com', 4);
INSERT INTO Klienci(Imie, Nazwisko, Kod_pocztowy, Adres, Login_klienta, Has³o, Email, IDMiasta) VALUES
			('Max', 'Marshall', 'NR10 1QN', '53 Baldock Street', 'MaMar', 
			0x2C6C09D3E27FB0CA4C6FA131079034B345E6713DB882F1D6CDC38C891900E18F, 'MaxMarshall@jourrapide.com', 6);
INSERT INTO Klienci(Imie, Nazwisko, Kod_pocztowy, Adres, Login_klienta, Has³o, Email, IDMiasta) VALUES
			('Sanna', 'Weckström', '39100', 'Visiokatu 83', 'SaWe', 
			0xF5E47AAE3B32D69E274C37B4E9416087FEE031AC6EB1457C697F096498D0C55F, 'SannaWeckstrom@rhyta.com', 8);
INSERT INTO Klienci(Imie, Nazwisko, Kod_pocztowy, Adres, Login_klienta, Has³o, Email, IDMiasta) VALUES
			('Tuomo', 'Hakala', '43500', 'Unioninkatu 55', 'TuHa', 
			0x218BBEF0A4150F439D76CB2BC5F72CCCBCCC5FE21D0B34CE1CB4012A1CE8F083, 'TuomoHakala@teleworm.us', 8);
INSERT INTO Klienci(Imie, Nazwisko, Kod_pocztowy, Adres, Login_klienta, Has³o, Email, IDMiasta) VALUES
			('Baptiste', 'Loiselle', '82000', '99, rue Bonneterie', 'BaLo', 
			0x2AD4FAB766D604169621273A4B2328FF08E81913AB3625760C7AB98C09E7155E, 'BaptisteLoiselle@rhyta.com', 9);
INSERT INTO Klienci(Imie, Nazwisko, Kod_pocztowy, Adres, Login_klienta, Has³o, Email, IDMiasta) VALUES
			('Chisako', 'Akiyama', '860-0811', 'Sangyo Road 12', 'CinCion', 
			0x55AAA1A128436C36049E8D7AD3FFC9EF3A9F856CB40F8C493D099F518D9E6F50, 'Himeb1966@teleworm.us', 10);
INSERT INTO Klienci(Imie, Nazwisko, Kod_pocztowy, Adres, Login_klienta, Has³o, Email, IDMiasta) VALUES
			('Charles', 'F. Overman', 'QC J0C 1M0', '2431 rue des Églises Est', 'Exal1947', 
			0x48DCA5272412ADAF2594792C0DC4232D67E9BC1920B63B2101275B5E235B967D, 'CharlesFOverman@dayrep.com', 12);
INSERT INTO Klienci(Imie, Nazwisko, Kod_pocztowy, Adres, Login_klienta, Has³o, Email, IDMiasta) VALUES
			('Thomas', 'Artemiev', '90400', 'Ituzaingó 5134', 'Zably1985', 
			0x1B6D3C8EDF0343D78EDBAA84AC9DAD52BBF84333FB4BF135FFB9F9D8FC737936, 'ThomasArtemiev@rhyta.com', 13);

INSERT INTO Zamówienia (Czas_oczekiwania, Data_zamówienia, Priorytet, Sfinalizowane, IDKlienta, IDMagazyn, IDOpcji) values (6, '2018-12-07 06:45:32', 8, 0, 10, 6, 10);
INSERT INTO Zamówienia (Czas_oczekiwania, Data_zamówienia, Priorytet, Sfinalizowane, IDKlienta, IDMagazyn, IDOpcji) values (1, '2018-12-10 17:45:39', 2, 0, 9, 15, 21);
INSERT INTO Zamówienia (Czas_oczekiwania, Data_zamówienia, Priorytet, Sfinalizowane, IDKlienta, IDMagazyn, IDOpcji) values (3, '2018-12-12 04:33:01', 5, 1, 5, 9, 13);
INSERT INTO Zamówienia (Czas_oczekiwania, Data_zamówienia, Priorytet, Sfinalizowane, IDKlienta, IDMagazyn, IDOpcji) values (5, '2018-12-02 14:54:43', 10, 0, 1, 8, 19);
INSERT INTO Zamówienia (Czas_oczekiwania, Data_zamówienia, Priorytet, Sfinalizowane, IDKlienta, IDMagazyn, IDOpcji) values (2, '2018-12-14 00:53:50', 8, 0, 10, 8, 13);
INSERT INTO Zamówienia (Czas_oczekiwania, Data_zamówienia, Priorytet, Sfinalizowane, IDKlienta, IDMagazyn, IDOpcji) values (3, '2018-12-18 12:20:03', 7, 0, 6, 8, 9);
INSERT INTO Zamówienia (Czas_oczekiwania, Data_zamówienia, Priorytet, Sfinalizowane, IDKlienta, IDMagazyn, IDOpcji) values (7, '2018-12-19 05:58:34', 4, 1, 11, 8, 5);
INSERT INTO Zamówienia (Czas_oczekiwania, Data_zamówienia, Priorytet, Sfinalizowane, IDKlienta, IDMagazyn, IDOpcji) values (3, '2018-12-05 20:30:26', 10, 1, 2, 3, 6);
INSERT INTO Zamówienia (Czas_oczekiwania, Data_zamówienia, Priorytet, Sfinalizowane, IDKlienta, IDMagazyn, IDOpcji) values (7, '2018-12-18 20:12:51', 5, 0, 7, 6, 8);
INSERT INTO Zamówienia (Czas_oczekiwania, Data_zamówienia, Priorytet, Sfinalizowane, IDKlienta, IDMagazyn, IDOpcji) values (2, '2018-12-11 14:45:30', 8, 1, 9, 12, 25);
INSERT INTO Zamówienia (Czas_oczekiwania, Data_zamówienia, Priorytet, Sfinalizowane, IDKlienta, IDMagazyn, IDOpcji) values (7, '2018-12-06 22:53:59', 1, 1, 10, 3, 24);
INSERT INTO Zamówienia (Czas_oczekiwania, Data_zamówienia, Priorytet, Sfinalizowane, IDKlienta, IDMagazyn, IDOpcji) values (6, '2018-12-15 19:02:07', 1, 0, 5, 8, 17);
INSERT INTO Zamówienia (Czas_oczekiwania, Data_zamówienia, Priorytet, Sfinalizowane, IDKlienta, IDMagazyn, IDOpcji) values (4, '2018-12-01 23:32:48', 6, 1, 11, 7, 4);




INSERT INTO Zamówione_towary (Liczba, IDOferty, IDZamówienie) values (516, 12, 12);
INSERT INTO Zamówione_towary (Liczba, IDOferty, IDZamówienie) values (938, 11, 2);
INSERT INTO Zamówione_towary (Liczba, IDOferty, IDZamówienie) values (467, 5, 4);
INSERT INTO Zamówione_towary (Liczba, IDOferty, IDZamówienie) values (89, 8, 10);
INSERT INTO Zamówione_towary (Liczba, IDOferty, IDZamówienie) values (624, 6, 12);
INSERT INTO Zamówione_towary (Liczba, IDOferty, IDZamówienie) values (278, 18, 6);
INSERT INTO Zamówione_towary (Liczba, IDOferty, IDZamówienie) values (831, 2, 9);
INSERT INTO Zamówione_towary (Liczba, IDOferty, IDZamówienie) values (292, 9, 2);
INSERT INTO Zamówione_towary (Liczba, IDOferty, IDZamówienie) values (511, 16, 9);
INSERT INTO Zamówione_towary (Liczba, IDOferty, IDZamówienie) values (128, 13, 3);
INSERT INTO Zamówione_towary (Liczba, IDOferty, IDZamówienie) values (915, 5, 8);
INSERT INTO Zamówione_towary (Liczba, IDOferty, IDZamówienie) values (433, 14, 9);
INSERT INTO Zamówione_towary (Liczba, IDOferty, IDZamówienie) values (210, 12, 8);
INSERT INTO Zamówione_towary (Liczba, IDOferty, IDZamówienie) values (387, 5, 2);
INSERT INTO Zamówione_towary (Liczba, IDOferty, IDZamówienie) values (505, 7, 6);
INSERT INTO Zamówione_towary (Liczba, IDOferty, IDZamówienie) values (595, 14, 7);
INSERT INTO Zamówione_towary (Liczba, IDOferty, IDZamówienie) values (630, 8, 2);
INSERT INTO Zamówione_towary (Liczba, IDOferty, IDZamówienie) values (611, 1, 5);
INSERT INTO Zamówione_towary (Liczba, IDOferty, IDZamówienie) values (322, 10, 10);
INSERT INTO Zamówione_towary (Liczba, IDOferty, IDZamówienie) values (460, 6, 2);
INSERT INTO Zamówione_towary (Liczba, IDOferty, IDZamówienie) values (153, 13, 1);
INSERT INTO Zamówione_towary (Liczba, IDOferty, IDZamówienie) values (607, 11, 12);
INSERT INTO Zamówione_towary (Liczba, IDOferty, IDZamówienie) values (134, 12, 9);
INSERT INTO Zamówione_towary (Liczba, IDOferty, IDZamówienie) values (404, 17, 6);
INSERT INTO Zamówione_towary (Liczba, IDOferty, IDZamówienie) values (299, 12, 10);
INSERT INTO Zamówione_towary (Liczba, IDOferty, IDZamówienie) values (993, 4, 8);
INSERT INTO Zamówione_towary (Liczba, IDOferty, IDZamówienie) values (777, 6, 10);
INSERT INTO Zamówione_towary (Liczba, IDOferty, IDZamówienie) values (337, 13, 3);
INSERT INTO Zamówione_towary (Liczba, IDOferty, IDZamówienie) values (667, 17, 7);
INSERT INTO Zamówione_towary (Liczba, IDOferty, IDZamówienie) values (765, 5, 7);
INSERT INTO Zamówione_towary (Liczba, IDOferty, IDZamówienie) values (29, 4, 1);
INSERT INTO Zamówione_towary (Liczba, IDOferty, IDZamówienie) values (901, 7, 11);
INSERT INTO Zamówione_towary (Liczba, IDOferty, IDZamówienie) values (444, 6, 13);
INSERT INTO Zamówione_towary (Liczba, IDOferty, IDZamówienie) values (40, 2, 2);
INSERT INTO Zamówione_towary (Liczba, IDOferty, IDZamówienie) values (567, 5, 9);
INSERT INTO Zamówione_towary (Liczba, IDOferty, IDZamówienie) values (184, 9, 13);
INSERT INTO Zamówione_towary (Liczba, IDOferty, IDZamówienie) values (881, 9, 1);
INSERT INTO Zamówione_towary (Liczba, IDOferty, IDZamówienie) values (355, 3, 9);
INSERT INTO Zamówione_towary (Liczba, IDOferty, IDZamówienie) values (808, 7, 11);
INSERT INTO Zamówione_towary (Liczba, IDOferty, IDZamówienie) values (378, 1, 2);




INSERT INTO Dostawy (Data_dostawy, Data_wysy³ki, IDKuriera, IDKlienta, IDZamówienie) values ('2018-12-25 19:28:32', '2018-12-21 23:57:30', 3, 10, 1);
INSERT INTO Dostawy (Data_dostawy, Data_wysy³ki, IDKuriera, IDKlienta, IDZamówienie) values ('2018-12-28 02:20:54', '2018-12-23 09:30:14', 7, 9, 2);
INSERT INTO Dostawy (Data_dostawy, Data_wysy³ki, IDKuriera, IDKlienta, IDZamówienie) values ('2018-12-24 10:37:27', '2018-12-23 20:19:56', 4, 5, 3);
INSERT INTO Dostawy (Data_dostawy, Data_wysy³ki, IDKuriera, IDKlienta, IDZamówienie) values ('2018-12-24 13:44:38', '2018-12-24 13:06:07', 6, 1, 4);
INSERT INTO Dostawy (Data_dostawy, Data_wysy³ki, IDKuriera, IDKlienta, IDZamówienie) values ('2018-12-29 01:09:21', '2018-12-25 02:32:47', 4, 10, 5);
INSERT INTO Dostawy (Data_dostawy, Data_wysy³ki, IDKuriera, IDKlienta, IDZamówienie) values ('2018-12-29 07:00:18', '2018-12-24 00:01:42', 3, 6, 6);
INSERT INTO Dostawy (Data_dostawy, Data_wysy³ki, IDKuriera, IDKlienta, IDZamówienie) values ('2018-12-28 10:54:06', '2018-12-26 18:51:47', 2, 11, 7);
INSERT INTO Dostawy (Data_dostawy, Data_wysy³ki, IDKuriera, IDKlienta, IDZamówienie) values ('2018-12-23 22:21:15', '2018-12-23 10:14:26', 2, 2, 8);
INSERT INTO Dostawy (Data_dostawy, Data_wysy³ki, IDKuriera, IDKlienta, IDZamówienie) values ('2018-12-25 16:01:10', '2018-12-21 08:33:35', 2, 7, 9);
INSERT INTO Dostawy (Data_dostawy, Data_wysy³ki, IDKuriera, IDKlienta, IDZamówienie) values ('2018-12-28 07:18:23', '2018-12-24 09:19:39', 10, 9, 10);
INSERT INTO Dostawy (Data_dostawy, Data_wysy³ki, IDKuriera, IDKlienta, IDZamówienie) values ('2018-12-24 13:02:18', '2018-12-26 10:06:33', 10, 10, 11);
INSERT INTO Dostawy (Data_dostawy, Data_wysy³ki, IDKuriera, IDKlienta, IDZamówienie) values ('2018-12-23 22:51:26', '2018-12-23 00:11:27', 6, 5, 12);
INSERT INTO Dostawy (Data_dostawy, Data_wysy³ki, IDKuriera, IDKlienta, IDZamówienie) values ('2018-12-23 19:50:49', '2018-12-21 22:08:55', 1, 11, 13);




INSERT INTO Skompletowane_towary (Liczba, IDDostawy, IDStanu, IDZamówionego) values (153, 1, 16, 21);
INSERT INTO Skompletowane_towary (Liczba, IDDostawy, IDStanu, IDZamówionego) values (145, 2, 48, 2);
INSERT INTO Skompletowane_towary (Liczba, IDDostawy, IDStanu, IDZamówionego) values (292, 2, 47, 8);
INSERT INTO Skompletowane_towary (Liczba, IDDostawy, IDStanu, IDZamówionego) values (41, 3, 26, 10);
INSERT INTO Skompletowane_towary (Liczba, IDDostawy, IDStanu, IDZamówionego) values (337, 3, 26, 28);
INSERT INTO Skompletowane_towary (Liczba, IDDostawy, IDStanu, IDZamówionego) values (505, 6, 23, 15);
INSERT INTO Skompletowane_towary (Liczba, IDDostawy, IDStanu, IDZamówionego) values (134, 9, 17, 23);
INSERT INTO Skompletowane_towary (Liczba, IDDostawy, IDStanu, IDZamówionego) values (89, 10, 35, 4);
INSERT INTO Skompletowane_towary (Liczba, IDDostawy, IDStanu, IDZamówionego) values (322, 10, 37, 19);
INSERT INTO Skompletowane_towary (Liczba, IDDostawy, IDStanu, IDZamówionego) values (787, 11, 7, 32);
INSERT INTO Skompletowane_towary (Liczba, IDDostawy, IDStanu, IDZamówionego) values (808, 11, 7, 39);
INSERT INTO Skompletowane_towary (Liczba, IDDostawy, IDStanu, IDZamówionego) values (337, 12, 22, 5);
INSERT INTO Skompletowane_towary (Liczba, IDDostawy, IDStanu, IDZamówionego) values (104, 13, 20, 36);




INSERT INTO Zwroty (Data_zwrotu, IDKlienta, IDMagazyn, IDZamówienie) values ('2019-01-13 17:13:38', 5, 9, 3);
INSERT INTO Zwroty (Data_zwrotu, IDKlienta, IDMagazyn, IDZamówienie) values ('2019-02-16 13:55:55', 5, 8, 12);
INSERT INTO Zwroty (Data_zwrotu, IDKlienta, IDMagazyn, IDZamówienie) values ('2019-01-23 03:55:37', 6, 8, 6);
INSERT INTO Zwroty (Data_zwrotu, IDKlienta, IDMagazyn, IDZamówienie) values ('2019-02-16 21:24:43', 7, 6, 9);
INSERT INTO Zwroty (Data_zwrotu, IDKlienta, IDMagazyn, IDZamówienie) values ('2019-01-03 06:11:37', 9, 12, 10);
INSERT INTO Zwroty (Data_zwrotu, IDKlienta, IDMagazyn, IDZamówienie) values ('2019-01-26 18:00:52', 9, 15, 2);
INSERT INTO Zwroty (Data_zwrotu, IDKlienta, IDMagazyn, IDZamówienie) values ('2019-02-12 20:31:23', 10, 6, 1);
INSERT INTO Zwroty (Data_zwrotu, IDKlienta, IDMagazyn, IDZamówienie) values ('2019-02-05 21:16:35', 10, 3, 11);
INSERT INTO Zwroty (Data_zwrotu, IDKlienta, IDMagazyn, IDZamówienie) values ('2019-02-17 18:27:56', 11, 7, 13);



INSERT INTO Zwrócone_towary (Liczba, IDZwrotu, IDKompletu) values (14, 1, 4);
INSERT INTO Zwrócone_towary (Liczba, IDZwrotu, IDKompletu) values (26, 2, 12);
INSERT INTO Zwrócone_towary (Liczba, IDZwrotu, IDKompletu) values (8, 3, 6);
INSERT INTO Zwrócone_towary (Liczba, IDZwrotu, IDKompletu) values (10, 4, 7);
INSERT INTO Zwrócone_towary (Liczba, IDZwrotu, IDKompletu) values (6, 5, 8);
INSERT INTO Zwrócone_towary (Liczba, IDZwrotu, IDKompletu) values (12, 5, 9);
INSERT INTO Zwrócone_towary (Liczba, IDZwrotu, IDKompletu) values (3, 6, 2);
INSERT INTO Zwrócone_towary (Liczba, IDZwrotu, IDKompletu) values (26, 7, 1);
INSERT INTO Zwrócone_towary (Liczba, IDZwrotu, IDKompletu) values (19, 8, 10);
INSERT INTO Zwrócone_towary (Liczba, IDZwrotu, IDKompletu) values (16, 8, 11);
INSERT INTO Zwrócone_towary (Liczba, IDZwrotu, IDKompletu) values (14, 9, 13);