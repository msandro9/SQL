USE AdventureWorksOBP

SELECT k.Ime, k.Prezime, g.Naziv 
FROM Kupac AS k
INNER JOIN Grad AS g
ON k.GradID = g.IDGrad

SELECT k.Ime, k.Prezime, g.Naziv, d.Naziv
FROM Kupac AS k
INNER JOIN Grad AS g
ON k.GradID = g.IDGrad
INNER JOIN Drzava AS d
ON g.DrzavaID = d.IDDrzava

SELECT r.IDRacun, r.BrojRacuna, 
ku.Ime AS 'Kupac Ime', ku.Prezime AS 'Kupac Prezime', g.Naziv AS 'Kupac Grad', 
ko.Ime AS 'Komercijalist Ime', ku.Prezime AS 'Komercijalist Prezime',
kk.IstekMjesec, kk.IstekGodina
FROM Racun AS r
INNER JOIN Kupac AS ku
ON r.KupacID = ku.IDKupac
INNER JOIN Grad AS g
ON ku.GradID = g.IDGrad
INNER JOIN Komercijalist as ko
ON r.KomercijalistID = ko.IDKomercijalist
INNER JOIN KreditnaKartica AS kk
ON r.KreditnaKarticaID = kk.IDKreditnaKartica
ORDER BY ku.Prezime ASC

SELECT DISTINCT  p.Naziv FROM Proizvod AS p
INNER JOIN Stavka AS s
ON p.IDProizvod = s.ProizvodID
WHERE s.Kolicina > 35