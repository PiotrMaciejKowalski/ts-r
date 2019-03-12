## Zadanie 

## Przygotować funkcję, ktora oblicza sume wszystkich dzielnikow pierwszych danej liczby


  isPrime = function(liczba){
  if(liczba < 2) return(FALSE);
  if(liczba == 2) return(TRUE);
  for(i in 2:(sqrt(liczba))){
    if(liczba%%i == 0){
      return(FALSE);
    } 
  }
  return(TRUE);
}

suma_dzielikow_pierwszych = function(liczba){
  liczba = abs(liczba);
  if(liczba<=2) return(0)
  sum=0;
  for(i in 2:(liczba/2)){
    if(liczba%%i ==0){
      if(isPrime(i)){
        sum= sum + i;
      }
    }
  }
  return(sum);
}

suma_dzielikow_pierwszych(12)
  
