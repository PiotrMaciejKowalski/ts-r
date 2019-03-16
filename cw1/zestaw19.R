## Zadanie

## Napisac funkcje ktora zamienia slowo opisujace liczbe w systemi binarnym na liczbe w systemie
## dziesietnym

liczba = '1100' # to jest 12

na_dziesietny = function(liczba_binarna) {
  A <- 0
  lista <- strsplit(as.character(liczba_binarna), "")
  wektor <- unlist(lista)
  wekt.liczb <- strtoi(wektor)
  dl <- length(wekt.liczb)
  for (i in 1:dl) {
    A[i] <- wekt.liczb[dl - i + 1] * 2 ^ (i - 1)
  }
  A <- sum(A)
  return(A)
}

na_dziesietny(1100)
