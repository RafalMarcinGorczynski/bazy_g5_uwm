lab_06

# Zadanie 1

1.
```sql
select avg(waga) as srednia_waga from kreatura where rodzaj='wiking';
```
2.
```sql
select rodzaj, avg(waga) as srednia_waga, count(*) from kreatura group by rodzaj;
```
3.
```sql
select rodzaj, avg(year(now())-year(dataUr)) from kreatura group by rodzaj;

select rodzaj, avg(2020 - year(dataUr)) as srednia_wieku from kreatura group by rodzaj;
```
# Zadanie 2

1.
```sql
mysql> select rodzaj, sum(waga), count(*) as ilosc_zasobu from zasob group by rodzaj;
```
2.	
```sql
select nazwa, avg(waga) as srednia_waga from zasob where ilosc>4 group by nazwa ha
ving sum(waga)>10;
```
3.
```sql
select rodzaj, count(distinct(nazwa)) as ilosc_zasobow from zasob 
group by rodzaj having ilosc_zasobow > 1;
```
# Zadanie 3

1.
```sql
select * from kreatura, ekwipunek where  kreatura.idKreatury=ekwipunek.idKreatury;

select nazwa, kreatura.idKreatury, ekwipunek.idKreatury 
from kreatura, ekwipunek where kreatura.idKreatury=ekwipunek.idKreatury;

select nazwa, sum(ilosc) as suma from kreatura k , ekwipunek e  
where k.idKreatury=e.idKreatury group by nazwa;
```
2.
```sql
select k.nazwa, z.nazwa from kreatura k, ekwipunek e, zasob z 
where k.idKreatury=e.idKreatury and e.idZasobu=z.idZasobu;
```


3.
Wyświetl wszystkie rekordy z obu tabel:
```sql
select k.idKreatury, k.nazwa, e.idKreatury FROM kreatura k left join ekwipunek e ON k.idKreatury=e.idKreatury;
```
```sql
	SELECT k.idKreatury, k.nazwa, e.idKreatury
	FROM kreatura k LEFT JOIN ekwipunek e
	ON k.idKreatury=e.idKreatury
	WHERE e.idKreatury IS NULL;
```


# Zadanie 4

1.
```sql
SELECT k.nazwa, z.nazwa
FROM kreatura k, zasob z, ekwipunek e
WHERE k.idKreatury=e.idKreatury
AND e.idZasobu=z.idZasobu
AND k.rodzaj='wiking'
AND YEAR(k.dataUr) BETWEEN 1670 AND 1679;


SELECT k.nazwa, z.nazwa
FROM zasob z, kreatura k natural join ekwipunek e
WHERE e.idZasobu=z.idZasobu
AND k.rodzaj='wiking'
AND YEAR(k.dataUr) BETWEEN 1670 AND 1679;
```