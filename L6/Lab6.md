# Lab6

Implementáljátok a GROUP BY  kulcsszót a szerver oldalon.

Szükséges aggregációs függvények:
- COUNT
- SUM
- AVG
- MIN
- MAX

Használjátok az index állományokat a lekérdezések gyorsítására.

Pluszpontokert implementaljatok a HAVING kulcsszot is.

Pelda lekerdezesek:

```sql

SELECT cs.CsoportID, COUNT(d.DiakID)

FROM Csoportok cs

JOIN Diakok d ON d.CsoportID = cs.CsoportID

WHERE d.EletKor > 18 AND d.Egyetem = 'BBTE'

GROUP BY cs.CsoportID

HAVING COUNT(d.DiakID) >= 10 AND COUNT(d.DiakID) <= 25

Note: HAVING is optional for bonus.

 

SELECT AVG(Eletkor)

FROM Diakok

GROUP BY CsoportID

 

SELECT m.MarkaNev, MAX(t.Ar), MIN(t.Ar)

FROM Markak m

JOIN Termekek t ON t.MarkaID = m.MarkaID

GROUP BY m.MarkaNev


SELECT AVG(Eletkor)
FROM Diakok

```

## Bemutatás

Keszitsetek egy prezentációt, amely tartalmazza a következőket:

- A csapat/termék nevét
- Milyen funkciókat implementáltatok
- Milyen technológiákat használtatok
- A felhasználói felület  valamint a funkcionalitasok bemutatása (Ez lehet demo is)
- Mi az ami kimaradt, mi az ami nem működik

Tartalmazhat további információkat is, mint például:

- Az implementáció nehézségei
- A kód bemutatása (struktura, fontosabb részek)
- A tesztek eredményei
- A továbbfejlesztési lehetőségek

** Megjegyzes:  Keszuljetek arra, hogy a tobbi csapat is ertekelni fogja a munkatokat, es kerdezni fognak a megvalositasrol. **