USE AdventureWorksOBP

INSERT INTO Drzava (Naziv) VALUES ('Madagaskar')

INSERT INTO Drzava (Naziv) VALUES ('Argentina')
INSERT INTO Grad (Naziv, DrzavaID) VALUES ('Buenos Aires', 5)

INSERT INTO Kategorija (Naziv) VALUES ('Razno')
INSERT INTO Potkategorija (KategorijaID, Naziv) VALUES (5, 'Playeri')
INSERT INTO Proizvod (Naziv, BrojProizvoda, Boja, MinimalnaKolicinaNaSkladistu, CijenaBezPDV, PotkategorijaID)
VALUES ('Sony Player', 'SP-3941', 'Crna', '100', 100, 38)

INSERT INTO Grad (Naziv, DrzavaID) VALUES ('Gospic', 1)
INSERT INTO Kupac (Ime, Prezime, Email, Telefon, GradID) VALUES ('Josip', 'Josic', 'josipjosic@adventure-works.com', NULL, 15)

INSERT INTO KreditnaKartica (Tip, Broj, IstekMjesec, IstekGodina) VALUES ('MasterCard', '11111111111111', 12, 2026)

CREATE TABLE KupacVIP (
	IDKupacVIP int CONSTRAINT PK_KupacVIP PRIMARY KEY IDENTITY,
	Ime nvarchar(50) NOT NULL,
	Prezime nvarchar(50) NOT NULL
)
INSERT INTO KupacVIP (Ime, Prezime) (SELECT Ime, Prezime FROM Kupac WHERE Ime IN ('Karen', 'Mary', 'Jimmy'))

UPDATE Kupac SET GradID = 2 WHERE Ime = 'Kim' AND Prezime = 'Abercrombie'

UPDATE Kupac SET GradID = 4 WHERE Prezime LIKE 'A%'

UPDATE Kupac SET Email = 'nepoznato@nepoznato.com' WHERE IDKupac IN (40, 41, 42)

UPDATE Kupac SET Ime = 'Edo' WHERE Ime = 'Eduardo' AND Prezime = 'Diaz'

UPDATE Racun SET Komentar = 'Dodatno provjeriti!'
WHERE DatumIzdavanja = '2004-04-01'
AND KomercijalistID IS NULL
AND KreditnaKarticaID IS NULL

DELETE FROM Drzava WHERE IDDrzava = 2

DELETE FROM Kupac WHERE Prezime = 'Trtimirović'

DELETE FROM Stavka WHERE RacunID = 75123
DELETE FROM Racun WHERE IDRacun = 75123

INSERT INTO Drzava (Naziv) VALUES ('Slovenija')
INSERT INTO Grad (Naziv, DrzavaID) VALUES ('Ljubljana', 6)
INSERT INTO Kupac (Ime, Prezime, Email, Telefon, GradID) VALUES ('Robert', 'Mrkonjic', 'robi.mrki@gmail.si', NULL, 16)
INSERT INTO Potkategorija (KategorijaID, Naziv) VALUES (5, 'Naljepnice')
INSERT INTO Komercijalist (Ime, Prezime, StalniZaposlenik) VALUES ('Garfild', 'Mackovic', 1)
INSERT INTO Proizvod (Naziv, BrojProizvoda, Boja, MinimalnaKolicinaNaSkladistu, CijenaBezPDV, PotkategorijaID)
VALUES ('Trkace Carape M', 'TC-3193', 'Bijele', '100', 20, 23)
INSERT INTO Proizvod (Naziv, BrojProizvoda, Boja, MinimalnaKolicinaNaSkladistu, CijenaBezPDV, PotkategorijaID)
VALUES ('Naljepnica za bicikl', 'NB-3918', 'Crna', '100', 5, 39)
INSERT INTO Racun (DatumIzdavanja, BrojRacuna, KupacID, KomercijalistID, KreditnaKarticaID, Komentar)
VALUES ('2026-10-7', 'SO11111', 19979, 292, NULL, NULL)
INSERT INTO Stavka (RacunID, Kolicina, ProizvodID, CijenaPoKomadu, PopustUPostocima, UkupnaCijena)
VALUES (75124, 3, 1001, 20, 0, 60)
INSERT INTO Stavka (RacunID, Kolicina, ProizvodID, CijenaPoKomadu, PopustUPostocima, UkupnaCijena)
VALUES (75124, 2, 1002, 5, 0, 10)
INSERT INTO Drzava (Naziv) VALUES ('Austrija')
INSERT INTO Grad (Naziv, DrzavaID) VALUES ('Bec', 7)
UPDATE Kupac SET GradID = 17 WHERE IDKupac = 19979
DELETE FROM Stavka WHERE IDStavka = 121319