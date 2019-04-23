## Zadanie
## Napisać funkcję znajduja miejsce zerowe pewnej funkcji stosujac algorytm bisekcji

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

bisekcja(sin, 3, 4, 0.001)