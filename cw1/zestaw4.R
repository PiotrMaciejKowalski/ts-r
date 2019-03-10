## Zadanie

## Napisać funkcje, ktora znajduje najczesciej powtarzajaca litere się w tekscie

moda_z_tekstu = function(zdanie){
  zdanie_malymi_literami=tolower(zdanie)
  x=letters
  ilosc_liter_w_zdaniu<-rep(0,26)
  i=1
  j=1
  max=0
  moda=NULL
  while(j<27){
    n=gsub(x[j],"",zdanie_malymi_literami)
    ilosc_liter_w_zdaniu[j]=nchar(zdanie_malymi_literami)-nchar(n)
    j<-j+1
  }
  while(i<27){
    if( ilosc_liter_w_zdaniu[i]>max){
       max= ilosc_liter_w_zdaniu[i]
       } 
    i=i+1}
  i2=1
  licz=0
  while(i2<27){
    if(max>0 &&  ilosc_liter_w_zdaniu[i2]==max){
      licz=licz+1
      moda[licz]=x[i2]}
    i2=i2+1
  }

  return(moda)
}