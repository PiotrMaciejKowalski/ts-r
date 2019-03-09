## Zadanie

## Napisać funkcje, ktora znajduje najczesciej powtarzajaca litere się w tekscie

moda_z_tekstu = function(zdanie){
  z=tolower(zdanie)
  x=letters
  y<-seq(length=26,from=0, by=0)
  i=1
  j=1
  max=0
  moda="brak mody"
  while(j<27){
    n=gsub(x[j],"",z)
    y[j]=nchar(z)-nchar(n)
    j<-j+1
  }
  while(i<27){if(y[i]>max){max=y[i]
  moda=x[i]} 
    i=i+1}
  i2=1
  licznik=0
  while(i2<27){
    if(max>0 && y[i2]==max){licznik=licznik+1}
    i2=i2+1
  }
  i3=1
  if(licznik>1){
    moda=""
    while(licznik>0 && i3<27){
      if(y[i3]==max){moda=paste(moda,x[i3],sep=", ")
      licznik=licznik-1}
      i3=i3+1
      
    }
  }
  print(moda)
}