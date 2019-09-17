/* Widok zawieraj¹cy klientów z Polski */
CREATE VIEW Klienci_w_Polsce
	(IDKlienta, Imie, Nazwisko, Kod_pocztowy, Miasto, Adres, Login_klienta, Email)
	AS SELECT IDKlienta, Imie, Nazwisko, Kod_pocztowy, M.Nazwa, Adres, Login_klienta, Email
		FROM Klienci K, Miasta M, Kraje Kr
		WHERE K.IDMiasta = M.IDMiasta AND
			  M.IDKraju = Kr.IDKraju AND
			  Kr.Nazwa = 'Polska';