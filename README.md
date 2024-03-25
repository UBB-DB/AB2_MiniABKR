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
- Indexek kezelése (létrehozás, törlés), valamint az indexek használata lekérdezésekben


## Opcionális funkciók

- Adatok importálása és exportálása
- Többfelhasználós mód
- Felhasználók kezelése
- Jogosultságok kezelése
- Tranzakciók kezelése

## Technikai részletek

### Házik leadása

- A leadás a GitHub Classroom segítségével történik.
- A leadás határideje szinkronban van a tárgy honlapján (Canvason) található határidővel, és a nem projektezőknek feladott házi feladatok leadási határidejével.
- A leadás során a hallgatók a projektet tartalmazó repository commitjait adják le/töltsék fel Canvasra (ez opcionális, hasznos lehet a commitokat is feltölteni, hogy lássuk a fejlődést)

### Végső értékelés 

A projekt végső értékelése az utolsó oktatási héten történik majd, előre egyeztetett időpontban. Az értékelés során a hallgatóknak be kell mutatniuk a projektet. Az értékelés során a projekt funkcionalitását, az alkalmazás minőségét, a határidők betartását, valamint a bemutató minőségét és kreativitását is figyelembe vesszük.

### Hogyan jelents be egy hibát a dokumentumban?

Az issue menüpontban jelentsd be a hibát, ahol a következőket kellene megadni:

- A hiba típusa (pl. elírás, hiányzó információ, stb.)
- A hiba helye (pl. melyik Laborban)

Esetlegesen ha van ötleted a hiba javítására, azt is megadhatod, sőt, pull request-et is nyithatsz.

### Hogyan tudok hozzájárulni a dokumentumhoz?

- Forkold a repositoryt
- Készíts egy új branchet
- Commitold a változtatásaidat
- Nyiss egy pull requestet

### Hogyan tudom futtatni a dokumentumot lokálisan?

A JupyterBook lokális futtatásához a következőket kell tenned:

- Készíts egy virtuális környezetet, ahol telepíted a requirements.txt fájlban található csomagokat
- A könyvtárban állva futtasd a `jupyter-book build .` parancsot
- Siker esetén a `_build` mappában találsz egy html fájlt, amit ha megnyitsz, megtekintheted a dokumentumot
