# Hasznos információk

## Kollaborációs tippek

A GIT használata során a következő tippeket érdemes figyelembe venni:

- Mindig hozz létre egy új branchet, amikor egy új funkciót fejlesztesz. A branch neve legyen beszédes, és tartalmazza a fejlesztés célját. Például: `feature/lekerdezesek`. A funkció elkészülte után a branchet merge-elheted a `main` branchbe pull request segítségével, amit a csapat többi tagja is ellenőrizhet. További információk a különböző munkamenetekről [itt](https://www.atlassian.com/git/tutorials/comparing-workflows) találtok, viszont ha 2-3 fős csapatról van szó, akkor nem feltétlenül szükséges fork vagy gitflow használata.
- Konfliktus elkerülése érdekében gyakran pull-olj a `main` branch-ből, hogy mindig naprakész legyen a kódbázisod.
- Ha konfliktus merül fel, ne pánikolj. A GIT segítségével könnyen megoldhatóak a konfliktusok. [Itt](https://www.atlassian.com/git/tutorials/using-branches/merge-conflicts) találsz egy jó leírást a konfliktusok kezeléséről.
- Hasznalhatjátok a Rebase-et is, ami segít abban, hogy a commitok rendezettek legyenek. [Itt](https://www.atlassian.com/git/tutorials/rewriting-history/git-rebase) találhatsz egy jó leírást a Rebase használatáról.

<!-- ## Funkciók -->

## Pelda script

{Download}`Query sql <./Students.sql>`

## Fejlesztési tippek

A felevés során a következő tippeket érdemes figyelembe venni:

- Keszitsetek teszt esetekeket a lekerdezesekhez, hogy biztosak legyetek a helyes mukodesben. Hasznalhatjátok a pelda scriptet a tesztekhez.
- Automatizalhato tesztek használata segit abban, hogy a kodotok ne legyen hibas. Minden uj funkcio fejlesztese utan futtassatok teszteket azert hogy biztositsatok azt, hogy az uj funkcio nem rontja el a regi funkciók mukodeset.
