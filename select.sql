/* Stany poszczególnych magazynów */
SELECT M.IDMagazyn,  T.Nazwa AS "Nazwa towaru", S.Liczba AS "Na magazynie" 
	FROM Magazyny M, Stany_towarów S, Towary T
	WHERE M.IDMagazyn = S.IDMagazyn AND
	      S.IDTowar = T.IDTowar
	ORDER BY M.IDMagazyn, T.Nazwa;


/* Liczba zamówieñ poszczególnych klientów */
SELECT Imie, Nazwisko, Login_klienta, COUNT(*) AS "Liczba zamówieñ"
	FROM Klienci K JOIN Zamówienia Z 
		ON Z.IDKlienta = K.IDKlienta
	GROUP BY Imie, Nazwisko, Login_klienta
	ORDER BY "Liczba zamówieñ" DESC;


/* Najlepiej sprzedaj¹cy siê towar */
SELECT TOP 1
	T.Nazwa, SUM(ZT.Liczba) AS "Liczba zamówionych"
	FROM Towary T, Oferty O, Zamówione_towary ZT
	WHERE ZT.IDOferty = O.IDOferty AND
	      O.IDTowar = T.IDTowar
	GROUP BY T.Nazwa
	ORDER BY "Liczba zamówionych" DESC;


/* Informacje o zamówieniach klientów z Polski */
SELECT K.*, Z.Data_zamówienia, 
							  CASE Z.Sfinalizowane
								   WHEN 0 THEN 'W trakcie realizacji'
								   WHEN 1 THEN 'Zamówienie sfinalizowane'
								   ELSE 'B³¹d'
								   END AS 'Stan zamówienia'
	FROM Klienci_w_Polsce K JOIN Zamówienia_w_Polsce Z
		ON K.IDKlienta = Z.IDKlienta;



/* Jaki procent wszystkich zamówionych towarów stanowi najs³abiej sprzedaj¹cy siê towar */
SELECT TOP 1 
	CAST(CAST(SUM(Liczba) AS float(1))/CAST((SELECT SUM(Liczba) FROM Zamówione_towary) AS float(1)) * 100 AS varchar(7)) + '%' AS "Procent zamówionych"
	FROM Towary T, Oferty O, Zamówione_towary ZT
	WHERE ZT.IDOferty = O.IDOferty AND
	      O.IDTowar = T.IDTowar
	GROUP BY T.Nazwa
	ORDER BY SUM(Liczba) ASC;


/* Suma dochodu z zamówieñ z poszczególnych krajów */
SELECT sub.Kraj, SUM(sub.Dochod) AS "Dochód z kraju"
	FROM (SELECT Kr.Nazwa AS "Kraj", T.Nazwa, SUM(Za.Liczba * O.Cena) AS "Dochod"
			FROM Zamówione_towary Za, Oferty O, Zamówienia Z, Klienci K, Miasta M, Kraje Kr, Towary T
			WHERE  Z.IDKlienta = K.IDKlienta AND
				   K.IDMiasta = M.IDMiasta AND
				   M.IDKraju = Kr.IDKraju AND
				   Za.IDZamówienie = Z.IDZamówienie AND
				   Za.IDOferty = O.IDOferty AND
				   T.IDTowar = O.IDTowar
			GROUP BY Kr.Nazwa, T.Nazwa) sub
	GROUP BY sub.Kraj


/* Jaki procent zamówionych towarów zosta³ zwrócony */
SELECT [Nazwa zwróconego], CAST((CAST([Suma zwróconych] AS float(1))/CAST([Suma towarów] AS float(1))) * 100 AS varchar(7)) + '%' AS "Procent zwróconych"
	FROM (SELECT T.Nazwa AS "Nazwa zwróconego", SUM(Zw.Liczba) AS "Suma zwróconych"
			FROM Zwrócone_towary Zw, Skompletowane_towary ST, Zamówione_towary Za, Oferty O, Towary T
			WHERE Zw.IDKompletu = ST.IDKompletu AND
				  ST.IDZamówionego = Za.IDZamówionegoTowaru AND
				  Za.IDOferty = O.IDOferty AND
				  O.IDTowar = T.IDTowar
			GROUP BY T.Nazwa) sub1,
		  (SELECT T.Nazwa AS "Nazwa zamówionego", SUM(Za.Liczba) AS "Suma towarów"
			FROM Zamówione_towary Za, Oferty O, Towary T
			WHERE Za.IDOferty = O.IDOferty AND
				  O.IDTowar = T.IDTowar
			GROUP BY T.Nazwa) sub2
	WHERE [Nazwa zwróconego] = [Nazwa zamówionego]
	ORDER BY (CAST([Suma zwróconych] AS float(1))/CAST([Suma towarów] AS float(1)));

