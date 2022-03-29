CREATE TRIGGER [Stage].[trgDodajZlecenie]
	ON [FIDatabase].[Stage].[StageFI]
	AFTER INSERT
AS
BEGIN
	DECLARE @liczbaTransakcji int,
			@wartoscTransakcji float,
			@klientId int,
			@dataOtrzymaniaZlecenia smalldatetime,
			@zleceniodawca varchar (25)

	DECLARE crsDataPlusZleceniodawca CURSOR FOR
	SELECT DISTINCT DataOtrzymaniaZlecenia, Zleceniodawca FROM Stage.StageFI 
	WHERE DataOtrzymaniaZlecenia > (SELECT MAX(DataZlecenia) FROM Isi.Zlecenie)

	OPEN crsDataPlusZleceniodawca

	FETCH NEXT FROM crsDataPlusZleceniodawca INTO @dataOtrzymaniaZlecenia, @zleceniodawca

	WHILE @@FETCH_STATUS = 0
	BEGIN
		SELECT @liczbaTransakcji = COUNT(*) FROM Stage.StageFI WHERE DataOtrzymaniaZlecenia = @dataOtrzymaniaZlecenia AND Zleceniodawca = @zleceniodawca
		SELECT @wartoscTransakcji = SUM(KwotaUSD) FROM Stage.StageFI WHERE DataOtrzymaniaZlecenia = @dataOtrzymaniaZlecenia AND Zleceniodawca = @zleceniodawca
		SELECT @klientId = (SELECT KlientId FROM Isi.Klient WHERE NazwaKlienta = @zleceniodawca)

		INSERT INTO Isi.Zlecenie(DataZlecenia,LiczbaTransakcji,WartoscTransakcji,KlientId) 
		VALUES (@dataOtrzymaniaZlecenia,@liczbaTransakcji,@wartoscTransakcji,@klientId)

		UPDATE Isi.Konto
		SET Saldo = Saldo - @wartoscTransakcji
		WHERE Konto.KlientId = @klientId

		FETCH NEXT FROM crsDataPlusZleceniodawca INTO @dataOtrzymaniaZlecenia, @zleceniodawca
	END

	CLOSE crsDataPlusZleceniodawca
	DEALLOCATE crsDataPlusZleceniodawca

	/*DELETE FROM [FIDatabase].[Stage].[StageFI]*/

END

SELECT DISTINCT DataOtrzymaniaZlecenia, NumerKontaOdbiorcy FROM Stage.StageFI
SELECT DISTINCT DataOtrzymaniaZlecenia, Zleceniodawca FROM Stage.StageFI

SELECT COUNT(*)
FROM Stage.StageFI
GROUP BY DataOtrzymaniaZlecenia, Zleceniodawca

TRUNCATE TABLE Stage.StageFI
SELECT * FROM Stage.StageFI
SELECT * FROM Isi.Zlecenie
SELECT * FROM Isi.Konto

exec [Stage].[uspDodajZlecenie]

CREATE PROCEDURE [Stage].[uspDodajZlecenie]
AS
BEGIN
	DECLARE @liczbaTransakcji int,
			@wartoscTransakcji decimal(12,2),
			@klientId int,
			@dataOtrzymaniaZlecenia smalldatetime,
			@zleceniodawca varchar (25)

	DECLARE crsDataPlusZleceniodawca CURSOR FOR
	SELECT DISTINCT DataOtrzymaniaZlecenia, Zleceniodawca FROM Stage.StageFI

	OPEN crsDataPlusZleceniodawca

	FETCH NEXT FROM crsDataPlusZleceniodawca INTO @dataOtrzymaniaZlecenia, @zleceniodawca
	print @dataOtrzymaniaZlecenia
	print @zleceniodawca

	WHILE @@FETCH_STATUS = 0
	BEGIN
		SELECT @liczbaTransakcji = COUNT(*) FROM Stage.StageFI WHERE DataOtrzymaniaZlecenia = @dataOtrzymaniaZlecenia AND Zleceniodawca = @zleceniodawca
		SELECT @wartoscTransakcji = SUM(KwotaUSD) FROM Stage.StageFI WHERE DataOtrzymaniaZlecenia = @dataOtrzymaniaZlecenia AND Zleceniodawca = @zleceniodawca
		SELECT @klientId = (SELECT KlientId FROM Isi.Klient WHERE NazwaKlienta = @zleceniodawca)

		INSERT INTO Isi.Zlecenie(DataZlecenia,LiczbaTransakcji,WartoscTransakcji,KlientId) 
		VALUES (@dataOtrzymaniaZlecenia,@liczbaTransakcji,@wartoscTransakcji,@klientId)

		UPDATE Isi.Konto
		SET Saldo = Saldo - @wartoscTransakcji
		WHERE Konto.KlientId = @klientId

		FETCH NEXT FROM crsDataPlusZleceniodawca INTO @dataOtrzymaniaZlecenia, @zleceniodawca
	END

	CLOSE crsDataPlusZleceniodawca
	DEALLOCATE crsDataPlusZleceniodawca

	/*DELETE FROM [FIDatabase].[Stage].[StageFI]*/

END

	DECLARE @dataOtrzymaniaZlecenia smalldatetime,
			@zleceniodawca varchar (25)

	DECLARE crsTest CURSOR FOR
	SELECT DISTINCT DataOtrzymaniaZlecenia, Zleceniodawca FROM Stage.StageFI

	OPEN crsTest

	FETCH NEXT FROM crsTest INTO @dataOtrzymaniaZlecenia, @zleceniodawca

	WHILE @@FETCH_STATUS = 0
	BEGIN
		print @dataOtrzymaniaZlecenia
		print @zleceniodawca

		FETCH NEXT FROM crsTest INTO @dataOtrzymaniaZlecenia, @zleceniodawca
	END

	CLOSE crsTest
	DEALLOCATE crsTest

---------------------------------------------------

	DECLARE @dataOtrzymaniaZlecenia smalldatetime,
			@zleceniodawca varchar (25)

	DECLARE crsTest CURSOR FOR
	SELECT DISTINCT DataOtrzymaniaZlecenia, Zleceniodawca FROM Stage.StageFI

	OPEN crsTest

	FETCH NEXT FROM crsTest INTO @dataOtrzymaniaZlecenia, @zleceniodawca

		print @dataOtrzymaniaZlecenia
		print @zleceniodawca

	FETCH NEXT FROM crsTest INTO @dataOtrzymaniaZlecenia, @zleceniodawca

		print @dataOtrzymaniaZlecenia
		print @zleceniodawca

	CLOSE crsTest
	DEALLOCATE crsTest