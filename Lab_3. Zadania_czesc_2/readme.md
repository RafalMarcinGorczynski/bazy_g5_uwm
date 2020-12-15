# 1.
```sql
SELECT d.nazwa, MIN(p.pensja) AS 'minimalna pensja', MAX(p.pensja) AS 'maksymalna pensja', AVG(p.pensja) AS 'srednia pensja'
FROM pracownik p, dzial d
WHERE d.id_dzialu=p.dzial
GROUP BY p.dzial;
```

# 2.
```sql
SELECT k.pelna_nazwa, ROUND(SUM(pz.ilosc*pz.cena),2) AS wartosc_zamowienia
FROM pozycja_zamowienia pz, zamowienie z, klient k
WHERE pz.zamowienie=z.id_zamowienia AND z.klient=k.id_klienta
GROUP BY k.pelna_nazwa
ORDER by wartosc_zamowienia DESC
LIMIT 10;
```

# 3.
```sql
SELECT YEAR(data_zamowienia) AS rok, SUM(p.ilosc*p.cena) AS przychod
FROM zamowienie z, pozycja_zamowienia p
WHERE z.id_zamowienia = p.zamowienie
GROUP BY rok
ORDER BY przychod DESC;
```

# 4.
```sql
SELECT ROUND(SUM(pz.ilosc*pz.cena),2) AS suma_anulowanych_zamowien
FROM pozycja_zamowienia pz, zamowienie z, status_zamowienia s
WHERE z.id_zamowienia=pz.zamowienie AND s.id_statusu_zamowienia=z.status_zamowienia
AND s.id_statusu_zamowienia=6;
```

# 5.
```sql
SELECT a.miejscowosc,COUNT(DISTINCT z.id_zamowienia) AS ilosc_zamowien, ROUND(SUM(pz.ilosc*pz.cena)) AS suma_zamowien
FROM pozycja_zamowienia pz, zamowienie z, klient k, adres_klienta a, typ_adresu t
WHERE z.id_zamowienia=pz.zamowienie AND k.id_klienta=z.klient AND k.id_klienta=a.klient AND t.id_typu=a.typ_adresu
AND t.nazwa = 'podstawowy'
GROUP BY a.miejscowosc;
```

# 6.
```sql
SELECT ROUND(SUM(pz.ilosc*pz.cena),2) AS dotychczasowy_dochod
FROM pozycja_zamowienia pz, zamowienie z, status_zamowienia s
WHERE pz.zamowienie=z.id_zamowienia AND z.status_zamowienia=s.id_statusu_zamowienia
AND s.id_statusu_zamowienia=5;
```

#7.
```sql
SELECT YEAR(data_zamowienia) AS Rok, ROUND(SUM((p.ilosc*p.cena)-(p.ilosc*t.cena_zakupu)),2) AS Dochod
FROM zamowienie z, pozycja_zamowienia p, towar t
WHERE z.id_zamowienia = p.zamowienie
GROUP BY rok
ORDER BY rok DESC;

# 8.
```sql
SELECT k.nazwa_kategori, COUNT(s.ilosc) AS ilosc, ROUND(SUM(s.ilosc*t.cena_zakupu),2) AS wartosc
FROM kategoria k, stan_magazynowy s, towar t
WHERE k.id_kategori=t.kategoria AND s.towar=t.id_towaru
GROUP BY k.nazwa_kategori;
```

# 9. 
```sql
SET sql_mode=(SELECT REPLACE(@@sql_mode,'ONLY_FULL_GROUP_BY',''));

SELECT MONTHNAME(data_urodzenia) AS Miesiac, COUNT(*) AS 'Liczba pracownikow'
FROM pracownik 
GROUP BY Miesiac
ORDER BY MONTH(data_urodzenia) ASC;
```

# 10.
```sql
SELECT p.imie, p.nazwisko,
p.data_zatrudnienia,
TIMESTAMPDIFF(MONTH, p.data_zatrudnienia, NOW()) AS 'dlugosc pracy w miesiacach',
TIMESTAMPDIFF(MONTH, p.data_zatrudnienia, NOW())*pensja AS koszt
FROM pracownik p;
```