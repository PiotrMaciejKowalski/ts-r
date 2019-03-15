## Zadanie

## Napisać funkcje szyfrujaca i deszyfrujaca za pomoca szyfru Cezara o okreslonym kroku
## Szyfr Cezara polega na przesuniecia kazdego znaku w slowie o stala liczbe znakow

szyfrowanie <- function(slowo, przesuniecie){
  slowo <- utf8ToInt(slowo)
  slowo <- slowo + przesuniecie
  slowo <- intToUtf8(slowo)
  return(slowo)
}

deszyfrowanie <- function(zaszyfrowane, przesuniecie){
  zaszyfrowane <- utf8ToInt(zaszyfrowane)
  zaszyfrowane <- zaszyfrowane - przesuniecie
  zaszyfrowane <-intToUtf8(zaszyfrowane)
  return(zaszyfrowane)
}

p = 5
zdanie = 'Ala ma kota'
kod = szyfrowanie(zdanie, przesuniecie = p)
print(kod)
odkodowane = deszyfrowanie(kod, przesuniecie = p)
print(odkodowane)
