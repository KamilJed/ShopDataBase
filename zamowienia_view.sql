/* Widok zawieraj�cy informacje o zam�wieniach z Polski */
CREATE VIEW Zam�wienia_w_Polsce
	(IDZam�wienie, Czas_oczekiwania, Data_zam�wienia, Priorytet, Sfinalizowane, IDKlienta, IDMagazyn, IDOpcji)
	AS SELECT IDZam�wienie, Czas_oczekiwania, Data_zam�wienia, Priorytet, Sfinalizowane, IDKlienta, M.IDMagazyn, IDOpcji
		FROM Zam�wienia Z, Magazyny M, Kraje K
		WHERE Z.IDMagazyn = M.IDMagazyn AND
			  M.IDKraju = K.IDKraju AND
			  K.Nazwa = 'Polska';