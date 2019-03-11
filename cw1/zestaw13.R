## Zadanie 

## Przygotowac funkcje, ktora podaje liczbe spółgłosek w zadanym słowie

ilosc_spolglosek = function(slowo){
  slowo1 <- tolower(slowo)
  slowo_bez_spolglosek <- gsub("[qwrtplkjhgfdszxcvbnmQWRTPLKJHGFDSZXCVBNM]","", slowo1)
  ile <- nchar(slowo)-nchar(slowo_bez_spolglosek)
  return(ile)
}
