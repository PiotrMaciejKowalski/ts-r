## Zadanie 

## Przygotowac funkcje ktora rysuje podroz pewnego 'X' tj przesuwa w prawo X w kolejnych linijkach 
## pelny -

podrozujacy_x = function(dlugosc_linii){
  line <- rep("-", dlugosc_linii)
  
  for(position in 1:dlugosc_linii){
    currentLine <- line
    currentLine[position] <- "X"
    readyLine <- paste(currentLine, collapse = '')
    print(readyLine)
  }
}

## np
## podrozujacy_x(5)

## X----
## -X---
## --X--
## ---X-
## ----X