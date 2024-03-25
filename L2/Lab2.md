# Lab2 

A második labor feladatai az adatok beszúrását és törlését valósítják meg. Az adatokat a kliens oldali GUI/CLI segítségével tudjuk beszúrni és törölni. 

Törölni csak elsődleges kulcs alapján kell tudni egyenlőre.


## Szerver oldal

Két személyes projekt esetén:
- egy táblának egy MongoDB collection feleljen meg;
- a tábla elsődleges kulcsa egyedi legyen, és ezt az `_id` (dokumentum azonosító) mezővel oldjuk meg. Összetett kulcs esetén az _id mező a kulcsokból összeállított string legyen;
- a táblában egy sor tartalma a dokumentumban 1 értékként legyen tárolva egy mezőben, összefűzött stringként, a mezőket pedig egy bizonyos karakterrel elválasztva.

Például egy Diák tábla esetén, melynek struktúrája (DiákID, Név, Telefon, Email) lenne, a sorok tartalma a következőképpen lenne tárolva:
```
{
    _id: 1,
    érték: "Gipsz Jakab;+36301234567;gipszjakab@gmail.com"
}
```

Négy személyes projekt esetén:

- a sorok tartalmát egy bináris állományban tároljuk, a bináris állományban a sorokat egymás után tároljuk;
- ebben az esetben dolgozhattok fix hosszúságú rekordokkal annak érdekében, hogy a sorokat egymás után tudjátok tárolni és könnyen vissza tudjátok olvasni.

 
## Kliens oldal


Implementálj egy [vizuális query designer-t](https://www.mssqltips.com/sqlservertip/1086/sql-server-management-studio-query-designer/) az INSERT, DELETE parancsokhoz, vagy hajtsd végre a parancsokat parancssorból.

CLI esetén a kliens képes kell legyen az adatbázis objektumok neveit kiegészíteni, azaz ha a felhasználó kezdi beírni a táblák nevét, akkor a kliens kiegészíti a táblák nevével (pl. Tab-lenyomásra.) Ehhez a katalógus állományban tárolt táblak neveit és struktúráját kell használni, amit a szervertől kérunk le.

Szükséges parancsok:
- INSERT INTO table_name (column1, column2, column3, ...) VALUES (value1, value2, value3, ...);
- DELETE FROM table_name WHERE condition;
  
