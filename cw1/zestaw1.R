## Zadanie 

## Przygotowac funkcje, która w zale¿noœci od podanego parametru wypisuje litery 
## alfabetu w pêtli (po 'z' znowu 'a') i przerywa po wypisaniu n liter

alfabet = function(n){
  abc<-c('a','b','c','d','e','f','g','h','i','j','k','l','m','n','o','p','q','r','s','t','u','v','w','x','y','z')
  if(n>=0){
  for(i in 0:n){
    cat(abc[i%%length(abc)])
  }}
  else{
    cat("Operacja niemo¿liwa do wykonania.")
  }
}
##TESTY
#alfabet(9)
#alfabet(0)
#alfabet(1)
#alfabet(26)
#alfabet(28)
#alfabet(-1)
#alfabet(100)
#alfabet('1')
#alfabet('45')
#alfabet(4.5)
#alfabet(7.8)
