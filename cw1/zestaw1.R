## Zadanie 

## Przygotowac funkcje, która w zależności od podanego parametru wypisuje litery 
## alfabetu w pętli (po 'z' znowu 'a') i przerywa po wypisaniu n liter

alfabet = function(n){
  abc<-c('a','b','c','d','e','f','g','h','i','j','k','l','m','n','o','p','q','r','s','t','u','v','w','x','y','z')
  if(n>0){
  for(i in 1:n){
    cat(abc[(i-1)%%(length(abc))+1])
  }}
  else{
    cat("Operacja niemożliwa do wykonania.")
  }
}
##TESTY
#alfabet(9)
#alfabet(0)
#alfabet(1)
#alfabet(2)
#alfabet(26)
#alfabet(27)
#alfabet(28)
#alfabet(-1)
#alfabet(100)
#alfabet(52)
#alfabet('1')
#alfabet('45')
#alfabet(4.5)
#alfabet(7.8)
