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
