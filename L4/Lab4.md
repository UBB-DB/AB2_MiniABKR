# Lab4

A negyedik labor feladatai a lekérdezések implementálása és az adatbázis teljesítményének mérése.

## Szerver oldal

### Lekérdezések implementálása

Implementáljátok szerver oldalon a lekérdezéseket. Az eredményeket a kliens oldalra küldjétek vissza. 

- A lekérdezések implementálásához használjátok az adatbázis index fájljait a lekérdezések gyorsítására. Az indexek ellenőrzésére használjátok a katológus állományban tárolt információkat.
- Az indexeket intervallum keresésre is kell használni, pl ha egy érték valaminél nagyobb és kisebb, MongoDB-ben van erre lehetőség, range-ekre lehet keresni a find függvény segítségével.


Projekció:

- A lekérdezés eredménye csak azokat a mezőket tartalmazza, amelyeket a felhasználó megadott (SELECT mezők).
- Legyen lehetőség a * karakter használatára, amely az összes mezőt jelenti.
- Adjatok lehetőséget a mezők átnevezésére is (alias).
- Ha az összes kiválasztott mezőre van index, akkor használjuk ezeket.
- Distinct kulcsszó használatakor ne jelenjenek meg többször ugyanazok a sorok.

Szűrés(filter):

- A lekérdezés eredménye csak azokat a sorokat tartalmazza, amelyekre a felhasználó megadott feltétel(ek) igaz(ak) (WHERE feltétel).
- Egy feltétel egy mezőre vonatkozó összehasonlítás, amely tartalmazza a mező nevét, az összehasonlító operátort és az értéket.
- Számszerű értékek esetén a következő összehasonlító operátorokat kell támogatni: <, >, <=, >=, =
- Szöveges valamint egyéb típusu értékek esetén az = operátort kell támogatni.
- Szűrési feltételek összekapcsolása **AND** logikai operátorral történik. **OR** operátor nem szükséges.
- Ha a megadott feltételek közül k mezőre van index, akkor mind a k darab indexet kell használni (a fennmaradó n-k mezőt szekvenciálisan járjuk végig). A felhasznált k darad index alapján megkapunk k halmazt, ezeket metsszük, majd a fennmaradó n-k feltételt alkalmazzuk a metszés eredményére.

A lekérdezés eredményében ne jelenjenek meg többször ugyanazok a sorok, ezért a lekérdezés eredményét lehet rendezni, és csak a különböző sorokat megjeleníteni vagy hashing-el megoldani. (Ha a rendezés eredménye nem fér bele a memóriába ki lehet írni háttértárolóra.)

### A rendszer skálázhatóságának mérése

Szúrjatok be egy nagy mennyiségű adatot az adatbázisba(100.000), és mérjétek meg a lekérdezések futási idejét. Az adatok beszúrásához használhattok egy scriptet, amely generál nagy mennyiségű adatot, és szúrja be ezt az adatbázisba.
Több táblába is beszúrhattok több sort, szükségünk lesz majd a Lab5-nél más táblákban is hasonló mennyiségű adatokra, hogy tudjuk a join-okat tesztelni.

Mérjétek meg a lekérdezések futási idejét különböző méretű adatbázisokon (100, 1000, 10000, 100.000 sor).

Példák lekérdezésekre:

```sql
SELECT * FROM customers
SELECT Name, Age, EmailAddress FROM customers
SELECT Name FROM customers WHERE CategoryID = 15
SELECT Name FROM customers WHERE CategoryID = 15 AND Age >= 18
SELECT Name, EmailAddress FROM customers WHERE EmailAddress = 'test@nomail.com' 
```

## Kliens oldal

Implementaljatok egy vizualis feluletet lekerdezesek generalasahoz ([visual query designert](https://www.mssqltips.com/sqlservertip/1086/sql-server-management-studio-query-designer/)) a SELECT parancsokhoz. A feluletnek tartalmaznia kell a kovetkezo elemeket:
- A tablak kivalasztasa
- A lekerdezes mezők kiválasztása
- Tablak kozotti osszekottetesek valamilyen modon torteno megjelenitese (a joinok implementalasa a kovetkezo laborban lesz)
- A lekerdezes eredmenyeinek megjelenitese

CLI esetén a kliens képes kell legyen az adatbázis objektumok neveit kiegészíteni, azaz ha a felhasználó kezdi beírni a táblák nevét, akkor a kliens kiegészíti a táblák nevével (pl. Tab-lenyomásra.) Ehhez a katalógus állományban tárolt táblak neveit és struktúráját kell használni, amit a szervertől kérünk le.



