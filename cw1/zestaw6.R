## Zadanie 

## Przygotować funkcję która dla danej liczby znajduje największą liczbę całkowitę mniejszą 
## od pierwiastka z danej

mniejsza_od_pierwiastka = function(liczba){
  
  if(typeof(liczba)!="double"){
    return(cat('Argument nie jest liczbą!'))
  } else if (liczba<0) {
    wynik <- sqrt(as.complex(liczba))
    return(cat('Pierwiastek z liczby ujemnej',liczba,'jest liczbą zespoloną równą',wynik,'.\nNajwiększą liczbę całkowitą mniejszą od pierwiastka z liczby ujemnej obliczamy dzięki funkji podłoga,\njednak funkcja ta operuje jedynie na zbiorze liczb rzeczywistych.'))
  } else {
    wynik <- floor(sqrt(liczba))
    #Dla liczby 16 pierwiastek wynosi 4. Zatem liczba całkowita mniejsza od pierwiastka z 16 (4) wynosi 3.
    if(wynik*wynik==liczba){
      wynik <- wynik - 1
    }
    return(cat('Największą liczbą całkowitą mniejszą od pierwiastka z',liczba,'jest',wynik,'.'))
  }
}