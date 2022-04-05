CREATE PROCEDURE Isi.uspKodyWalut
AS BEGIN
UPDATE [Stage].[StageFI]
SET [KodWaluty] = REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(
				  REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(
				  [KodWaluty], 'ARS', 'Peso argentyńskie')
				  , 'AUD', 'Dolar australijski')
				  , 'EUR', 'Euro')
				  , 'BRL', 'Real brazylijski')
				  , 'CAD', 'Dolar kanadyjski')
				  , 'CHF', 'Frank szwajcarski')
				  , 'CNY', 'Juan renminbi')
				  , 'DKK', 'Korona duńska')
				  , 'EGP', 'Funt egipski')
				  , 'HDK', 'Dolar hongkoński')
				  , 'ILS', 'Nowy szekel izraelski')
				  , 'INR', 'Rupia indyjska')
				  , 'JPY', 'Jen japoński')
				  , 'KWD', 'Dinar kuwejcki')
				  , 'MXN', 'Peso meksykański')
				  , 'NGN', 'Naira nigeryjska')
				  , 'PLN', 'Złoty polski')
				  , 'SGD', 'Dolar singapurski')
				  , 'GBP', 'Brytyjski funt szterling')
				  , 'USD', 'Dolar amerykański')
				  , 'ZMK', 'Kwacha zambijska')
				  , 'ZWD', 'Dolar Zimbabwe');
END

/*(KodWaluty == "ARS" ? "Peso argentyńskie" :
(KodWaluty == "AUD" ? "Dolar australijski" :
(KodWaluty == "EUR" ? "Euro" :
(KodWaluty == "BRL" ? "Real brazylijski" :
(KodWaluty == "CAD" ? "Dolar kanadyjski" :
(KodWaluty == "CHF" ? "Frank szwajcarski" :
(KodWaluty == "CNY" ? "Juan renminbi" :
(KodWaluty == "DKK" ? "Korona duńska" :
(KodWaluty == "EGP" ? "Funt egipski" :
(KodWaluty == "HDK" ? "Dolar hongkoński" :
(KodWaluty == "ILS" ? "Nowy szekel izraelski" :
(KodWaluty == "INR" ? "Rupia indyjska" :
(KodWaluty == "JPY" ? "Jen japoński" :
(KodWaluty == "KWD" ? "Dinar kuwejcki" :
(KodWaluty == "MXN" ? "Peso meksykański" :
(KodWaluty == "NGN" ? "Naira nigeryjska" :
(KodWaluty == "PLN" ? "Złoty polski" :
(KodWaluty == "SGD" ? "Dolar singapurski" :
(KodWaluty == "GBP" ? "Brytyjski funt szterling" :
(KodWaluty == "USD" ? "Dolar amerykański" :
(KodWaluty == "ZMK" ? "Kwacha zambijska" :
(KodWaluty == "ZWD" ? "Dolar Zimbabwe" : WalutaKraju))))))))))))))))))))))*/

/*
SET [KodWaluty] = REPLACE([KodWaluty], 'ARS', 'Peso argentyńskie')
SET [KodWaluty] = REPLACE([KodWaluty], 'AUD', 'Dolar australijski')
SET [KodWaluty] = REPLACE([KodWaluty], 'EUR', 'Euro')
SET [KodWaluty] = REPLACE([KodWaluty], 'BRL', 'Real brazylijski')
SET [KodWaluty] = REPLACE([KodWaluty], 'CAD', 'Dolar kanadyjski')
SET [KodWaluty] = REPLACE([KodWaluty], 'CHF', 'Frank szwajcarski')
SET [KodWaluty] = REPLACE([KodWaluty], 'CNY', 'Juan renminbi')
SET [KodWaluty] = REPLACE([KodWaluty], 'DKK', 'Korona duńska')
SET [KodWaluty] = REPLACE([KodWaluty], 'EGP', 'Funt egipski')
SET [KodWaluty] = REPLACE([KodWaluty], 'HDK', 'Dolar hongkoński')
SET [KodWaluty] = REPLACE([KodWaluty], 'ILS', 'Nowy szekel izraelski')
SET [KodWaluty] = REPLACE([KodWaluty], 'INR', 'Rupia indyjska')
SET [KodWaluty] = REPLACE([KodWaluty], 'JPY', 'Jen japoński')
SET [KodWaluty] = REPLACE([KodWaluty], 'KWD', 'Dinar kuwejcki')
SET [KodWaluty] = REPLACE([KodWaluty], 'MXN', 'Peso meksykański')
SET [KodWaluty] = REPLACE([KodWaluty], 'NGN', 'Naira nigeryjska')
SET [KodWaluty] = REPLACE([KodWaluty], 'PLN', 'Złoty polski')
SET [KodWaluty] = REPLACE([KodWaluty], 'SGD', 'Dolar singapurski')
SET [KodWaluty] = REPLACE([KodWaluty], 'GBP', 'Brytyjski funt szterling')
SET [KodWaluty] = REPLACE([KodWaluty], 'USD', 'Dolar amerykański')
SET [KodWaluty] = REPLACE([KodWaluty], 'ZMK', 'Kwacha zambijska')
SET [KodWaluty] = REPLACE([KodWaluty], 'ZWD', 'Dolar Zimbabwe')
*/