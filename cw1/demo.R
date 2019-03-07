## Zadanie Demo

## Przygotuj funkcję, która dla parametrów wejściowych funkcji (a,b) znajduje miejsce
## zerowe funkcji y=ax+b

miejsce_zerowe = function(a, b){
  ## MAmy znaleźć zatem rozwiązanie równania 
  ## 0 = ax+b
  ## zatem -b = ax
  ## wiec x = -b/a
  if (a ==0 || b==0)
    odpowiedz = 0
  else if (a==0)
    odpowiedz = NA
  else
    odpowiedz = -b / a
  return(odpowiedz)
}