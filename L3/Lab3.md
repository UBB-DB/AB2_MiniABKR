# Lab3 
A harmadik labor feladatai az index fájlok implementálása és az adatbázis integritásának ellenőrzése.


## Index fájlok létrehozása
A feladatotok, hogy index fájlokat hozzatok létre egyedi és nem egyedi kulcsokra is.

**2 személyes projektek esetén**

- Az index állományokat MongoDB collection állományban tároljátok (nem txt vagy valami más MongoDB-n kivüli állományban)
-  Az elsődleges kulcsokra nem szükséges index fájlt létrehozni
 ha MongoDB-ben a primary key értéket _id-ben tároltuk el, akkor erre úgymond alapértelmezés szerint megvan az index állomány, automatikusan épiti a MongoDB.
- Az index fájlokban (collectionokben):
  - egyedi ertékek esetén az indexben az egyedi értékek kerüljenek a kulcsok helyére, és azokhoz tartozó elsődleges kulcsok kerüljenek a rekordok helyére
  - nem egyedi oszlop esetén, az összes megtalálható egyedi(distinct) érték bekerül 1-1 kulcs értékbe, és a value részen össze kell fűzzük az adatfile-ból az összes primary key-t, aminél szerepel ez az érték
  
Vegyuk az alábbi táblát egyedi mezővel:

| _id | Unique_value |
|-----|--------------|
| 1   | a            |
| 2   | b            |
| 3   | c            |
| 4   | d            |

Ekkor az index állományban az alábbiak szerepelnek:

| _id | key |
|-----|-----|
| a   | 1   |
| b   | 2   |
| c   | 3   |
| d   | 4   |

Nem egyedi mező esetén:

| _id | Non_unique_value |
|-----|------------------|
| 1   | a                |
| 2   | b                |
| 3   | a                |
| 4   | c                |

Ekkor az index állományban az alábbiak szerepelnek:

| _id | key |
|-----|-----|
| a   | 1#3 |
| b   | 2   |
| c   | 4   |

(Használhattok barmilyen karaktert az eredeti kulcsok összefűzésére, de a kulcsokat ne változtassátok meg)

**4 személyes projektek esetén**

- Az indexeket B+ fa segítségével valósítsátok meg.
- Az index fájlok lehetnek egyedi és nem egyedi kulcsokra is.
- Az index fájlokban a kulcsokat és az azokhoz tartozó rekordok címét tároljuk. 


<!-- - Az egyedi kulcsok esetén az index fájlban a kulcsokat és az azokhoz tartozó rekordok címét tároljuk.
- A nem egyedi kulcsok esetén az index fájlban a kulcsokat és az azokhoz tartozó rekordok címét tároljuk, de egy kulcs többször is előfordulhat az index fájlban.
- Összetett kulcsok esetén az index fájlokban az összetett kulcsokból összeállított stringeket kell tárolni. -->



## Integritás ellenőrzése

Validáljátok az elsődleges, egyedi és külső kulcsok integritását (beszúrás gyermek táblába, törlés szülő táblából) a megvalósított index fájlok segítségével, lásd KeyvalueSystemsIndex.pdf.

- Ha egy táblába beszúrunk vagy törlünk belőle, akkor az index állományokat kell frissiteni az újonnan hozzáadott adatokkal, vagy törlés esetén kell törölni az index állományokból is, de úgy hogy figyelembe vesszük a kulcsokat. Ha például olyasmit szeretnék törölni, amire van külső kulcsos hivatkozás, akkor jelenitsünk meg hibaüzenetet, és ne engedélyezzük a törlést. 
- Ha sikeresen lehet törölni, akkor az adatállományok mellett töröljük az index állományokból is. 
  
**2 személyes projektek esetén** Az adat és index állományok is MongoDB collection állományokban vannak tárolva, igy a törlés és beszúrás műveleteket a MongoDB beépitett függvényei segitségével könnyen végre tudjuk hajtani.