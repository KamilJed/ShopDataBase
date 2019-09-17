--SELECT Kraje.Nazwa AS 'Pañstwo', Miasta.Nazwa AS 'Miasto', Magazyny.Adres, Magazyny.Kod_pocztowy FROM Kraje, Miasta, Magazyny WHERE 
--Kraje.IDKraju = Miasta.IDKraju AND Magazyny.IDMiasta = Miasta.IDMiasta;

--SELECT * FROM Kraje;
--SELECT * FROM Miasta;
--SELECT * FROM Magazyny;

--SELECT * FROM Towary;

--SELECT * FROM Firmy_kurierskie;

--SELECT * FROM Opcje_dostaw;

--SELECT * FROM Zamówienia;

--SELECT * FROM Kurierzy_w_kraju ORDER BY IDKraju

--SELECT F.Nazwa, K.Nazwa FROM Firmy_kurierskie F, Kraje K, Kurierzy_w_kraju KR WHERE F.IDKuriera = KR.IDKuriera AND K.IDKraju = KR.IDKraju

--SELECT M.Adres, T.Nazwa, S.Liczba FROM Magazyny M, Towary T, Stany_towarów S WHERE M.IDMagazyn = S.IDMagazyn AND T.IDTowar = S.IDTowar;

--SELECT * FROM Oferty;

--SELECT * FROM Zamówione_towary;

--SELECT IDOferty, Nazwa, Cena FROM Towary T, Oferty O WHERE T.IDTowar = O.IDTowar; 

--SELECT O.Cena, K.Nazwa FROM Oferty O, Kraje K, Oferty_w_kraju OA WHERE O.IDOferty = OA.IDOferty AND K.IDKraju = OA.IDKraju

--SELECT F.Nazwa, O.Nazwa, Cena, Waga_max FROM Firmy_kurierskie F, Opcje_dostaw O WHERE O.IDKuriera = F.IDKuriera;

--SELECT * FROM Klienci;

--SELECT Imie, Nazwisko, Data_zamówienia FROM Zamówienia Z, Klienci K WHERE Z.IDKlienta = K.IDKlienta;

--SELECT * FROM Zamówienia;

--SELECT OD.IDKuriera, K.IDKlienta, Z.IDZamówienie, Z.IDMagazyn, T.IDTowar FROM Oferty O, Towary T, Zamówione_towary ZT, Klienci K, Zamówienia Z, Opcje_dostaw OD WHERE O.IDOferty = ZT.IDOferty AND 
--O.IDTowar = T.IDTowar AND 
--ZT.IDZamówienie = Z.IDZamówienie AND 
--Z.IDKlienta = K.IDKlienta AND
--Z.IDOpcji = OD.IDOpcji
--ORDER BY Z.IDZamówienie;

--SELECT Z.IDZamówienie, D.IDDostawy, S.IDStanu, ZT.IDZamówionegoTowaru, O.IDOferty FROM Dostawy D, Zamówienia Z, Zamówione_towary ZT, Oferty O, Towary T, Stany_towarów S
--WHERE
--D.IDZamówienie = Z.IDZamówienie AND
--Z.IDZamówienie = ZT.IDZamówienie AND
--ZT.IDOferty = O.IDOferty AND
--O.IDTowar = T.IDTowar AND
--S.IDTowar = T.IDTowar AND
--Z.IDMagazyn = S.IDMagazyn
--ORDER BY Z.IDZamówienie;

--SELECT S.IDKompletu, Z.Liczba AS Zamówione, S.Liczba AS Skompletowane FROM Zamówione_towary Z, Skompletowane_towary S WHERE IDZamówionegoTowaru = IDZamówionego;

--SELECT DISTINCT Z.IDKlienta, Z.IDMagazyn ,Z.IDZamówienie  FROM Dostawy D, Zamówienia Z, Zamówione_towary ZT, Oferty O, Towary T, Stany_towarów S
--WHERE
--D.IDZamówienie = Z.IDZamówienie AND
--Z.IDZamówienie = ZT.IDZamówienie AND
--ZT.IDOferty = O.IDOferty AND
--O.IDTowar = T.IDTowar AND
--S.IDTowar = T.IDTowar AND
--Z.IDMagazyn = S.IDMagazyn
--ORDER BY Z.IDKlienta;

--SELECT * FROM Skompletowane_towary S, Zamówione_towary Z WHERE S.IDZamówionego = IDZamówionegoTowaru;
--SELECT * FROM Zwroty;

DELETE FROM Towary WHERE IDTowar = 1;
DELETE FROM Firmy_Kurierskie WHERE IDKuriera = 1;
DELETE FROM Klienci WHERE IDKlienta = 1;