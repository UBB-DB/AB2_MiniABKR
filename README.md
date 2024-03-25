# Mini ABKR

Mini ABKR projekt egy adatbázis kezelő program, amely lehetővé teszi a felhasználók számára, hogy adatbázisokat hozzanak létre, tároljanak, módosítsanak és töröljenek. 
Az adatbázisokat táblákra osztja, amelyeket a felhasználók létrehozhatnak, módosíthatnak és törölhetnek.
 A táblák sorokból és oszlopokból állnak, amelyeket a felhasználók létrehozhatnak, módosíthatnak és törölhetnek. A program lehetővé teszi a felhasználók számára, hogy lekérdezéseket hajtsanak végre a táblákban.


## Funkciók
- Adatbázisok létrehozása, módosítása és törlése
- Táblák létrehozása, módosítása és törlése
- Adatok beszúrása, módosítása és törlése
- Lekérdezések futtatása
- Adatok megjelenítése táblázatos formában
- Query editor
- Indexek kezelése (létrehozás, törlés) valamint az indexek használata lekérdezésekben


## Opcionális funkciók
- Adatok importálása és exportálása
- Tobbfelhasználós mód
- Felhasználók kezelése
- Jogosultságok kezelése
- Tranzakciók kezelése



## Technikai reszletek

### Hazik leadasa

- A leadás a GitHub Classroom segítségével történik.
- A leadás határideje szinkronban van a tárgy honlapján(Canvason) található határidővel, a nem projektezoknek feladott hazi feladatok leadasi hataridejevel.
- A leadás során a hallgatók a projektet tartalmazó repository commitjait adják le/toltsek fel canvasra(opcionalis, hasznos lehet a commitokat is feltolteni, hogy lassuk a fejlodest)

### Vegso ertekeles

A projekt vegso ertekelese az utolso oktatasi heten tortenik majd, elore egyeztetett idopontban. Az ertekeles soran a hallgatoknak bemutatniuk kell a projektet. Az ertekeles soran a hallgatoknak a projekt funkcionalitasat, az alkamazas minoseget, a hataridok betartasat valamint a bemutato minoseget es kreativitasat is ertekeljuk majd.


### Hogyan jelents be egy hibát a dokumentumban?

Az issue menüpontban jelentsd be a hibát, ahol a következőket lenne jó ha megadnád:

- A hiba típusa (pl. elírás, hiányzó információ, stb.)
- A hiba helye (pl. melyik Laborban)

Esetlegesen ha van ötleted a hiba javítására, azt is megadhatod sot pull requestet is nyithatsz.


### Hogyan tudok hozzájárulni a dokumentumhoz?
- Forkold a repositoryt
- Készíts egy új branchet
- Commitold a változtatásaidat
- Nyiss egy pull requestet

### Hogyan tudom futtatni a dokumentumot lokálisan?
A JupyterBook lokalis futtatásához a következőket kell tenned:
- Keszits egy virtuális környezetet, ahol telepited a requirements.txt fájlban található csomagokat
- A könyvtárban állva futtasd a `jupyter-book build .` parancsot
- Siker esetén a `_build` mappában találsz egy html fájlt, amit megnyitva megtekintheted a dokumentumot
