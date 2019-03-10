## Zadanie 

## Przygotowac funkcje, ktora podaje liczbe spółgłosek w zadanym słowie

ilosc_spolglosek = function(slowo){
  slowo1 <- tolower(slowo)
  slowo_bez_samoglosek <- gsub("[aeiouy]","", slowo1)
  ile <- nchar(slowo_bez_samoglosek)
  print(ile)
}