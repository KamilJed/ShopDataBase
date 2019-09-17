CREATE TABLE Kraje(
	IDKraju INT PRIMARY KEY IDENTITY(1,1),
	Nazwa NVARCHAR(30) UNIQUE,
	Waluta NVARCHAR(20) NOT NULL,
	Jêzyk NVARCHAR(15) NOT NULL
);

CREATE TABLE Miasta(
	IDMiasta INT PRIMARY KEY IDENTITY(1,1),
	Nazwa NVARCHAR(30) NOT NULL,
	Ludnoœæ BIGINT NOT NULL,
	IDKraju INT REFERENCES Kraje ON DELETE CASCADE
);

CREATE TABLE Magazyny(
	IDMagazyn INT PRIMARY KEY IDENTITY(1,1),
	Adres NVARCHAR(75) NOT NULL,
	CzyPrzepe³niony BIT DEFAULT 0 NOT NULL,
	Rozmiar INT NOT NULL,
	Kod_pocztowy NVARCHAR(10) NOT NULL,
	IDKraju INT REFERENCES Kraje,
	IDMiasta INT REFERENCES Miasta,
	CONSTRAINT ogranicz_rozmiar_magazynu CHECK
	(Rozmiar >= 10000 AND Rozmiar <= 1000000)
	); 

CREATE TABLE Towary(
	IDTowar INT PRIMARY KEY IDENTITY(1,1),
	Nazwa NVARCHAR(50) NOT NULL UNIQUE,
	Waga FLOAT(12) NOT NULL,
	Wymiary NVARCHAR(11) NOT NULL,
	CONSTRAINT ogranicz_wage_towaru CHECK
	(Waga >= 0.01 AND Waga <= 100)
);

CREATE INDEX Nazwa_towaru ON Towary(Nazwa);

CREATE TABLE Stany_towarów(
	IDStanu INT PRIMARY KEY IDENTITY(1,1),
	Liczba INT NOT NULL,
	IDTowar INT REFERENCES Towary ON DELETE CASCADE ON UPDATE CASCADE,
	IDMagazyn INT REFERENCES Magazyny ON DELETE CASCADE ON UPDATE CASCADE,
	CONSTRAINT ogranicz_liczbe_towaru CHECK
	(Liczba >= 1 AND Liczba <= 100000),
	CONSTRAINT unikalny_stan UNIQUE(IDTowar, IDMagazyn)
);

CREATE TABLE Klienci(
	IDKlienta INT PRIMARY KEY IDENTITY(1,1),
	Imie NVARCHAR(20) NOT NULL,
	Nazwisko NVARCHAR(30) NOT NULL,
	Kod_pocztowy NVARCHAR(10) NOT NULL,
	Adres NVARCHAR(75) NOT NULL,
	Login_klienta NVARCHAR(20) UNIQUE NOT NULL,
	Has³o BINARY(64) NOT NULL,
	Email NVARCHAR(50) UNIQUE NOT NULL,
	IDMiasta INT REFERENCES Miasta
);

CREATE TABLE Firmy_Kurierskie(
	IDKuriera INT PRIMARY KEY IDENTITY(1,1),
	Nazwa NVARCHAR(30) UNIQUE NOT NULL,
	Numer_kontaktowy NVARCHAR(25) UNIQUE NOT NULL
);

CREATE TABLE Opcje_dostaw(
	IDOpcji INT PRIMARY KEY IDENTITY(1,1),
	Nazwa NVARCHAR(30) NOT NULL,
	Cena MONEY NOT NULL,
	Waga_max FLOAT(12) NOT NULL,
	IDKuriera INT REFERENCES Firmy_kurierskie ON DELETE CASCADE ON UPDATE CASCADE,
	CONSTRAINT ogranicz_cene_dostawy CHECK
	(Cena >= 0 AND Cena < 5000),						--opcja darmowej wysy³ki
	CONSTRAINT ogranicz_maksymaln¹_wagê CHECK
	(Waga_max > 0 AND Waga_max < 1000)
);

CREATE INDEX Nazwa_dostawy ON Opcje_dostaw(Nazwa);

CREATE TABLE Zamówienia(
	IDZamówienie INT PRIMARY KEY IDENTITY(1,1),
	Czas_oczekiwania TINYINT NOT NULL,
	Data_zamówienia SMALLDATETIME NOT NULL,
	Priorytet TINYINT NOT NULL,
	Sfinalizowane BIT DEFAULT 0 NOT NULL,
	IDKlienta INT REFERENCES Klienci ON DELETE CASCADE ON UPDATE CASCADE,
	IDMagazyn INT REFERENCES Magazyny,
	IDOpcji INT REFERENCES Opcje_dostaw ON DELETE SET NULL ON UPDATE CASCADE,
	CONSTRAINT ogranicz_czas_oczekiwania CHECK
	(Czas_oczekiwania >= 1 AND Czas_oczekiwania <= 7),
	CONSTRAINT ogranicz_priorytet CHECK
	(Priorytet >= 1 AND Priorytet <= 10)
);

CREATE TABLE Oferty(
	IDOferty INT PRIMARY KEY IDENTITY(1,1),
	Cena MONEY NOT NULL,
	Czy_aktualna BIT DEFAULT 1 NOT NULL,
	IDTowar INT REFERENCES Towary ON DELETE CASCADE ON UPDATE CASCADE,
	CONSTRAINT ogranicz_cene_oferty CHECK
	(Cena >= 0 AND Cena <= 100000)						--rozdawanie towaru za darmo w ramach promocji
);

CREATE TABLE Zamówione_towary(
	IDZamówionegoTowaru INT PRIMARY KEY IDENTITY(1,1),
	Liczba SMALLINT NOT NULL,
	IDOferty INT REFERENCES Oferty ON DELETE CASCADE ON UPDATE CASCADE,
	IDZamówienie INT REFERENCES Zamówienia ON DELETE CASCADE ON UPDATE CASCADE,
	CONSTRAINT ogranicz_liczbe_zamówionych CHECK
	(Liczba >= 1 AND Liczba <= 1000)
);

CREATE TABLE Dostawy(
	IDDostawy INT PRIMARY KEY IDENTITY(1,1),
	Data_dostawy SMALLDATETIME NOT NULL,
	Data_wysy³ki SMALLDATETIME NOT NULL,
	IDKuriera INT REFERENCES Firmy_kurierskie ON DELETE SET NULL ON UPDATE CASCADE,
	IDKlienta INT REFERENCES Klienci ON DELETE CASCADE ON UPDATE CASCADE,
	IDZamówienie INT REFERENCES Zamówienia
);

CREATE TABLE Zwroty(
	IDZwrotu INT PRIMARY KEY IDENTITY(1,1),
	Data_zwrotu SMALLDATETIME NOT NULL,
	IDKlienta INT REFERENCES Klienci,
	IDMagazyn INT REFERENCES Magazyny,
	IDZamówienie INT REFERENCES Zamówienia
);

CREATE TABLE Skompletowane_towary(
	IDKompletu INT PRIMARY KEY IDENTITY(1,1),
	Liczba SMALLINT NOT NULL,
	IDDostawy INT REFERENCES Dostawy,
	IDStanu INT REFERENCES Stany_towarów,
	IDZamówionego INT REFERENCES Zamówione_towary ON DELETE CASCADE ON UPDATE CASCADE,
	CONSTRAINT ogranicz_liczbe_skompletowanych CHECK
	(Liczba >= 1 AND Liczba <= 1000)
);

CREATE TABLE Zwrócone_towary(
	IDZwróconego INT PRIMARY KEY IDENTITY(1,1),
	Liczba SMALLINT NOT NULL,
	IDZwrotu INT REFERENCES Zwroty ON DELETE CASCADE ON UPDATE CASCADE,
	IDKompletu INT REFERENCES Skompletowane_towary ON DELETE CASCADE ON UPDATE CASCADE,
	CONSTRAINT ogranicz_liczbe_zwróconych CHECK
	(Liczba >= 1 AND Liczba <= 1000)
);

CREATE TABLE Kurierzy_w_kraju(
	IDKurierKraj INT PRIMARY KEY IDENTITY(1,1),
	IDKuriera INT REFERENCES Firmy_kurierskie ON DELETE CASCADE ON UPDATE CASCADE,
	IDKraju INT REFERENCES Kraje ON DELETE CASCADE ON UPDATE CASCADE
);

CREATE TABLE Oferty_w_kraju(
	IDOfertyKraj INT PRIMARY KEY IDENTITY(1,1),
	IDOferty INT REFERENCES Oferty ON DELETE CASCADE ON UPDATE CASCADE,
	IDKraju INT REFERENCES Kraje ON DELETE CASCADE ON UPDATE CASCADE
);	