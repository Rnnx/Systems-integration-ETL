/*Region*/
SET IDENTITY_INSERT Isi.Region ON;
  
INSERT INTO Isi.Region(RegionId,NazwaRegionu) VALUES (1,'Europa');
INSERT INTO Isi.Region(RegionId,NazwaRegionu) VALUES (2,'Ameryka');
INSERT INTO Isi.Region(RegionId,NazwaRegionu) VALUES (3,'Azja');
INSERT INTO Isi.Region(RegionId,NazwaRegionu) VALUES (4,'Afryka');

SET IDENTITY_INSERT Isi.Region OFF;

/*Kraj*/
INSERT INTO Isi.kraj(KrajId,NazwaKraju,RegionId,KodWaluty) VALUES ('AR','Argentyna',2,'ARS');
INSERT INTO Isi.kraj(KrajId,NazwaKraju,RegionId,KodWaluty) VALUES ('AU','Australia',3,'AUD');
INSERT INTO Isi.kraj(KrajId,NazwaKraju,RegionId,KodWaluty) VALUES ('BE','Belgia',1,'EUR');
INSERT INTO Isi.kraj(KrajId,NazwaKraju,RegionId,KodWaluty) VALUES ('BR','Brazylia',2,'BRL');
INSERT INTO Isi.kraj(KrajId,NazwaKraju,RegionId,KodWaluty) VALUES ('CA','Kanada',2,'CAD');
INSERT INTO Isi.kraj(KrajId,NazwaKraju,RegionId,KodWaluty) VALUES ('CH','Szwajcaria',1,'CHF');
INSERT INTO Isi.kraj(KrajId,NazwaKraju,RegionId,KodWaluty) VALUES ('CN','Chiny',3,'CNY');
INSERT INTO Isi.kraj(KrajId,NazwaKraju,RegionId,KodWaluty) VALUES ('DE','Niemcy',1,'EUR');
INSERT INTO Isi.kraj(KrajId,NazwaKraju,RegionId,KodWaluty) VALUES ('DK','Dania',1,'DKK');
INSERT INTO Isi.kraj(KrajId,NazwaKraju,RegionId,KodWaluty) VALUES ('EG','Egipt',4,'EGP');
INSERT INTO Isi.kraj(KrajId,NazwaKraju,RegionId,KodWaluty) VALUES ('FR','Francja',1,'EUR');
INSERT INTO Isi.kraj(KrajId,NazwaKraju,RegionId,KodWaluty) VALUES ('HK','HongKong',3,'HDK');
INSERT INTO Isi.kraj(KrajId,NazwaKraju,RegionId,KodWaluty) VALUES ('IL','Izrael',4,'ILS');
INSERT INTO Isi.kraj(KrajId,NazwaKraju,RegionId,KodWaluty) VALUES ('IN','Indie',3,'INR');
INSERT INTO Isi.kraj(KrajId,NazwaKraju,RegionId,KodWaluty) VALUES ('IT','Włochy',1,'EUR');
INSERT INTO Isi.kraj(KrajId,NazwaKraju,RegionId,KodWaluty) VALUES ('JP','Japonia',3,'JPY');
INSERT INTO Isi.kraj(KrajId,NazwaKraju,RegionId,KodWaluty) VALUES ('KW','Kuweit',4,'KWD');
INSERT INTO Isi.kraj(KrajId,NazwaKraju,RegionId,KodWaluty) VALUES ('MX','Meksyk',2,'MXN');
INSERT INTO Isi.kraj(KrajId,NazwaKraju,RegionId,KodWaluty) VALUES ('NG','Nigeria',4,'NGN');
INSERT INTO Isi.kraj(KrajId,NazwaKraju,RegionId,KodWaluty) VALUES ('NL','Holandia',1,'EUR');
INSERT INTO Isi.kraj(KrajId,NazwaKraju,RegionId,KodWaluty) VALUES ('PL','Polska',1,'PLN');
INSERT INTO Isi.kraj(KrajId,NazwaKraju,RegionId,KodWaluty) VALUES ('SG','Singapur',3,'SGD');
INSERT INTO Isi.kraj(KrajId,NazwaKraju,RegionId,KodWaluty) VALUES ('UK','Wielka Brytania',1,'GBP');
INSERT INTO Isi.kraj(KrajId,NazwaKraju,RegionId,KodWaluty) VALUES ('US','Stany Zjednoczone',2,'USD');
INSERT INTO Isi.kraj(KrajId,NazwaKraju,RegionId,KodWaluty) VALUES ('ZM','Zambia',4,'ZMK');
INSERT INTO Isi.kraj(KrajId,NazwaKraju,RegionId,KodWaluty) VALUES ('ZW','Zimbabwe',4,'ZWD');

/*Lokalizacja*/
SET IDENTITY_INSERT Isi.Lokalizacja ON;

INSERT INTO Isi.Lokalizacja(LokalizacjaId,Ulica,KodPocztowy,Miasto,KrajId) VALUES (1400,'2014 Jabberwocky Rd','26192','Southlake','US');
INSERT INTO Isi.Lokalizacja(LokalizacjaId,Ulica,KodPocztowy,Miasto,KrajId) VALUES (1500,'2011 Interiors Blvd','99236','South San Francisco','US');
INSERT INTO Isi.Lokalizacja(LokalizacjaId,Ulica,KodPocztowy,Miasto,KrajId) VALUES (1700,'2004 Charade Rd','98199','Seattle','US');
INSERT INTO Isi.Lokalizacja(LokalizacjaId,Ulica,KodPocztowy,Miasto,KrajId) VALUES (1800,'147 Spadina Ave','M5V 2L7','Toronto','CA');
INSERT INTO Isi.Lokalizacja(LokalizacjaId,Ulica,KodPocztowy,Miasto,KrajId) VALUES (2400,'8204 Arthur St',NULL,'London','UK');
INSERT INTO Isi.Lokalizacja(LokalizacjaId,Ulica,KodPocztowy,Miasto,KrajId) VALUES (2500,'Magdalen Centre, The Oxford Science Park','OX9 9ZB','Oxford','UK');
INSERT INTO Isi.Lokalizacja(LokalizacjaId,Ulica,KodPocztowy,Miasto,KrajId) VALUES (2700,'Schwanthalerstr. 7031','80925','Munich','DE');
INSERT INTO Isi.Lokalizacja(LokalizacjaId,Ulica,KodPocztowy,Miasto,KrajId) VALUES (1920,'Kocjana 9','01-476','Warszawa','PL');

SET IDENTITY_INSERT Isi.Lokalizacja OFF;

/*stanowisko*/
SET IDENTITY_INSERT Isi.Stanowisko ON;

INSERT INTO Isi.Stanowisko(StanowiskoId,NazwaStanowiska,Pensja) VALUES (1,'Dyplomowany Księgowy',8800.00);
INSERT INTO Isi.Stanowisko(StanowiskoId,NazwaStanowiska,Pensja) VALUES (2,'Główny Księgowy',12100.00);
INSERT INTO Isi.Stanowisko(StanowiskoId,NazwaStanowiska,Pensja) VALUES (3,'Asystent Administracyjny',4500.00);
INSERT INTO Isi.Stanowisko(StanowiskoId,NazwaStanowiska,Pensja) VALUES (4,'Prezes',30000.00);
INSERT INTO Isi.Stanowisko(StanowiskoId,NazwaStanowiska,Pensja) VALUES (5,'Wiceprezes',22500.00);
INSERT INTO Isi.Stanowisko(StanowiskoId,NazwaStanowiska,Pensja) VALUES (6,'Księgowy',6600.00);
INSERT INTO Isi.Stanowisko(StanowiskoId,NazwaStanowiska,Pensja) VALUES (7,'Kierownik ds. finansów',12100.00);
INSERT INTO Isi.Stanowisko(StanowiskoId,NazwaStanowiska,Pensja) VALUES (8,'Pracownik HR',6500.00);
INSERT INTO Isi.Stanowisko(StanowiskoId,NazwaStanowiska,Pensja) VALUES (9,'Programista',7000.00);
INSERT INTO Isi.Stanowisko(StanowiskoId,NazwaStanowiska,Pensja) VALUES (10,'Kierownik ds. marketingu',12000.00);
INSERT INTO Isi.Stanowisko(StanowiskoId,NazwaStanowiska,Pensja) VALUES (11,'Pracownik marketingu',6500.00);
INSERT INTO Isi.Stanowisko(StanowiskoId,NazwaStanowiska,Pensja) VALUES (12,'Pracownik relacji publicznych',7500.00);
INSERT INTO Isi.Stanowisko(StanowiskoId,NazwaStanowiska,Pensja) VALUES (13,'Sprzedawca',4000.00);
INSERT INTO Isi.Stanowisko(StanowiskoId,NazwaStanowiska,Pensja) VALUES (14,'Kierownik ds. zaopatrzenia',11500.00);
INSERT INTO Isi.Stanowisko(StanowiskoId,NazwaStanowiska,Pensja) VALUES (15,'Kierownik ds. sprzedaży',15000.00);
INSERT INTO Isi.Stanowisko(StanowiskoId,NazwaStanowiska,Pensja) VALUES (16,'Pracownik działu finansowego',9000.00);
INSERT INTO Isi.Stanowisko(StanowiskoId,NazwaStanowiska,Pensja) VALUES (17,'Spedytor',4000.00);
INSERT INTO Isi.Stanowisko(StanowiskoId,NazwaStanowiska,Pensja) VALUES (18,'Pracownik magazynu',3500.00);
INSERT INTO Isi.Stanowisko(StanowiskoId,NazwaStanowiska,Pensja) VALUES (19,'Kierownik magazynu',7000.00);

SET IDENTITY_INSERT Isi.Stanowisko OFF;

/*Oddział*/
SET IDENTITY_INSERT Isi.Oddzial ON;

INSERT INTO Isi.Oddzial(OddzialId,NazwaOddzialu,LokalizacjaId) VALUES (1,'Administracja',1700);
INSERT INTO Isi.Oddzial(OddzialId,NazwaOddzialu,LokalizacjaId) VALUES (2,'Marketing',1800);
INSERT INTO Isi.Oddzial(OddzialId,NazwaOddzialu,LokalizacjaId) VALUES (3,'Zaopatrzenie',1700);
INSERT INTO Isi.Oddzial(OddzialId,NazwaOddzialu,LokalizacjaId) VALUES (4,'Human Resources',2400);
INSERT INTO Isi.Oddzial(OddzialId,NazwaOddzialu,LokalizacjaId) VALUES (5,'Spedycja',1500);
INSERT INTO Isi.Oddzial(OddzialId,NazwaOddzialu,LokalizacjaId) VALUES (6,'IT',1400);
INSERT INTO Isi.Oddzial(OddzialId,NazwaOddzialu,LokalizacjaId) VALUES (7,'Relacje Publiczne',2700);
INSERT INTO Isi.Oddzial(OddzialId,NazwaOddzialu,LokalizacjaId) VALUES (8,'Sprzedaż',2500);
INSERT INTO Isi.Oddzial(OddzialId,NazwaOddzialu,LokalizacjaId) VALUES (9,'Wykonawstwo',1700);
INSERT INTO Isi.Oddzial(OddzialId,NazwaOddzialu,LokalizacjaId) VALUES (10,'Finanse',1700);
INSERT INTO Isi.Oddzial(OddzialId,NazwaOddzialu,LokalizacjaId) VALUES (11,'Księgowość',1700);
INSERT INTO Isi.Oddzial(OddzialId,NazwaOddzialu,LokalizacjaId) VALUES (12,'Kontroling',1920);

SET IDENTITY_INSERT Isi.Oddzial OFF;

/*Pracownik*/
SET IDENTITY_INSERT Isi.Pracownik ON;

INSERT INTO Isi.Pracownik(PracownikId,Imie,Nazwisko,Adres,Email,Telefon,DataZatrudnienia,KontoBankowe,StanowiskoId,OddzialId) VALUES (100,'Steven','King','1002 N. Spoonwood Court,Berkeley,94704','steven.king@sqltutorial.org','515.123.4567','1987-06-17','US 13 7197 1315 8835 300',4,9);
INSERT INTO Isi.Pracownik(PracownikId,Imie,Nazwisko,Adres,Email,Telefon,DataZatrudnienia,KontoBankowe,StanowiskoId,OddzialId) VALUES (101,'Neena','Kochhar','1005 Fremont Street,Colma,94014','neena.kochhar@sqltutorial.org','515.123.4568','1989-09-21','US 13 7197 1315 8835 301',5,9);
INSERT INTO Isi.Pracownik(PracownikId,Imie,Nazwisko,Adres,Email,Telefon,DataZatrudnienia,KontoBankowe,StanowiskoId,OddzialId) VALUES (102,'Lex','De Haan','1005 Matterhorn Ct.,Mill Valley,94941','lex.de haan@sqltutorial.org','515.123.4569','1993-01-13','US 13 7197 1315 8835 302',5,9);
INSERT INTO Isi.Pracownik(PracownikId,Imie,Nazwisko,Adres,Email,Telefon,DataZatrudnienia,KontoBankowe,StanowiskoId,OddzialId) VALUES (103,'Alexander','Hunold','1006 Deercreek Ln,Bellflower,90706','alexander.hunold@sqltutorial.org','590.423.4567','1990-01-03','US 13 7197 1315 8835 303',9,6);
INSERT INTO Isi.Pracownik(PracownikId,Imie,Nazwisko,Adres,Email,Telefon,DataZatrudnienia,KontoBankowe,StanowiskoId,OddzialId) VALUES (104,'Bruce','Ernst','1006 Deercreek Ln,Torrance,90505','bruce.ernst@sqltutorial.org','590.423.4568','1991-05-21','US 13 7197 1315 8835 304',9,6);
INSERT INTO Isi.Pracownik(PracownikId,Imie,Nazwisko,Adres,Email,Telefon,DataZatrudnienia,KontoBankowe,StanowiskoId,OddzialId) VALUES (105,'David','Austin','1007 Cardinet Dr.,El Cajon,92020','david.austin@sqltutorial.org','590.423.4569','1997-06-25','US 13 7197 1315 8835 305',9,6);
INSERT INTO Isi.Pracownik(PracownikId,Imie,Nazwisko,Adres,Email,Telefon,DataZatrudnienia,KontoBankowe,StanowiskoId,OddzialId) VALUES (106,'Valli','Pataballa','1008 Lydia Lane,Burbank,91502','valli.pataballa@sqltutorial.org','590.423.4560','1998-02-05','US 13 7197 1315 8835 306',9,6);
INSERT INTO Isi.Pracownik(PracownikId,Imie,Nazwisko,Adres,Email,Telefon,DataZatrudnienia,KontoBankowe,StanowiskoId,OddzialId) VALUES (107,'Diana','Lorentz','1011 Yolanda Circle,Berkeley,94704','diana.lorentz@sqltutorial.org','590.423.5567','1999-02-07','US 13 7197 1315 8835 307',9,6);
INSERT INTO Isi.Pracownik(PracownikId,Imie,Nazwisko,Adres,Email,Telefon,DataZatrudnienia,KontoBankowe,StanowiskoId,OddzialId) VALUES (108,'Nancy','Greenberg','1016 Park Avenue,Burbank,91502','nancy.greenberg@sqltutorial.org','515.124.4569','1994-08-17','US 13 7197 1315 8835 308',7,10);
INSERT INTO Isi.Pracownik(PracownikId,Imie,Nazwisko,Adres,Email,Telefon,DataZatrudnienia,KontoBankowe,StanowiskoId,OddzialId) VALUES (109,'Daniel','Faviet','1019 Buchanan Road,Woodland Hills,91364','daniel.faviet@sqltutorial.org','515.124.4169','1994-08-16','US 13 7197 1315 8835 309',6,10);
INSERT INTO Isi.Pracownik(PracownikId,Imie,Nazwisko,Adres,Email,Telefon,DataZatrudnienia,KontoBankowe,StanowiskoId,OddzialId) VALUES (110,'John','Chen','1019 Carletto Drive,Berkeley,94704','john.chen@sqltutorial.org','515.124.4269','1997-09-28','US 13 7197 1315 8835 310',6,10);
INSERT INTO Isi.Pracownik(PracownikId,Imie,Nazwisko,Adres,Email,Telefon,DataZatrudnienia,KontoBankowe,StanowiskoId,OddzialId) VALUES (111,'Ismael','Sciarra','102 Vista Place,Santa Monica,90401','ismael.sciarra@sqltutorial.org','515.124.4369','1997-09-30','US 13 7197 1315 8835 311',6,10);
INSERT INTO Isi.Pracownik(PracownikId,Imie,Nazwisko,Adres,Email,Telefon,DataZatrudnienia,KontoBankowe,StanowiskoId,OddzialId) VALUES (112,'Jose Manuel','Urman','1020 Carletto Drive,Santa Cruz,95062','jose manuel.urman@sqltutorial.org','515.124.4469','1998-03-07','US 13 7197 1315 8835 312',6,10);
INSERT INTO Isi.Pracownik(PracownikId,Imie,Nazwisko,Adres,Email,Telefon,DataZatrudnienia,KontoBankowe,StanowiskoId,OddzialId) VALUES (113,'Luis','Popp','1023 Riveria Way,Burbank,91502','luis.popp@sqltutorial.org','515.124.4567','1999-12-07','US 13 7197 1315 8835 313',6,10);
INSERT INTO Isi.Pracownik(PracownikId,Imie,Nazwisko,Adres,Email,Telefon,DataZatrudnienia,KontoBankowe,StanowiskoId,OddzialId) VALUES (114,'Den','Raphaely','1024 Walnut Blvd.,Colma,94014','den.raphaely@sqltutorial.org','515.127.4561','1994-12-07','US 13 7197 1315 8835 314',14,3);
INSERT INTO Isi.Pracownik(PracownikId,Imie,Nazwisko,Adres,Email,Telefon,DataZatrudnienia,KontoBankowe,StanowiskoId,OddzialId) VALUES (115,'Alexander','Khoo','1028 Royal Oak Rd.,Burlingame,94010','alexander.khoo@sqltutorial.org','515.127.4562','1995-05-18','US 13 7197 1315 8835 315',13,3);
INSERT INTO Isi.Pracownik(PracownikId,Imie,Nazwisko,Adres,Email,Telefon,DataZatrudnienia,KontoBankowe,StanowiskoId,OddzialId) VALUES (116,'Shelli','Baida','1035 Arguello Blvd.,San Diego,92102','shelli.baida@sqltutorial.org','515.127.4563','1997-12-24','US 13 7197 1315 8835 316',13,3);
INSERT INTO Isi.Pracownik(PracownikId,Imie,Nazwisko,Adres,Email,Telefon,DataZatrudnienia,KontoBankowe,StanowiskoId,OddzialId) VALUES (117,'Sigal','Tobias','1039 Adelaide St.,West Covina,91791','sigal.tobias@sqltutorial.org','515.127.4564','1997-07-24','US 13 7197 1315 8835 317',13,3);
INSERT INTO Isi.Pracownik(PracownikId,Imie,Nazwisko,Adres,Email,Telefon,DataZatrudnienia,KontoBankowe,StanowiskoId,OddzialId) VALUES (118,'Guy','Himuro','104 Hilltop Dr.,Concord,94519','guy.himuro@sqltutorial.org','515.127.4565','1998-11-15','US 13 7197 1315 8835 318',13,3);
INSERT INTO Isi.Pracownik(PracownikId,Imie,Nazwisko,Adres,Email,Telefon,DataZatrudnienia,KontoBankowe,StanowiskoId,OddzialId) VALUES (119,'Karen','Colmenares','104 Hilltop Dr.,Concord,94519','karen.colmenares@sqltutorial.org','515.127.4566','1999-08-10','US 13 7197 1765 8835 000',13,3);
INSERT INTO Isi.Pracownik(PracownikId,Imie,Nazwisko,Adres,Email,Telefon,DataZatrudnienia,KontoBankowe,StanowiskoId,OddzialId) VALUES (120,'Matthew','Weiss','1040 Northridge Road,Woodland Hills,91364','matthew.weiss@sqltutorial.org','650.123.1234','1996-07-18','US 13 7197 1315 8835 319',19,5);
INSERT INTO Isi.Pracownik(PracownikId,Imie,Nazwisko,Adres,Email,Telefon,DataZatrudnienia,KontoBankowe,StanowiskoId,OddzialId) VALUES (121,'Adam','Fripp','1045 Lolita Drive,Torrance,90505','adam.fripp@sqltutorial.org','650.123.2234','1997-04-10','US 13 7197 1315 8835 320',19,5);
INSERT INTO Isi.Pracownik(PracownikId,Imie,Nazwisko,Adres,Email,Telefon,DataZatrudnienia,KontoBankowe,StanowiskoId,OddzialId) VALUES (122,'Payam','Kaufling','1046 San Carlos Avenue,Colma,94014','payam.kaufling@sqltutorial.org','650.123.3234','1995-05-01','US 13 7197 1315 8835 321',19,5);
INSERT INTO Isi.Pracownik(PracownikId,Imie,Nazwisko,Adres,Email,Telefon,DataZatrudnienia,KontoBankowe,StanowiskoId,OddzialId) VALUES (123,'Shanta','Vollman','105 Woodruff Ln.,Oakland,94611','shanta.vollman@sqltutorial.org','650.123.4234','1997-10-10','US 13 7197 1315 8835 322',19,5);
INSERT INTO Isi.Pracownik(PracownikId,Imie,Nazwisko,Adres,Email,Telefon,DataZatrudnienia,KontoBankowe,StanowiskoId,OddzialId) VALUES (126,'Irene','Mikkilineni','1052 Stanford Street,El Cajon,92020','irene.mikkilineni@sqltutorial.org','650.124.1224','1998-09-28','US 13 7197 1315 8835 323',18,5);
INSERT INTO Isi.Pracownik(PracownikId,Imie,Nazwisko,Adres,Email,Telefon,DataZatrudnienia,KontoBankowe,StanowiskoId,OddzialId) VALUES (145,'John','Russell','25095 W. Florissant,Ferguson,63135','john.russell@sqltutorial.org',NULL,'1996-10-01','GB 29 NWBK 6016 1331 9268 19',15,8);
INSERT INTO Isi.Pracownik(PracownikId,Imie,Nazwisko,Adres,Email,Telefon,DataZatrudnienia,KontoBankowe,StanowiskoId,OddzialId) VALUES (146,'Karen','Partners','6425 Nw Loop 410,San Antonio,78204','karen.partners@sqltutorial.org',NULL,'1997-01-05','GB 29 NWBK 6016 1331 9268 20',15,8);
INSERT INTO Isi.Pracownik(PracownikId,Imie,Nazwisko,Adres,Email,Telefon,DataZatrudnienia,KontoBankowe,StanowiskoId,OddzialId) VALUES (176,'Jonathon','Taylor','1005 Matterhorn Ct.,Cambridge,CB4 4BZ','jonathon.taylor@sqltutorial.org',NULL,'1998-03-24','GB 29 NWBK 6016 1331 9268 21',16,8);
INSERT INTO Isi.Pracownik(PracownikId,Imie,Nazwisko,Adres,Email,Telefon,DataZatrudnienia,KontoBankowe,StanowiskoId,OddzialId) VALUES (177,'Jack','Livingston','1005 Valley Oak Plaza,London,SW6 SBY','jack.livingston@sqltutorial.org',NULL,'1998-04-23','GB 29 NWBK 6016 1331 9268 22',16,8);
INSERT INTO Isi.Pracownik(PracownikId,Imie,Nazwisko,Adres,Email,Telefon,DataZatrudnienia,KontoBankowe,StanowiskoId,OddzialId) VALUES (178,'Kimberely','Grant','1019 Mt. Davidson Court,London,SW8 4BG','kimberely.grant@sqltutorial.org',NULL,'1999-05-24','GB 29 NWBK 6016 1331 9268 23',16,8);
INSERT INTO Isi.Pracownik(PracownikId,Imie,Nazwisko,Adres,Email,Telefon,DataZatrudnienia,KontoBankowe,StanowiskoId,OddzialId) VALUES (179,'Charles','Johnson','102 Vista Place,Milton Keynes,MK8 8DF','charles.johnson@sqltutorial.org',NULL,'2000-01-04','GB 29 NWBK 6016 1331 9268 24',16,8);
INSERT INTO Isi.Pracownik(PracownikId,Imie,Nazwisko,Adres,Email,Telefon,DataZatrudnienia,KontoBankowe,StanowiskoId,OddzialId) VALUES (192,'Sarah','Bell','1054 Vine Circle,Burbank,91502','sarah.bell@sqltutorial.org','650.501.1876','1996-02-04','US 13 7197 1315 8835 324',17,5);
INSERT INTO Isi.Pracownik(PracownikId,Imie,Nazwisko,Adres,Email,Telefon,DataZatrudnienia,KontoBankowe,StanowiskoId,OddzialId) VALUES (193,'Britney','Everett','1059 Stonewood Ct,Glendale,91203','britney.everett@sqltutorial.org','650.501.2876','1997-03-03','US 13 7197 1315 8835 325',17,5);
INSERT INTO Isi.Pracownik(PracownikId,Imie,Nazwisko,Adres,Email,Telefon,DataZatrudnienia,KontoBankowe,StanowiskoId,OddzialId) VALUES (200,'Jennifer','Whalen','1060 Mcelroy Court,Burbank,91502','jennifer.whalen@sqltutorial.org','515.123.4444','1987-09-17','US 13 7197 1315 8835 326',3,1);
INSERT INTO Isi.Pracownik(PracownikId,Imie,Nazwisko,Adres,Email,Telefon,DataZatrudnienia,KontoBankowe,StanowiskoId,OddzialId) VALUES (201,'Michael','Hartstein','6 rue des Pyrenees,Saint Ouen,41100','michael.hartstein@sqltutorial.org','515.123.5555','1996-02-17','CA 13 7197 1345 8835 300',10,2);
INSERT INTO Isi.Pracownik(PracownikId,Imie,Nazwisko,Adres,Email,Telefon,DataZatrudnienia,KontoBankowe,StanowiskoId,OddzialId) VALUES (202,'Pat','Fay','15 rue de Terre Neuve,Saint Ouen,41100','pat.fay@sqltutorial.org','603.123.6666','1997-08-17','CA 13 7197 1315 8735 301',11,2);
INSERT INTO Isi.Pracownik(PracownikId,Imie,Nazwisko,Adres,Email,Telefon,DataZatrudnienia,KontoBankowe,StanowiskoId,OddzialId) VALUES (203,'Susan','Mavris','1023 Riviera Way,Oxford,OX1','susan.mavris@sqltutorial.org','515.123.7777','1994-06-07','GB 29 NWBK 6016 1331 9268 25',8,4);
INSERT INTO Isi.Pracownik(PracownikId,Imie,Nazwisko,Adres,Email,Telefon,DataZatrudnienia,KontoBankowe,StanowiskoId,OddzialId) VALUES (204,'Hermann','Baer','3229 Mark Twain Dr.,Hamburg,22001','hermann.baer@sqltutorial.org','515.123.8888','1994-06-07','DE 89 3704 0044 0532 0130 00',12,7);
INSERT INTO Isi.Pracownik(PracownikId,Imie,Nazwisko,Adres,Email,Telefon,DataZatrudnienia,KontoBankowe,StanowiskoId,OddzialId) VALUES (205,'Shelley','Higgins','1061 Buskrik Avenue,Coronado,92118','shelley.higgins@sqltutorial.org','515.123.8080','1994-06-07','CA 13 2197 1316 8835 302',2,11);
INSERT INTO Isi.Pracownik(PracownikId,Imie,Nazwisko,Adres,Email,Telefon,DataZatrudnienia,KontoBankowe,StanowiskoId,OddzialId) VALUES (206,'William','Gietz','1063 Pinehurst Court,Lakewood,90712','william.gietz@sqltutorial.org','515.123.8181','1994-06-07','US 13 7197 1315 8835 327',1,11);
INSERT INTO Isi.Pracownik(PracownikId,Imie,Nazwisko,Adres,Email,Telefon,DataZatrudnienia,KontoBankowe,StanowiskoId,OddzialId) VALUES (301,'Natalia','Zastępowska','Kocjana 9,Warszawa,01-476','natalia.zastepowska@student.wat.edu.pl','512.123.8181','2019-10-01','PL 80 1240 1204 0000 3002 0135 5333',2,12);
INSERT INTO Isi.Pracownik(PracownikId,Imie,Nazwisko,Adres,Email,Telefon,DataZatrudnienia,KontoBankowe,StanowiskoId,OddzialId) VALUES (302,'Krzysztof','Maroszek','Kocjana 9, Warszawa,01-476','krzysztof.maroszek@student.wat.edu.pl','511.123.8181','2019-10-01','PL 65 3140 1804 0000 3002 0755 5332',1,12);
INSERT INTO Isi.Pracownik(PracownikId,Imie,Nazwisko,Adres,Email,Telefon,DataZatrudnienia,KontoBankowe,StanowiskoId,OddzialId) VALUES (303,'Kamil','Słabicki','Kocjana 9,Warszawa,01-476','kamil.slabicki@student.wat.edu.pl','501.123.8181','2019-10-01','PL 27 1140 2004 0000 3132 0435 5387',6,12);
INSERT INTO Isi.Pracownik(PracownikId,Imie,Nazwisko,Adres,Email,Telefon,DataZatrudnienia,KontoBankowe,StanowiskoId,OddzialId) VALUES (304,'Anna','Świątek','Kocjana 9,Warszawa,01-476','anna.swiatek@student.wat.edu.pl','502.123.8181','2019-10-01','PL 27 7770 3204 0000 3452 0135 5313',6,12);

SET IDENTITY_INSERT Isi.Pracownik OFF;