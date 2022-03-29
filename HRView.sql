/*View*/
CREATE VIEW [Isi].[ZlecenieWyplat] AS
SELECT 'Google' AS [Firma], [Pracownik].[Imie], [Pracownik].[Nazwisko], [Pracownik].[Adres], [Pracownik].[KontoBankowe], 
		[Stanowisko].[Pensja], [Kraj].[NazwaKraju], [Kraj].[KodWaluty]
FROM (((([Isi].[Pracownik]
INNER JOIN [Isi].[Stanowisko] ON [Pracownik].[StanowiskoId] = [Stanowisko].[StanowiskoId])
INNER JOIN [Isi].[Oddzial] ON [pracownik].[OddzialId] = [Oddzial].[OddzialId])
INNER JOIN [Isi].[Lokalizacja] ON [Oddzial].[LokalizacjaId] = [Lokalizacja].[LokalizacjaId])
INNER JOIN [Isi].[Kraj] ON [Lokalizacja].[KrajId] = [Kraj].[KrajId])