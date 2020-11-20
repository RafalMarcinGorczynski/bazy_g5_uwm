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


#Zadanie 2

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

#Zadanie 3

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



