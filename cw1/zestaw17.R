## Zadanie
## Napisz funkcje wyznaczajaca liczbe cyfr podanych w tekscie
ilosc_cyfr = function(x){
    ile<-0
    text = strsplit(x,"")[[1]]
    cyfry= c('0','1','2','3','4','5','6','7','8','9')
    for(j in 1:length(text)){
      if(is.element(text[j],cyfry)){
        ile=ile+1
      }
    }
    return(ile)
}
