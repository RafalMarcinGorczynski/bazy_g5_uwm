lab_06

# Zadanie 1

1.
```sql
select avg(waga) as srednia_waga from kreatura where rodzaj='wiking';
```
2.
```sql
select rodzaj, count(*), avg(waga) from kreatura group by rodzaj;
```
3.
```sql
select rodzaj, avg(year(now())-year(dataUr)) from kreatura group by rodzaj;

select rodzaj, avg(2020 - year(dataUr)) from kreatura group by rodzaj;
```
# Zadanie 2

1.
```sql
select sum(udzwig), rodzaj from kreatura group by rodzaj;
```
2.	
```sql
select nazwa, sum(waga)as suma from zasob where ilosc>=4 group by nazwa having suma>10;
```
3.
```sql
select rodzaj, count(distinct(nazwa)) as ilosc_zasobow from zasob group by rodzaj having ilosc_zasobow > 1;
```
# Zadanie 3

1.
```sql
select * from kreatura, ekwipunek where  kreatura.idKreatury=ekwipunek.idKreatury;

select nazwa, kreatura.idKreatury, ekwipunek.idKreatury from kreatura, ekwipunek where kreatura.idKreatury=ekwipunek.idKreatury;

select nazwa, sum(ilosc) as suma from kreatura k , ekwipunek e  where k.idKreatury=e.idKreatury group by nazwa;
```
2.
```sql
select k.nazwa, z.nazwa from kreatura k, ekwipunek e, zasob z where k.idKreatury=e.idKreatury and e.idZasobu=z.idZasobu;
```
3.