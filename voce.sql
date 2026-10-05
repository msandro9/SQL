CREATE DATABASE Stand

USE Stand

CREATE TABLE Voce (
	IDVoce int CONSTRAINT PK_Voce PRIMARY KEY IDENTITY,
	Naziv nvarchar(50) NOT NULL,
)

CREATE TABLE Sorta (
	IDSorta int CONSTRAINT PK_Sorta PRIMARY KEY IDENTITY,
	Naziv nvarchar(50) NOT NULL,
	MinimalnaKolicina int NOT NULL CONSTRAINT CH_Sorta_MinimalnaKolicina CHECK (MinimalnaKolicina >= 0),
	TrenutnaKolicina int NOT NULL CONSTRAINT CH_Sorta_TrenutnaKolicina CHECK (TrenutnaKolicina >= 0),
	NabavnaCijena int NOT NULL CONSTRAINT CH_Sorta_NabavnaCijena CHECK (NabavnaCijena >= 0),
	ProdajnaCijena int NOT NULL CONSTRAINT CH_Sorta_ProdajnaCijena CHECK (ProdajnaCijena >= 0),
	VoceID int CONSTRAINT FK_Sorta_Voce FOREIGN KEY REFERENCES Voce(IDVoce) NOT NULL
)

CREATE TABLE Dobavljac (
	IDDObavljac int CONSTRAINT PK_Dobavljac PRIMARY KEY IDENTITY,
	Ime nvarchar(50) NOT NULL,
	Prezime nvarchar(50) NOT NULL,
	Adresa nvarchar(50) NOT NULL,
	BrojMobitela nvarchar(50) NOT NULL
)

CREATE TABLE DobavljacSorta (
	IDDobavljacSorta int CONSTRAINT PK_DobavljacSorta PRIMARY KEY IDENTITY,
	DobavljacID int CONSTRAINT FK_DobavljacSorta_Dobavljac FOREIGN KEY REFERENCES Dobavljac(IDDobavljac),
	SortaID int constraint FK_DobavljacSorta_Sorta FOREIGN KEY REFERENCES Sorta(IDSorta)
)