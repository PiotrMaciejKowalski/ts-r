bisekcja <- function(f, a, b, epsilon)
{
  while (abs(a - b) > 2*epsilon){
    x1 = (a + b) / 2
    
    if (f(x1) == 0){
      break}
    else if (f(x1) * f(a) < 0){
      b = x1} 
    else{
      a = x1} 
  }
  return((a + b) / 2) 
  
}
f <- function(x) x^5-x^2-1

bisekcja(f,-2,2,0.0001)

znak <- function(x){
  if (x>0){wartosc = 1}
  else if (x==0){wartosc = 0}
  else {wartosc = -1}
  return(wartosc)
}

mzerowe <- function(f,a,b)
{
  skok = 0.01 
  miejsca_zerowe = c(NULL) 
  ostatnie_a = a
  a = a+skok      
  while (a < b){
    while (znak(f(a))*znak(f(ostatnie_a))==1){
      ostatnie_a = a
      a = a+skok
      if (a > b) {break}
    }
    if (f(a)==0){miejsca_zerowe = c(miejsca_zerowe,a)}
    else if (a < b){miejsca_zerowe = c(miejsca_zerowe,bisekcja(f,ostatnie_a,a,0.0001)) }
    ostatnie_a = a
    a = a+skok 
  }
  return(miejsca_zerowe)
}

mzerowe(sin,-7,7)