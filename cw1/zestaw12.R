## Zadanie 

## Przygotowac funkcje, ktora sprawdza czy w danym slowie znajduje sie litera a potem zwraca 
## wektor pozycji na ktorych zostaly odszukane te litery. Niech domyslnie ignoruje wielkosc liter

znajdz_a=function(slowo){
  slowo1<-tolower(slowo)
  slowo2<-strsplit(slowo1,"")
  slowo3<-unlist(slowo2)
  return(grep("a",slowo3))
  
}
##przyklad
##znajdz_a("lara")

  


## przyklad
## znajdz_litere('Matematyka', 'a') -> c(2,6,10) 