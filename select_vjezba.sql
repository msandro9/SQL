USE AdventureWorksOBP

SELECT * FROM Kupac WHERE Ime = 'Lili'

SELECT * FROM Kupac WHERE Prezime = 'Lee'

SELECT * FROM Kupac WHERE Ime = 'Ana' AND Prezime = 'Diaz'

SELECT * FROM Kupac WHERE GradID = 2

SELECT * FROM Kupac WHERE Ime = 'Ana' OR Ime = 'Tamara'

SELECT * FROM Kupac WHERE (Ime = 'Ana' OR Ime = 'Tamara') AND GradID = 2

SELECT * FROM Kupac WHERE (Ime = 'Ana' OR Ime = 'Tamara') AND GradID != 2

SELECT * FROM Stavka WHERE UkupnaCijena < 2

SELECT * FROM Stavka WHERE UkupnaCijena >= 23000

SELECT * FROM Stavka WHERE Kolicina BETWEEN 20 AND 22

SELECT * FROM Proizvod WHERE Boja = 'Plava' OR Boja = 'Crvena'

SELECT * FROM Proizvod WHERE Boja IS NULL

SELECT * FROM Proizvod WHERE Boja = 'Srebrna' OR Boja IS NULL

SELECT * FROM Proizvod WHERE Boja IS NULL AND CijenaBezPDV < 25

SELECT Ime, Prezime FROM Kupac WHERE Ime LIKE 'Ki%'

SELECT Ime as Ime, Prezime as Prezime FROM Kupac WHERE IDKupac BETWEEN 15530 AND 15535

SELECT Ime + ' ' + Prezime as PunoIme FROM Kupac

SELECT Ime, Prezime, Ime + ' ' + Prezime as PunoIme, Email FROM Kupac

SELECT DISTINCT Ime FROM Kupac

SELECT DISTINCT Prezime FROM Kupac

SELECT DISTINCT Ime + ' ' + Prezime as PunoIme FROM Kupac

SELECT Ime, Prezime FROM Kupac WHERE Ime LIKE 'Kat%' ORDER BY Ime ASC, Prezime ASC

SELECT Ime, Prezime FROM Kupac WHERE Ime LIKE 'Kat%' ORDER BY Ime ASC, Prezime DESC

SELECT Ime as Ime, Prezime as Prezime FROM Kupac WHERE IDKupac BETWEEN 18150 AND 18155 ORDER BY Prezime DESC

SELECT DISTINCT Ime + ' ' + Prezime as PunoIme FROM Kupac ORDER BY PunoIme ASC

SELECT DISTINCT Ime + ' ' + Prezime as PunoIme FROM Kupac ORDER BY PunoIme DESC

SELECT TOP 5 * FROM Kupac

SELECT TOP 5 Ime, Prezime FROM Kupac ORDER BY IDKupac DESC

SELECT TOP (50) PERCENT * FROM Kupac WHERE Ime = 'Jack'

SELECT TOP (50) PERCENT Prezime FROM Kupac WHERE Ime = 'Jack'