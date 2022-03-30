CREATE PROCEDURE [Isi].[uspDodajTransakcje]
AS
BEGIN
	DECLARE @dataOtrzymaniaZlecenia smalldatetime,
			@zleceniodawca varchar (35),
			@nazwaOdbiorcy varchar (45),
			@kontoOdbiorcy varchar (35),
			@adresOdbiorcy varchar (50),
			@ulica varchar (25),
			@miasto varchar (25),
			@kodPocztowy varchar (25),
			@kwotaUSD float,
			@kwota float,
			@zlecenieId int,
			@kodWaluty varchar (35),
			@walutaId int

	DECLARE crsTransakcje CURSOR FOR
	SELECT DISTINCT DataOtrzymaniaZlecenia, Zleceniodawca, NazwaOdbiorcy, NumerKontaOdbiorcy, AdresOdbiorcy, KwotaUSD, NazwaWaluty FROM Stage.StageFI

	OPEN crsTransakcje

	FETCH NEXT FROM crsTransakcje INTO @dataOtrzymaniaZlecenia, @zleceniodawca, @nazwaOdbiorcy, @kontoOdbiorcy, @adresOdbiorcy, @kwotaUSD, @kodWaluty

	WHILE @@FETCH_STATUS = 0
	BEGIN
		SELECT @ulica = (SELECT REPLACE(REVERSE(PARSENAME(REPLACE(REPLACE(REVERSE(@adresOdbiorcy), '.', ';'), ',', '.'), 1)), ';','.'))
		SELECT @miasto = (SELECT REPLACE(REVERSE(PARSENAME(REPLACE(REPLACE(REVERSE(@adresOdbiorcy), '.', ';'), ',', '.'), 2)), ';','.'))
		SELECT @kodPocztowy = (SELECT REPLACE(REVERSE(PARSENAME(REPLACE(REPLACE(REVERSE(@adresOdbiorcy), '.', ';'), ',', '.'), 3)), ';','.'))
		SELECT @walutaId = (SELECT KodId FROM Isi.Waluta WHERE NazwaWaluty = @kodWaluty)
		SELECT @kwota = @kwotaUSD * (SELECT KursWymiany FROM Isi.Waluta WHERE KodId = @walutaId)
		SELECT @zlecenieId = (SELECT ZlecenieId FROM Isi.Zlecenie WHERE DataZlecenia = @dataOtrzymaniaZlecenia AND KlientId = (SELECT KlientId FROM Isi.Klient WHERE NazwaKlienta = @zleceniodawca))

		INSERT INTO Isi.Transakcja(DataTransakcji,NazwaOdbiorcy,NumerKontaOdbiorcy,Ulica,Miasto,KodPocztowy,Kwota,ZlecenieId,KodId)
		VALUES (GETDATE(),@nazwaOdbiorcy,@kontoOdbiorcy,@ulica,@miasto,@kodPocztowy,@kwota,@zlecenieId,@walutaId)

		FETCH NEXT FROM crsTransakcje INTO @dataOtrzymaniaZlecenia, @zleceniodawca, @nazwaOdbiorcy, @kontoOdbiorcy, @adresOdbiorcy, @kwotaUSD, @kodWaluty
	END

	CLOSE crsTransakcje
	DEALLOCATE crsTransakcje

	DELETE FROM [FIDatabase].[Stage].[StageFI]

END

exec [Isi].[uspDodajTransakcje]

SELECT KlientId FROM Isi.Klient WHERE NazwaKlienta = @zleceniodawca

TRUNCATE TABLE Stage.StageFI
SELECT * FROM Stage.StageFI
SELECT * FROM [FIDatabase].[Isi].[Transakcja] WHERE DataTransakcji > '2022-01-20 20:36:00'
SELECT DISTINCT DataOtrzymaniaZlecenia, Zleceniodawca, NazwaOdbiorcy, NumerKontaOdbiorcy FROM Stage.StageFI
SELECT * FROM Isi.Zlecenie
SELECT * FROM Isi.Konto

DELETE FROM [FIDatabase].[Isi].[Zlecenie]
DELETE FROM [FIDatabase].[Isi].[Transakcja]

SELECT Stage.StageFI.AdresOdbiorcy
   , REPLACE(REVERSE(PARSENAME(REPLACE(REPLACE(REVERSE(AdresOdbiorcy), '.', ';'), ',', '.'), 1)), ';','.') AS [Ulica]
   , REPLACE(REVERSE(PARSENAME(REPLACE(REPLACE(REVERSE(AdresOdbiorcy), '.', ';'), ',', '.'), 2)), ';','.') AS [Miasto]
   , REPLACE(REVERSE(PARSENAME(REPLACE(REPLACE(REVERSE(AdresOdbiorcy), '.', ';'), ',', '.'), 3)), ';','.') AS [KodPocztowy]
FROM Stage.StageFI;
GO