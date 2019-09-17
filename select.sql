/* Stany poszczeg�lnych magazyn�w */
SELECT M.IDMagazyn,  T.Nazwa AS "Nazwa towaru", S.Liczba AS "Na magazynie" 
	FROM Magazyny M, Stany_towar�w S, Towary T
	WHERE M.IDMagazyn = S.IDMagazyn AND
	      S.IDTowar = T.IDTowar
	ORDER BY M.IDMagazyn, T.Nazwa;


/* Liczba zam�wie� poszczeg�lnych klient�w */
SELECT Imie, Nazwisko, Login_klienta, COUNT(*) AS "Liczba zam�wie�"
	FROM Klienci K JOIN Zam�wienia Z 
		ON Z.IDKlienta = K.IDKlienta
	GROUP BY Imie, Nazwisko, Login_klienta
	ORDER BY "Liczba zam�wie�" DESC;


/* Najlepiej sprzedaj�cy si� towar */
SELECT TOP 1
	T.Nazwa, SUM(ZT.Liczba) AS "Liczba zam�wionych"
	FROM Towary T, Oferty O, Zam�wione_towary ZT
	WHERE ZT.IDOferty = O.IDOferty AND
	      O.IDTowar = T.IDTowar
	GROUP BY T.Nazwa
	ORDER BY "Liczba zam�wionych" DESC;


/* Informacje o zam�wieniach klient�w z Polski */
SELECT K.*, Z.Data_zam�wienia, 
							  CASE Z.Sfinalizowane
								   WHEN 0 THEN 'W trakcie realizacji'
								   WHEN 1 THEN 'Zam�wienie sfinalizowane'
								   ELSE 'B��d'
								   END AS 'Stan zam�wienia'
	FROM Klienci_w_Polsce K JOIN Zam�wienia_w_Polsce Z
		ON K.IDKlienta = Z.IDKlienta;



/* Jaki procent wszystkich zam�wionych towar�w stanowi najs�abiej sprzedaj�cy si� towar */
SELECT TOP 1 
	CAST(CAST(SUM(Liczba) AS float(1))/CAST((SELECT SUM(Liczba) FROM Zam�wione_towary) AS float(1)) * 100 AS varchar(7)) + '%' AS "Procent zam�wionych"
	FROM Towary T, Oferty O, Zam�wione_towary ZT
	WHERE ZT.IDOferty = O.IDOferty AND
	      O.IDTowar = T.IDTowar
	GROUP BY T.Nazwa
	ORDER BY SUM(Liczba) ASC;


/* Suma dochodu z zam�wie� z poszczeg�lnych kraj�w */
SELECT sub.Kraj, SUM(sub.Dochod) AS "Doch�d z kraju"
	FROM (SELECT Kr.Nazwa AS "Kraj", T.Nazwa, SUM(Za.Liczba * O.Cena) AS "Dochod"
			FROM Zam�wione_towary Za, Oferty O, Zam�wienia Z, Klienci K, Miasta M, Kraje Kr, Towary T
			WHERE  Z.IDKlienta = K.IDKlienta AND
				   K.IDMiasta = M.IDMiasta AND
				   M.IDKraju = Kr.IDKraju AND
				   Za.IDZam�wienie = Z.IDZam�wienie AND
				   Za.IDOferty = O.IDOferty AND
				   T.IDTowar = O.IDTowar
			GROUP BY Kr.Nazwa, T.Nazwa) sub
	GROUP BY sub.Kraj


/* Jaki procent zam�wionych towar�w zosta� zwr�cony */
SELECT [Nazwa zwr�conego], CAST((CAST([Suma zwr�conych] AS float(1))/CAST([Suma towar�w] AS float(1))) * 100 AS varchar(7)) + '%' AS "Procent zwr�conych"
	FROM (SELECT T.Nazwa AS "Nazwa zwr�conego", SUM(Zw.Liczba) AS "Suma zwr�conych"
			FROM Zwr�cone_towary Zw, Skompletowane_towary ST, Zam�wione_towary Za, Oferty O, Towary T
			WHERE Zw.IDKompletu = ST.IDKompletu AND
				  ST.IDZam�wionego = Za.IDZam�wionegoTowaru AND
				  Za.IDOferty = O.IDOferty AND
				  O.IDTowar = T.IDTowar
			GROUP BY T.Nazwa) sub1,
		  (SELECT T.Nazwa AS "Nazwa zam�wionego", SUM(Za.Liczba) AS "Suma towar�w"
			FROM Zam�wione_towary Za, Oferty O, Towary T
			WHERE Za.IDOferty = O.IDOferty AND
				  O.IDTowar = T.IDTowar
			GROUP BY T.Nazwa) sub2
	WHERE [Nazwa zwr�conego] = [Nazwa zam�wionego]
	ORDER BY (CAST([Suma zwr�conych] AS float(1))/CAST([Suma towar�w] AS float(1)));

