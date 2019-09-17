--SELECT Kraje.Nazwa AS 'Pa�stwo', Miasta.Nazwa AS 'Miasto', Magazyny.Adres, Magazyny.Kod_pocztowy FROM Kraje, Miasta, Magazyny WHERE 
--Kraje.IDKraju = Miasta.IDKraju AND Magazyny.IDMiasta = Miasta.IDMiasta;

--SELECT * FROM Kraje;
--SELECT * FROM Miasta;
--SELECT * FROM Magazyny;

--SELECT * FROM Towary;

--SELECT * FROM Firmy_kurierskie;

--SELECT * FROM Opcje_dostaw;

--SELECT * FROM Zam�wienia;

--SELECT * FROM Kurierzy_w_kraju ORDER BY IDKraju

--SELECT F.Nazwa, K.Nazwa FROM Firmy_kurierskie F, Kraje K, Kurierzy_w_kraju KR WHERE F.IDKuriera = KR.IDKuriera AND K.IDKraju = KR.IDKraju

--SELECT M.Adres, T.Nazwa, S.Liczba FROM Magazyny M, Towary T, Stany_towar�w S WHERE M.IDMagazyn = S.IDMagazyn AND T.IDTowar = S.IDTowar;

--SELECT * FROM Oferty;

--SELECT * FROM Zam�wione_towary;

--SELECT IDOferty, Nazwa, Cena FROM Towary T, Oferty O WHERE T.IDTowar = O.IDTowar; 

--SELECT O.Cena, K.Nazwa FROM Oferty O, Kraje K, Oferty_w_kraju OA WHERE O.IDOferty = OA.IDOferty AND K.IDKraju = OA.IDKraju

--SELECT F.Nazwa, O.Nazwa, Cena, Waga_max FROM Firmy_kurierskie F, Opcje_dostaw O WHERE O.IDKuriera = F.IDKuriera;

--SELECT * FROM Klienci;

--SELECT Imie, Nazwisko, Data_zam�wienia FROM Zam�wienia Z, Klienci K WHERE Z.IDKlienta = K.IDKlienta;

--SELECT * FROM Zam�wienia;

--SELECT OD.IDKuriera, K.IDKlienta, Z.IDZam�wienie, Z.IDMagazyn, T.IDTowar FROM Oferty O, Towary T, Zam�wione_towary ZT, Klienci K, Zam�wienia Z, Opcje_dostaw OD WHERE O.IDOferty = ZT.IDOferty AND 
--O.IDTowar = T.IDTowar AND 
--ZT.IDZam�wienie = Z.IDZam�wienie AND 
--Z.IDKlienta = K.IDKlienta AND
--Z.IDOpcji = OD.IDOpcji
--ORDER BY Z.IDZam�wienie;

--SELECT Z.IDZam�wienie, D.IDDostawy, S.IDStanu, ZT.IDZam�wionegoTowaru, O.IDOferty FROM Dostawy D, Zam�wienia Z, Zam�wione_towary ZT, Oferty O, Towary T, Stany_towar�w S
--WHERE
--D.IDZam�wienie = Z.IDZam�wienie AND
--Z.IDZam�wienie = ZT.IDZam�wienie AND
--ZT.IDOferty = O.IDOferty AND
--O.IDTowar = T.IDTowar AND
--S.IDTowar = T.IDTowar AND
--Z.IDMagazyn = S.IDMagazyn
--ORDER BY Z.IDZam�wienie;

--SELECT S.IDKompletu, Z.Liczba AS Zam�wione, S.Liczba AS Skompletowane FROM Zam�wione_towary Z, Skompletowane_towary S WHERE IDZam�wionegoTowaru = IDZam�wionego;

--SELECT DISTINCT Z.IDKlienta, Z.IDMagazyn ,Z.IDZam�wienie  FROM Dostawy D, Zam�wienia Z, Zam�wione_towary ZT, Oferty O, Towary T, Stany_towar�w S
--WHERE
--D.IDZam�wienie = Z.IDZam�wienie AND
--Z.IDZam�wienie = ZT.IDZam�wienie AND
--ZT.IDOferty = O.IDOferty AND
--O.IDTowar = T.IDTowar AND
--S.IDTowar = T.IDTowar AND
--Z.IDMagazyn = S.IDMagazyn
--ORDER BY Z.IDKlienta;

--SELECT * FROM Skompletowane_towary S, Zam�wione_towary Z WHERE S.IDZam�wionego = IDZam�wionegoTowaru;
--SELECT * FROM Zwroty;

DELETE FROM Towary WHERE IDTowar = 1;
DELETE FROM Firmy_Kurierskie WHERE IDKuriera = 1;
DELETE FROM Klienci WHERE IDKlienta = 1;