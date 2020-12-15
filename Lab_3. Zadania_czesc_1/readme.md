# Rozwiązanie zadanek

### 1.

```sql
SELECT imie, nazwisko, YEAR(data_urodzenia) from pracownik;
```

### 2.

```sql
SELECT imie, nazwisko, YEAR(NOW()) - YEAR(data_urodzenia) as wiek from pracownik;
```

### 3.

```sql
SELECT d.nazwa, count(p.id_pracownika) AS 'liczba pracownikow'
FROM dzial d, pracownik p 
WHERE d.id_dzialu=p.dzial 
GROUP BY d.nazwa;
```

### 4.

```sql
SELECT k.nazwa_kategori AS kategoria, sum(s.ilosc) AS 'liczba produktow'
FROM kategoria k, towar t, stan_magazynowy s
WHERE k.id_kategori=t.kategoria AND t.id_towaru=s.towar
GROUP BY k.id_kategori;
```

### 5.

```sql
SELECT k.nazwa_kategori AS kategoria, GROUP_CONCAT(t.nazwa_towaru) AS 'lista produktow'
FROM towar t, kategoria k
WHERE k.id_kategori=t.kategoria
GROUP BY k.nazwa_kategori;
```

### 6.

```sql
SELECT ROUND(AVG(pensja),2) AS 'srednie zarobki' 
FROM pracownik;
```

### 7.

```sql
SELECT ROUND(AVG(pensja),2) AS 'srednie zarobki' 
FROM pracownik
WHERE (YEAR(NOW())-YEAR(data_zatrudnienia))>=5;
```

### 8.

```sql
SELECT t.nazwa_towaru, COUNT(*) AS ilosc_zamowien FROM pozycja_zamowienia p, towar t
WHERE p.towar = t.id_towaru
GROUP BY t.nazwa_towaru
ORDER BY ilosc_zamowien DESC
LIMIT 10;
```

### 9.

```sql
SELECT z.numer_zamowienia, SUM(p.ilosc*p.cena) AS wartosc
FROM zamowienie z
JOIN pozycja_zamowienia p
ON z.id_zamowienia = p.zamowienie
WHERE z.data_zamowienia
BETWEEN '2017-01-01' AND '2017-03-31'
GROUP BY z.id_zamowienia;
```

### 10. 

```sql
SELECT p.imie, p.nazwisko, ROUND(SUM(pz.ilosc*pz.cena), 2) AS suma_wartosci_zamowien
FROM pracownik p, zamowienie z, pozycja_zamowienia pz
WHERE z.id_zamowienia = pz.zamowienie AND p.id_pracownika=z.pracownik_id_pracownika
GROUP BY p.id_pracownika 
ORDER BY suma_wartosci_zamowien DESC;
```