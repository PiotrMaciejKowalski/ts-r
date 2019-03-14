## Zadanie 

## Napisać funkcję, ktora dla danego wektora liczb wylicza sume drugiej najmniejszej liczby i 
## drugiej największej. Działa przy założeniu, że wektor ma conajmniej 3 elementy

suma_vice_ekstremum = function(wektor){
  wektor1 <-unlist(strsplit(wektor,""))
  wektor_posortowany_rosnaco <-sort(wektor1)
  dlugosc_wektora <- length(wektor_posortowany_rosnaco)
  vice_maks <- as.numeric(wektor_posortowany_rosnaco[dlugosc_wektora-1])
  vice_min <- as.numeric(wektor_posortowany_rosnaco[2])
  suma <- vice_maks+vice_min
  if (dlugosc_wektora<3){
    suma <- "podaj minimum 3 elementy wektora"
  }
  return(suma)
}
