# Lab 1 feladatai

A szerver a következő műveletek elvégzésére képes:

- CREATE DATABASE
- DROP DATABASE
- CREATE TABLE
- DROP TABLE
- CREATE INDEX

A táblák struktúráját, az elsődleges és külső kulcsos megszorításokat, az index állományok kulcsát és nevét egy xml vagy json állományban tároljuk. Részletesebb leírást találtok a Key-valueSystemsIndex.pdf (Files/MiniABKR) dokumentumban, és példaként szolgálnak a DataBases.xml és Catalog.xml állományok. Csak a táblák struktúráját implementáljuk az 1-es labor keretén belül, az adat beszúrását a második labor keretén belül fogjuk megoldani.

A parancsok végrehajtásához készítsetek egy grafikus felhasználói felületet, mint például az MSSQL Server Management Studio, vagy egyszerű parancsoros megoldást, mint például a Microsoft SQL server parancssoros felülete (Egy konzol ablakban kipróbálható a `sqlcmd` parancs, a használatához írjuk be a `sqlcmd -?` parancsot).

```{mermaid}
 
---
title: Implementacio reszei  
--- 
flowchart LR 

felhasznalo[Felhasznalo] --> kliensGUI[1. Kliens odali GUI] & kliensCLI[1. Kliens odali CLI] --SQL parancs --> szerver[2.Szerver] -- Katalogus informacio --> katalogus[3. Katalogus allomany]

```

## Fontos

- A szerveren a katalógus állomány(oka)t a szerver indításakor betöltjük, és minden módosítás után frissítjük.
- A kliens részén a felhasználó a kliens oldali GUI vagy CLI segítségével adja meg a parancsokat, amelyeket a szerveren hajtunk végre.
- A kliens csak SQL parancsokat küld a szervernek.
- A kliens nem tudja elérni a katalógus állományokat, csak a szerveren keresztül kérheti le az információkat.



## Opcionális funkciók
- Treeview használata a katalógus állományok megjelenítésére
- Parancsok kiegészítése


