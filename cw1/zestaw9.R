## Zadanie

## Napisać program ktory dla zamienia znaki małej litery na wielkiej i odwrotnie w słowie 
## przekazanym przez parametr

zamiana_liter = function(slowo){
  wektor <- strsplit(slowo,"")
  wektor2 <- unlist(wektor)
  ilosc_elementow <- length(wektor2)
  wektor3 <- wektor2
  for (i in 1:ilosc_elementow){
    if (wektor2[i]=="[zxcvbnmasdfghjklqwertyuiop]"){
      wektor3[i] =toupper(wektor2[i])}
    else if (wektor2[i]=="[ZXCVBNMASDFGHJKLQWERTYUIOP]"){
      wektor3[i]=tolower(wektor2[i])}
    }
  return(wektor3)
}