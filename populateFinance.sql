/*Waluta*/
INSERT INTO Isi.Waluta(NazwaWaluty,KursWymiany) VALUES ('Peso argentyńskie',103.12);
INSERT INTO Isi.Waluta(NazwaWaluty,KursWymiany) VALUES ('Dolar australijski',1.39);
INSERT INTO Isi.Waluta(NazwaWaluty,KursWymiany) VALUES ('Euro',0.88);
INSERT INTO Isi.Waluta(NazwaWaluty,KursWymiany) VALUES ('Real brazylijski',5.71);
INSERT INTO Isi.Waluta(NazwaWaluty,KursWymiany) VALUES ('Dolar kanadyjski',1.28);
INSERT INTO Isi.Waluta(NazwaWaluty,KursWymiany) VALUES ('Frank szwajcarski',0.92);
INSERT INTO Isi.Waluta(NazwaWaluty,KursWymiany) VALUES ('Juan renminbi',6.39);
INSERT INTO Isi.Waluta(NazwaWaluty,KursWymiany) VALUES ('Korona duńska',6.58);
INSERT INTO Isi.Waluta(NazwaWaluty,KursWymiany) VALUES ('Funt egipski',15.72);
INSERT INTO Isi.Waluta(NazwaWaluty,KursWymiany) VALUES ('Dolar hongkoński',7.80);
INSERT INTO Isi.Waluta(NazwaWaluty,KursWymiany) VALUES ('Nowy szekel izraelski',3.11);
INSERT INTO Isi.Waluta(NazwaWaluty,KursWymiany) VALUES ('Rupia indyjska',74.46);
INSERT INTO Isi.Waluta(NazwaWaluty,KursWymiany) VALUES ('Jen japoński',115.84);
INSERT INTO Isi.Waluta(NazwaWaluty,KursWymiany) VALUES ('Dinar kuwejcki',0.30);
INSERT INTO Isi.Waluta(NazwaWaluty,KursWymiany) VALUES ('Peso meksykański',20.55);
INSERT INTO Isi.Waluta(NazwaWaluty,KursWymiany) VALUES ('Naira nigeryjska',412.80);
INSERT INTO Isi.Waluta(NazwaWaluty,KursWymiany) VALUES ('Złoty polski',4.04);
INSERT INTO Isi.Waluta(NazwaWaluty,KursWymiany) VALUES ('Dolar singapurski',1.36);
INSERT INTO Isi.Waluta(NazwaWaluty,KursWymiany) VALUES ('Brytyjski funt szterling',0.74);
INSERT INTO Isi.Waluta(NazwaWaluty,KursWymiany) VALUES ('Dolar amerykański',1.00);
INSERT INTO Isi.Waluta(NazwaWaluty,KursWymiany) VALUES ('Kwacha zambijska',16.77);
INSERT INTO Isi.Waluta(NazwaWaluty,KursWymiany) VALUES ('Dolar Zimbabwe',361.90);

/*TypTransakcji*/
INSERT INTO Isi.TypTransakcji(NazwaTypu) VALUES ('Przelew');
INSERT INTO Isi.TypTransakcji(NazwaTypu) VALUES ('Wpłata');
INSERT INTO Isi.TypTransakcji(NazwaTypu) VALUES ('Wypłata');
INSERT INTO Isi.TypTransakcji(NazwaTypu) VALUES ('Zwrot');
INSERT INTO Isi.TypTransakcji(NazwaTypu) VALUES ('Korekta');

/*Klient*/
SET IDENTITY_INSERT Isi.Klient ON;

INSERT INTO Isi.Klient(KlientId,NazwaKlienta) VALUES (101,'Google');
INSERT INTO Isi.Klient(KlientId,NazwaKlienta) VALUES (102,'Amazon');
INSERT INTO Isi.Klient(KlientId,NazwaKlienta) VALUES (103,'Microsoft');
INSERT INTO Isi.Klient(KlientId,NazwaKlienta) VALUES (104,'Netflix');

SET IDENTITY_INSERT Isi.Klient OFF;

/*Konto*/
SET IDENTITY_INSERT Isi.Konto ON;

INSERT INTO Isi.Konto(KontoId,NazwaKonta,NumerKonta,Saldo,KlientId) VALUES (1001,'GoogleMainAcc','US 11 1127 1868 2135 090',9999999999.99,101);
INSERT INTO Isi.Konto(KontoId,NazwaKonta,NumerKonta,Saldo,KlientId) VALUES (1002,'AmazonMainAcc','US 12 1317 3268 2176 013',9999999999.99,102);
INSERT INTO Isi.Konto(KontoId,NazwaKonta,NumerKonta,Saldo,KlientId) VALUES (1003,'MicrosoftMainAcc','US 11 1417 1758 2545 810',9999999999.99,103);
INSERT INTO Isi.Konto(KontoId,NazwaKonta,NumerKonta,Saldo,KlientId) VALUES (1004,'NetflixMainAcc','US 13 1133 1824 2135 530',9999999999.99,104);

SET IDENTITY_INSERT Isi.Konto OFF;