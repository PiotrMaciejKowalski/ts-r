## Zadanie 

## Przygotować funkcję która dla danej liczby znajduje największą liczbę całkowitę mniejszą 
## od pierwiastka z danej

mniejsza_od_pierwiastka = function(liczba){
  
  if(!is.numeric(liczba)){
    return(cat('Argument nie jest liczbą!'))
  } else if (liczba<0) {
    return(NA)
    #Pierwiastek z liczby ujemnej jest liczbą zespoloną.
    #Największą liczbę całkowitą mniejszą od pierwiastka z liczby ujemnej obliczamy dzięki funkji podłoga,
    #jednak funkcja ta operuje jedynie na zbiorze liczb rzeczywistych.
  } else {
    wynik <- 0
    while(wynik * wynik < liczba){
      wynik <- wynik + 1
    }
      wynik <- wynik - 1
    return(wynik)
  }
}
