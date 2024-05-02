# Lab5

## Join implementálása

Implementáljatok az indexed nested loop join algoritmust

Használjátok a meglévő index állományokat, ahol lehetséges.

## Select végrehajtásának bővítése

Bővítsétek a SELECT utasítás végrehajtását 2 vagy több tábla joinjával.

- csak az INNER JOIN-t ( ON c1=c2) kell megvalósítani

## Skálázhatóság mérése

Teszteljétek a joinnal ellátott selectet legalább két olyan táblán, amelynek min 100,000 sorai vannak.

## Plusz feladatok

Plussz pontokért implementáljátok:

- hash join (a partíciókat ki kell írni a lemezre)
- sort merge join (implementáljátok az external sortingot és írjátok a futásokat a lemezre)
-

## Példák lekérdezésekre:
1.

```sql
 SELECT p.product_name, c.category_name, p.price
FROM products p
INNER JOIN production.categories c ON c.category_id = p.category_id\
WHERE p.price > 100
```

2.

```sql
SELECT *
FROM products p
INNER JOIN categories c ON c.category_id = p.category_id
INNER JOIN brands b ON b.brand_id = p.brand_id
```

3.

```sql
SELECT p.product_name, c.category_name, b.brand_name, p.price
FROM products p
INNER JOIN categories c ON c.category_id = p.category_id
INNER JOIN brands b ON b.brand_id = p.brand_id
WHERE c.category_name = 'sport' AND b.brand_name = 'Nike'
```
