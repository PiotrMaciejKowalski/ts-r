## Zadanie 

## Poniższy kod tworzy funkcję, która wylosowala i zapamietala liczbe od 1 do 100 a nastepnie
## odpowiada na pytanie czy liczba podana jej parametrem jest mniejsza od losowej

generator_funkcji_mniejsza_od_losowej = function(max){
  y = sample(1:max, 1)
  return(function(x){
    return(x < y)
  })
}

mniejsza_od_losowej_5 = generator_funkcji_mniejsza_od_losowej(5)

mniejsza_od_losowej_5(1)
mniejsza_od_losowej_5(2)
mniejsza_od_losowej_5(3)
mniejsza_od_losowej_5(4)
mniejsza_od_losowej_5(5)
mniejsza_od_losowej_5(6)

## Napisac funkcje, ktora odkryje tajemnicza wylosowana liczbe w funkcji mniejsza_od_losowej_100

mniejsza_od_losowej_100 = generator_funkcji_mniejsza_od_losowej(100)

znajdz_losowa = function()
{
  
}