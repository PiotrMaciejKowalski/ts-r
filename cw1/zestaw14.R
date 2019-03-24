## Zadanie 

## Napisać funkcję, ktora dla danego wektora liczb wylicza sume drugiej najmniejszej liczby i 
## drugiej największej. Działa przy założeniu, że wektor ma conajmniej 3 elementy

suma_vice_ekstremum = function(wektor){
  posortowany_rosnaco_wektor <- sort(wektor)
  dlugosc_wektora <- length(posortowany_rosnaco_wektor)
  vice_maks <- posortowany_rosnaco_wektor[dlugosc_wektora-1]
  vice_min <- posortowany_rosnaco_wektor[2]
  suma <- vice_maks+vice_min
  if (dlugosc_wektora<3){
    suma <- FALSE
  }
  return(suma)
}
