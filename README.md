# SystemsIntegrationETL
Data integration between two systems using MS SSIS.

Na potrzeby integracji danych z wykorzystaniem procesu ETL wymyślono hipotetyczną sytuację, w której dane z systemu HR jednej firmy, muszą zostać pozyskane i przetransformowane, aby ostatecznie można je było załadować do systemu transakcyjno-bankowego FI. Oba systemy korzystają z baz danych, których strukturę również zaprojektowano na potrzeby zadania projektowego. 

W systemie HR przechowywane są podstawowe dane o pracownikach przedsiębiorstwa, takie jak dane personalne, dane adresowe oraz przynależność do odpowiednich oddziałów firmy. Zaprojektowana struktura przedstawiona została na diagramie poniżej.


Zgodnie z założeniami, system docelowy, w tym wypadku FI charakteryzował się zupełnie odmienną strukturą.


Ponadto zgodnie z dobrymi praktykami w tworzeniu rozwiązań ETL, nie można było dopuścić aby zaprojektowany proces ETL sięgał bezpośrednio do tabel systemowych żadnego z systemów. W związku z tym po stronie obu baz danych należało zaprojektować dodatkowe elementy stanowiące mosty między procesem ETL, a docelowymi tabelami systemowymi.


Po stronie systemu HR stworzono widok, zawierający dane miesięcznych wypłat dla pracowników przedsiębiorstwa. Fragment danych generowanych przez w/w widok przedstawiono poniżej.

 
Po stronie systemu FI jako element pośredniczący wykorzystano tzw. tabelę przejściową, która wypełniana jest w trakcie pojedynczego wykonania procesu ETL, po czym zostaje usunięta. Struktura takiej tabeli, zaprojektowana na potrzeby projektu wraz ze skryptem tworzącym przedstawiona została poniżej.

 
Dane, które znajdą się w tabeli przejściowej poddawane są dodatkowej transformacji, po czym, już po stronie systemu docelowego, rozsyłane do odpowiednich tabel systemowych.
