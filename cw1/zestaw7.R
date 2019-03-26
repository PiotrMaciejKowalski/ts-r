## Zadanie

## Przygotować funkcję, która dla danej liczby znajduje sumę jej cyfr

suma_cyfr <- function(liczba){
  digitsum <- sum(floor(liczba / 10^(0:(nchar(liczba) - 1))) %% 10)
  return(digitsum)
}

suma = suma_cyfr(liczba = 251)
print(suma)
