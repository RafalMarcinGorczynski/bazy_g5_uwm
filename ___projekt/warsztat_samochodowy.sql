CREATE DATABASE  IF NOT EXISTS `cabajk` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `cabajk`;
-- MySQL dump 10.13  Distrib 8.0.22, for Win64 (x86_64)
--
-- Host: localhost    Database: cabajk
-- ------------------------------------------------------
-- Server version	8.0.22

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Dumping data for table `czesci`
--

LOCK TABLES `czesci` WRITE;
/*!40000 ALTER TABLE `czesci` DISABLE KEYS */;
INSERT INTO `czesci` VALUES (1,'Akumulator','YUASA',314.00,'YUASA YBX3100 / VECTRA C',1),(2,'Reflektor','TYC',286.00,'20-0285-15-2 / VECTRA C',1),(3,'Termostat','ERA',189.00,'METALCAUCHO 03863 / VECTRA C',3),(4,'Żarówka','MAGNETI MARELLI',9.00,'002557100000',21),(5,'Filtr oleju','PURFLUX',67.00,'L471 / BMW X3',2),(6,'Filtr paliwa','PURFLUX',125.00,'FCS805 / BMW X3',2),(7,'Filtr powietrza','PURFLUX',144.00,'A1580 / BMW X3',2),(8,'Filtr kabinowy','CORTECO',77.00,'80001777 / BMW X3',2),(9,'Olej','LIQUI MOLY',193.00,'Top Tec 4300 5W30 5 litrów / BMW X3',20),(10,'Zestaw łańcucha rozrządu','CONTINENTAL',947.00,'CTAM TC1026K1 / Mercedes C W203',6),(11,'Kompletny zestaw uszczelek silnika','AJUSA',816.00,'50231800 / Mercedes C W203',6),(12,'Płyn do chłodnicy','FUCHS',118.00,'FRICOFIN/4 / Mercedes C W203',20),(13,'Pompa wody','MAGNETI MARELL',402.00,'350981730000 / Mercedes C W203',3),(14,'Klocki hamulcowe - komplet','ZIMMERMANN ',108.00,'21436.170.4 / Fiat Panda',5),(15,'Tarcza hamulcowa','ZIMMERMANN ',83.00,'230.2356.20 / Fiat Panda',5),(16,'Miska olejowa','FAST ',291.00,'FT49383 / Reanault Scenic III',6),(17,'Sprężyna zawieszenia','EIBACH ',216.00,'F11-75-012-02-VA / Reanault Scenic III',8),(18,'Sprzęgło - komplet','BORG & BECK ',754.00,'HK7864 / Astra G Coupe',7),(19,'Łożysko koła - komplet','OPTIMAL ',173.00,'202059 / Astra G Coupe',9),(20,'Pompa wspomagania układu kierowniczego ','TRW',958.00,'JER174/ Fabia I',10),(21,'Pasek klinowy wielorowkowy ','JAPKO',29.00,'5PK870 / Lanos',14),(22,'Tłumik środkowy','WALKER',163.00,'22011 / Lanos',15),(23,'Czujnik zużycia klocków hamulcowych','TRW',39.77,'22011 / 911',1),(24,'Czujnik ciśnienia doładowania','BOSCH',91.18,'0 261 230 247 / 911',1),(25,'Sonda lambda','BOSCH',364.72,'258 017 331 / 911',1),(26,'Regulator napięcia','AS-PL',149.00,'ARE0208S / ARTEON',1);
/*!40000 ALTER TABLE `czesci` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `kategoria`
--

LOCK TABLES `kategoria` WRITE;
/*!40000 ALTER TABLE `kategoria` DISABLE KEYS */;
INSERT INTO `kategoria` VALUES (1,'Elektryka'),(2,'Filtry'),(3,'Układ Chłodzenia'),(4,'Klimatyzacja'),(5,'Układ Hamulcowy'),(6,'Silnik'),(7,'Sprzęgło'),(8,'Zawieszenie i Amortyzacja'),(9,'Zawieszenie / Wahacze / Łożyska kół'),(10,'Układ Kierowniczy'),(11,'System Tworzenia Mieszanki Paliwowej'),(12,'Nadwozie'),(13,'Czyszczenie Szyb'),(14,'Paski Napędowe'),(15,'Układ Wydechowy'),(16,'Napęd Koła - Przeguby'),(17,'Układ Zapłonowy'),(18,'Ogrzewanie i Wentylacja'),(19,'Układ Zasilania Paliwem'),(20,'Oleje i Płyny'),(21,'Inne Części');
/*!40000 ALTER TABLE `kategoria` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `klient`
--

LOCK TABLES `klient` WRITE;
/*!40000 ALTER TABLE `klient` DISABLE KEYS */;
INSERT INTO `klient` VALUES (1,'Marek','Gordejko',698345254),(2,'Jakub','Melzer',789345678),(3,'Marcelina','Świtało',743234987),(4,'Tomasz Edward','Krupski',744352657),(5,'Izabela','Polit',687456783),(6,'Krzysztof','Stankiewicz',578498345),(7,'Łukasz','Malinowski',57345245),(8,'Wacław','Gołąb',523523523),(9,'Maciej','Targoński',676856457),(10,'Sylwester','Kochanowski',758457347);
/*!40000 ALTER TABLE `klient` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `pojazd`
--

LOCK TABLES `pojazd` WRITE;
/*!40000 ALTER TABLE `pojazd` DISABLE KEYS */;
INSERT INTO `pojazd` VALUES (1,'Opel','Vectra','kombi',2008,'diesel',1910,150,'manualna',1,1),(2,'BMW','X3 F25','SUV',2011,'diesel',2993,258,'automatyczna',2,2),(3,'Mercedes','C W203 AMG','sedan',2003,'benzyna',3199,354,'automatyczna',3,3),(4,'Fiat','Panda II','Van',2005,'benzyna',1108,54,'manualna',4,4),(5,'Renault','Scenic III','Van',2011,'diesel',1461,110,'manualna',5,5),(6,'Opel','Astra G','Coupe',2001,'benzyna',1998,190,'manualna',6,6),(7,'Skoda','Fabia I','Hatchback',2006,'benzyna',1390,101,'manualna',7,7),(8,'Daewoo','Lanos','Sedan',2003,'benzyna',1598,106,'manualna',8,8),(9,'Porsche','911','Coupe',2011,'benzyna',3996,500,'manualna',9,9),(10,'Volkswagen','Arteon','Fastback Facelifting',2020,'diesel',1968,200,'automatyczna',10,10);
/*!40000 ALTER TABLE `pojazd` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `pozycja_uslugi`
--

LOCK TABLES `pozycja_uslugi` WRITE;
/*!40000 ALTER TABLE `pozycja_uslugi` DISABLE KEYS */;
INSERT INTO `pozycja_uslugi` VALUES (1,1,1,1,413.00),(2,1,2,2,395.00),(3,1,3,3,338.00),(4,1,4,4,14.00),(5,2,5,9,167.00),(6,2,6,NULL,125.00),(7,2,7,NULL,144.00),(8,2,8,NULL,77.00),(9,2,9,10,252.00),(10,4,14,15,307.00),(11,4,15,NULL,166.00),(12,6,18,19,983.00),(13,6,19,20,322.00),(14,7,20,21,1107.00),(15,9,23,24,118.77),(16,9,24,25,220.18),(17,9,25,26,513.72),(18,10,26,27,258.00);
/*!40000 ALTER TABLE `pozycja_uslugi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `pracownik`
--

LOCK TABLES `pracownik` WRITE;
/*!40000 ALTER TABLE `pracownik` DISABLE KEYS */;
INSERT INTO `pracownik` VALUES (1,'Grzegorz','Kloc','1974-01-09','2012-09-01','kierownik',5432.00),(2,'Marian','Siekierka','1969-04-29','2010-02-02','mechanik',3420.00),(3,'Wiesław','Paleta','1971-11-21','2007-12-11','mechanik',3317.00),(4,'Artur','Pompka','1981-10-01','2017-02-11','mechanik',3537.00),(5,'Fryderyk','Szopen','1987-10-21','2018-09-11','mechanik',2222.00),(6,'Katarzyna','Figura','1967-11-11','2002-03-15','księgowa',3333.00),(7,'Mieczysław','Krawężnik','1968-05-30','2004-04-11','kierowca',2810.00);
/*!40000 ALTER TABLE `pracownik` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `stan_magazynowy`
--

LOCK TABLES `stan_magazynowy` WRITE;
/*!40000 ALTER TABLE `stan_magazynowy` DISABLE KEYS */;
INSERT INTO `stan_magazynowy` VALUES (1,3.00),(2,2.00),(3,1.00),(4,30.00),(5,4.00),(6,4.00),(7,4.00),(8,4.00),(9,13.00),(10,1.00),(11,2.00),(12,5.00),(13,2.00),(14,4.00),(15,12.00),(16,2.00),(17,8.00),(18,1.00),(19,4.00),(20,2.00),(21,3.00),(22,2.00),(23,1.00),(24,1.00),(25,1.00),(26,1.00);
/*!40000 ALTER TABLE `stan_magazynowy` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `status_uslugi`
--

LOCK TABLES `status_uslugi` WRITE;
/*!40000 ALTER TABLE `status_uslugi` DISABLE KEYS */;
INSERT INTO `status_uslugi` VALUES (1,'odebrany od klienta'),(2,'w trakcie naprawy'),(3,'gotowy do odbioru'),(4,'odebrany przez klienta');
/*!40000 ALTER TABLE `status_uslugi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `typ_uslugi`
--

LOCK TABLES `typ_uslugi` WRITE;
/*!40000 ALTER TABLE `typ_uslugi` DISABLE KEYS */;
INSERT INTO `typ_uslugi` VALUES (1,'Diagnostyka i wymiana akumulatora',99.00),(2,'Wymiana reflektora',109.00),(3,'Wymiana termostatu',149.00),(4,'Wymiana żarówki',5.00),(5,'Wymiana filtru oleju',35.00),(6,'Wymiana filtru paliwa',35.00),(7,'Wymiana filtru powietrza',35.00),(8,'Wymiana filtru kabinowego',35.00),(9,'Wymiana wszystkich filtrow',100.00),(10,'Wymiana oleju',59.00),(11,'Wymiana rozrządu i pompy wody',209.00),(12,'Wymiana uszczelek silnika',399.00),(13,'Wymiana klocków hamulcowych',149.00),(14,'Wymiana tarcz hamulcowych',149.00),(15,'Wymiana tarcz i klocków hamulcowych',199.00),(16,'Wymiana miski olejowej',99.00),(17,'Wymiana sprężyny zawieszenia',99.00),(18,'Wymiana dwóch sprężyn zawieszenia',169.00),(19,'Diagnoza i wymiana sprzęgła',229.00),(20,'Wymiana łożysk koła',149.00),(21,'Wymiana pompy wspomagania układu kierowniczego',149.00),(22,'Wymiana paska klinowego wielorowkowego',69.00),(23,'Wymiana tłumika środkowego',89.00),(24,'Wymiana czujnika zużycia klocków hamulcowych',79.00),(25,'Wymiana czujnika ciśnienia doładowania',129.00),(26,'Wymiana sondy lambda',149.00),(27,'Wymiana regulatora napięcia',109.00);
/*!40000 ALTER TABLE `typ_uslugi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `usluga`
--

LOCK TABLES `usluga` WRITE;
/*!40000 ALTER TABLE `usluga` DISABLE KEYS */;
INSERT INTO `usluga` VALUES (1,1,'2020-03-09','2020-03-12','2020-03-13',2,4),(2,2,'2020-03-19','2020-03-14',NULL,2,3),(3,3,'2020-12-18',NULL,NULL,2,2),(4,4,'2020-10-12','2020-10-18','2020-10-18',2,4),(5,5,'2020-12-22',NULL,NULL,3,1),(6,6,'2020-05-02','2020-05-07','2020-05-10',4,4),(7,7,'2020-06-12','2020-06-16','2020-06-17',5,4),(8,8,'2020-12-21',NULL,NULL,5,2),(9,9,'2020-12-14','2020-12-18','2020-12-18',3,4),(10,10,'2020-12-15','2020-12-18','2020-12-18',2,4);
/*!40000 ALTER TABLE `usluga` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-12-23 20:00:58
