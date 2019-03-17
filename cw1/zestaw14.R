## Zadanie 

## Napisać funkcję, ktora dla danego wektora liczb wylicza sume drugiej najmniejszej liczby i 
## drugiej największej. Działa przy założeniu, że wektor ma conajmniej 3 elementy

suma_vice_ekstremum = function(wektor1){
  wektor11 <-unlist(strsplit(wektor1,""))
  wektor1_posortowany_rosnaco <-sort(wektor11)
  dlugosc_wektora1 <- length(wektor1_posortowany_rosnaco)
  vice_maks <- as.numeric(wektor1_posortowany_rosnaco[dlugosc_wektora1-1])
  vice_min <- as.numeric(wektor1_posortowany_rosnaco[2])
  suma <- vice_maks+vice_min
  if (dlugosc_wektora1<3){
    suma <- "podaj minimum 3 elementy wektora"
  }
  return(suma)
}
