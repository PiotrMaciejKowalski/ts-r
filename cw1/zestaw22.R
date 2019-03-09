## Zadanie

## Przygotuj funkcję, która otrzymując wektor danych na wejściu zwraca wektor tych samych elementów
## podanych w odwrotnej kolejności
odwrocona_kolejnosc <- function(wektor){
  i <- 1
  odwrocony_wektor=wektor
  while (i <= length(wektor)){
    odpowiednik = length(wektor)+1-i
    
    odwrocony_wektor[i]=(wektor[odpowiednik])
    i=i+1
  }
 return(odwrocony_wektor)
}
