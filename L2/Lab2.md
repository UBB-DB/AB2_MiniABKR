# Lab2 

A második labor feladatai az adatok beszurasat es torleset valositjak meg. Az adatokat a kliens oldali GUI/CLI segitsegevel tudjuk beszurni es torolni. 

Torolni csak elsodleges kulcs alapjan kell tudni egyenlore.


## Szerver oldal

2 szemelyes projekt eseten:
- egy tablanak egy mongodb collection feleljen meg
- a tabla elsodleges kulcsa egyedi legyen, es ezt a `_id` (dokuemntum azonosito) mezovel oldjuk meg. Osszetett kulcs eseten az _id mezo a kulcsokbol osszeallitott string legyen.
- a tablaban egy sor tartalma a dokumentumban 1 ertekkent legyen tarolva, egy mezoben egy osszefuzott stringkent, a mezoket egy bizonyis karakterrel elvalasztva.

Peldaul egy Diak tabla eseten melynek strukturaja (DiakID, Nev, Telefon, Email) lenne, a sorok tartalma a kovetkezokeppen lenne tarolva:
```
{
    _id: 1,
    ertek: "Gipsz Jakab;+36301234567;gipszjakab@gmail.com"
}
```

4 szemelyes projekt eseten:

- a sorok tartalmat egy binaris allomanyban taroljuk. A binaris allomanyban a sorokat egymas utan taroljuk. 
- ebben az esetben dolgozzhattok fix hosszusagu rekordokkal azert, hogy a sorokat egymas utan tudjatok tarolni es konnyen vissza tudjatok olvasni.

 
## Kliens oldal


Implementalj egy [vizualis query designer-t](https://www.mssqltips.com/sqlservertip/1086/sql-server-management-studio-query-designer/) az INSERT, DELETE parancsokhoz, vagy hajtsd vegre a parancsokat parancssorbol.

CLI eseten a kliens kepes kell legyen az adatbazis objektumok neveit kiegesziteni, azaz ha a felhasznalo elkezdi beirni a tablak nevet, akkor a kliens kiegésziti a tablak nevevel(pl. Tab-lenyomasra.) Ehhez a katalogus allomanyban tarolt tablak neveit es strukturajat kell hasznalni amit a szervertol kerunk le.

Szukseges parancsok:
- INSERT INTO table_name (column1, column2, column3, ...) VALUES (value1, value2, value3, ...);
- DELETE FROM table_name WHERE condition;
  
