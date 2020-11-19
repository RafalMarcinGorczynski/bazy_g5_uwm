# Zadanie 1

**a)* *
```sql
select * from postac where rodzaj='wiking' and nazwa!='Bjorn' order by data_ur;

delete from postac where id_postaci=6;
delete from postac where id_postaci=7;
```
**b)**

Najpierw nadpisujemy atrybut w celu usunięcia autoinkrementacji
```sql
alter table postac modify id_postaci;
```
Nie możemy jeszcze usunąć klucza głównego, ponieważ do kolumny id_postaci są przypisane klucze obce.

Teraz będziemy usuwać wszystkie klucze obce przypisane do kolumny id_postaci

Najpierw sprawdzamy nazwę klucza obcego
```sql
show create table walizka;
```
Teraz usuwamy
```sql
alter table walizka drop foreign key walizka_ibfk_1;
```
Sprawdzam nazwę w tabeli przetwory;
```sql
show create table przetwory;
```
//Usuwam
```sql
alter table przetwory drop foreign key przetwory_ibfk_1;
```
//Po usunięciu wszystkich obcych kluczy usuwam klucz główny z tabeli postac
```sql
alter table postac drop primary key;
```
# Zadanie 2

a)

alter table postac add column pesel varchar(11) first;

//po stworzeniu kolumny kolumna pesel ma domyślną wartość NULL
//aktualizujemy kolumnę pesel, aby wartości były unikalne

update postac set pesel='64758735462' +id_postaci;

//teraz ustawiam klucz główny na kolumnie pesel

alter table postac add primary key(pesel);

b)

//sprawdzam dotychczasową zawartość kolumny rodzaj

show create table postac;

//dopisuję do zawartości rodzaj 'syrena'

alter table postac modify rodzaj enum('wiking', 'ptak', 'kobieta', 'syrena');

c)

insert into postac values('92101012346', default, 'Gertruda Nieszczera', 'syrena', '1992-10-10', 28, default, default);

# Zadanie 3

a)

update postac set statek='Krysia' where nazwa like '%a%';

b)

uptade state set ladownosc=ladownosc*0.7
where data_wodowania beetwen '1901-01-01' and '2000-12-31';

c)

alter table postac add check(age<=1000);

# Zadanie 4

a) 

//Najpierw modyfikuję kolumnę rodzaj
alter table postac modify rodzaj enum('wiking','ptak','kobieta','syrena','waz');

//nastepnie dodaje węża Loko
insert into postac values('99092092345', 13, 'Loko', 'waz', '1999-09-20-, 21, default, default);

b)

//W tym wypadku mamy dwie opcje wykonania polecenia:
create table marynarz like postac;
insert into marynarz select * from postac where statek is not null;

//oraz
create table marynarz select * from postac where statek is not null;

//'create table like' przenosi klucze główne i obce, 
//a 'create table select' tego nie robi.

c)

//Używając create table like przenieśliśmy już klucze główne i obce

# Zadanie 5

a)

update postac set statek=default;

b)

delete from postac where id_postaci=9;

c)

delete from statek;

d)

// Żeby usunąć tabelę statek musimy usunąć klucz obcy 
//odnoszący się do tabeli statek z tabeli postac;

alter table postac drop foreign key postac_ibfk_1;

// Następnie usuwamy tabelę statek;

drop table statek;

e)

create table zwierz (id int primary key auto_increment, nazwa varchar(50), wiek int);

f)

insert into zwierz(nazwa,wiek) select nazwa,wiek from postac where rodzaj='ptak' and rodzaj='waz';

 	



 