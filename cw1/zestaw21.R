## Zadanie 

## Przygotowac funkcje, ktora podaje liczbe samoglosek w zadanym słowie

ilosc_samoglosek = function(slowo){
  wyraz = tolower(slowo)
  spolgloski = gsub("[aeiouy]","",wyraz)
  ile = nchar(slowo)-nchar(spolgloski)
  return(ile)
}