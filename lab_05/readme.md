# Zadanie 1

1.
**Sprawdzamy czy mamy dostęp do bazy wikingowie:**
```sql
show databases;
```
**Możemy wyświetlić dane z tabeli:**
```sql
select * from wikingowie.kreatura;
```
**Teraz kopiujemy tabele:**
```sql
create table kreatura select * from wikingowie.kreatura;
create table zasob select * from wikingowie.zasob;
create table ekwipunek select * from wikingowie.ekwipunek;
```
2.
```sql
select * from zasob;
```
3.
```sql
select * from zasob where rodzaj='jedzenie';
```
4.
```sql
select idZasobu, ilosc from ekwipunek where idKreatury in (1,3,5);
```


# Zadanie 2

1.
```sql
select * from kreatura where rodzaj!='wiedzma' and udzwig>=50;
```
2.
```sql
select * from zasob where waga between 2 and 5;
```
3.
```sql
select * from kreatura where nazwa like '%or%' and udzwig between 30 and 70;
```

# Zadanie 3

1.
```sql
select dataPozyskania from zasob where month(dataPozyskania) in (7,8);
```
2.
```sql
select * from zasob where rodzaj is not null order by waga;
```
3.
```sql
select * from kreatura order by dataUr limit 5;
```
# Zadanie 4

1.
**Trzeba użyć słowa distinct.**
```sql
select distinct rodzaj from zasob;
```

2.
```sql
select concat(nazwa,' - ', rodzaj) from kreatura where rodzaj like "wi%";
```
3.
```sql
select nazwa, (ilosc * waga) as Calkowita_waga from zasob 
where year(dataPozyskania) between 2000 and 2007;
```
# Zadanie 5

1.
```sql
select nazwa, 0.3*waga as 'odpad', 0.7*waga as 'jedzenie(netto)' from zasob 
where rodzaj = 'jedzenie';
``` 
2.
```sql
select * from zasob where rodzaj is null;
```
3.
```sql
select distinct nazwa,rodzaj from zasob where nazwa like "ba%" or nazwa like "%os%" 
order by nazwa;

select distinct(rodzaj) from zasob where nazwa like 'Ba%' or nazwa like '%os' 
order by rodzaj asc;
```

