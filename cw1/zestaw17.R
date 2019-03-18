## Zadanie
## Napisz funkcje wyznaczajaca liczbe cyfr podanych w tekscie

ilosc_cyfr = function(x){
  ile<-0
  for (i in 0:9) {
    for(j in 1:length(x)){
      if(is.element(x[j],i)==TRUE){
        ile=ile+1
      }
    }
  }
  return(ile)
}
