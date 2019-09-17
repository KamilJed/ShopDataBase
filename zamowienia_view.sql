/* Widok zawieraj¹cy informacje o zamówieniach z Polski */
CREATE VIEW Zamówienia_w_Polsce
	(IDZamówienie, Czas_oczekiwania, Data_zamówienia, Priorytet, Sfinalizowane, IDKlienta, IDMagazyn, IDOpcji)
	AS SELECT IDZamówienie, Czas_oczekiwania, Data_zamówienia, Priorytet, Sfinalizowane, IDKlienta, M.IDMagazyn, IDOpcji
		FROM Zamówienia Z, Magazyny M, Kraje K
		WHERE Z.IDMagazyn = M.IDMagazyn AND
			  M.IDKraju = K.IDKraju AND
			  K.Nazwa = 'Polska';