lab_07 

# Zadanie 1

1.

```sql
Najpierw kopiujemy ponownie rekordy z tabeli kreatura z bazy wikingowie:
INSERT INTO kreatura (SELECT * FROM wikingowie.kreatura);
```

Następnie kopiujemy tabele uczestnicy, etapy_wyprawy, sektor, wyprawa:

```sql
CREATE TABLE uczestnicy SELECT * FROM wikingowie.uczestnicy;
CREATE TABLE etapy_wyprawy SELECT * FROM wikingowie.etapy_wyprawy;
CREATE TABLE sektor SELECT * FROM wikingowie.sektor;
CREATE TABLE wyprawa SELECT * FROM wikingowie.wyprawa;
```

2.

```sql
SELECT nazwa
FROM kreatura k
WHERE k.idKreatury NOT IN (SELECT id_uczestnika FROM uczestnicy);
```

3.

```sql
SELECT w.nazwa, sum(e.ilosc) AS suma_ilosci_ekwipunku
FROM wyprawa w, ekwipunek e, kreatura k, uczestnicy u, zasob z 
WHERE e.idKreatury = k.idKreatury AND u.id_wyprawy=w.id_wyprawy AND u.id_uczestnika=k.idKreatury AND e.idZasobu=z.idZasobu
GROUP BY w.nazwa;
```

# Zadanie 2

1.

```sql
select w.nazwa AS Nazwa_wyprawy, count(u.id_uczestnika) AS Liczba_uczestnikow ,group_concat(k.nazwa separator ' ,') AS Uczestnicy 
from wyprawa w, kreatura k, uczestnicy u 
where u.id_wyprawy=w.id_wyprawy and u.id_uczestnika=k.idKreatury 
group by w.nazwa;
```

2.

```sql
select e.idEtapu, s.nazwa as "nazwa sektora", k.nazwa as "nazwa kierownika" 
from etapy_wyprawy e, sektor s, wyprawa w,kreatura k 
where w.kierownik=k.idKreatury and w.id_wyprawy=e.idWyprawy and e.sektor=s.id_sektora 
order by w.data_rozpoczecia, e.kolejnosc;
```

# Zadanie 3

1.

```sql
SELECT s.nazwa,count(e.sektor) AS ilosc_odwiedzin 
FROM sektor s 
LEFT JOIN etapy_wyprawy e 
ON s.id_sektora=e.sektor 
GROUP BY s.nazwa;
```

2.

```sql
SELECT distinct k.nazwa, count(u.id_wyprawy) AS ilosc_wypraw, 
IF(count(u.id_uczestnika) = 0, 'nie bral udzialu w wyprawie', 'bral udzial w wyprawie') AS uczestnictwo
FROM kreatura k
LEFT JOIN uczestnicy u
ON k.idKreatury = u.id_uczestnika
GROUP BY k.nazwa;
```

# Zadanie 4

1.

```sql
SELECT w.nazwa, e.dziennik, length(e.dziennik) AS ilosc_znakow
FROM wyprawa w, etapy_wyprawy e
WHERE w.id_wyprawy=e.idEtapu
HAVING ilosc_znakow<400;
```

2.

```sql
select w.nazwa, sum(e.ilosc*z.waga)/COUNT(u.id_uczestnika) AS waga
FROM kreatura k
JOIN ekwipunek e
ON e.idKreatury = k.idKreatury
JOIN zasob z
ON e.idZasobu = z.idZasobu
JOIN uczestnicy u
ON u.id_uczestnika = k.idKreatury
JOIN wyprawa w
ON w.id_wyprawy = u.id_wyprawy
GROUP BY w.nazwa;
```

```sql
SELECT w.nazwa AS nazwa_wyprawy, SUM(z.waga*e.ilosc)/COUNT(u.id_uczestnika) AS srednia_waga
FROM kreatura k, ekwipunek e, zasob z, uczestnicy u, wyprawa w
WHERE k.idKreatury=e.idKreatury AND z.idZasobu=e.idZasobu AND k.idKreatury=u.id_uczestnika AND u.id_wyprawy=w.id_wyprawy 
GROUP BY w.nazwa;
```

# Zadanie 5

```sql
SELECT DISTINCT k.nazwa, w.nazwa, datediff(w.data_rozpoczecia, k.dataUr) AS "wiek(w dniach w momencie rozpoczecia wyprawy)" , s.nazwa
FROM kreatura k, wyprawa w, etapy_wyprawy e, sektor s, uczestnicy u
WHERE k.idKreatury=u.id_uczestnika AND w.id_wyprawy=u.id_wyprawy AND e.idWyprawy=w.id_wyprawy AND s.id_sektora=e.sektor
AND s.nazwa='Chatka dziadka'
ORDER BY w.nazwa;
```