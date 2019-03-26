## Zadanie

## Napisać funkcję, która sprawdzi czy w podanym wyrażeniu algebraicznym są poprawnie zadane nawiasy
## Np 3*(2+4*4)-2+(3+4^2)

sprawdzacz_nawiasow = function(wyrazenie){
  wyrazenie1 <-unlist(strsplit(wyrazenie,""))
  licznik <- 0
  dlugosc_wyrazenia <- length(wyrazenie1)
  nawiasy <- TRUE
  for(i in 1:dlugosc_wyrazenia){
    if (wyrazenie1[i]=="("){
      licznik = licznik+1
    }
    if (wyrazenie1[i]==")"){
      licznik = licznik-1
    }
  }
  if (licznik!=0){
    nawiasy = FALSE
  }
  else{
  otwarcie_nawiasu <- grep("[(]", wyrazenie1)
  zamkniecie_nawiasu <- grep("[)]", wyrazenie1)
  n <- length(otwarcie_nawiasu)
  roznica <- otwarcie_nawiasu-zamkniecie_nawiasu
  for (j in 1:n) {
    if (roznica[j]>0){
      nawiasy = FALSE

    }
  }
  }
  return(nawiasy)
}
