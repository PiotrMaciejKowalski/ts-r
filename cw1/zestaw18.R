## Zadanie

## Napisz program generujacy macierz z tabliczka mnozenia o okreslonym rozmiarze

tabliczka_mnozenia = function(rozmiar){

    rozmiar_calk <- ceiling(rozmiar)

    if (rozmiar_calk <= 0) {
        print("Nie można skonstruować tabliczki mnożenia o takich wymiarach")
    } else {
        A <- matrix(rep(1:rozmiar_calk, times = rozmiar_calk), c(rozmiar_calk, rozmiar_calk))
        return(A * t(A))
    }

}

## np. tabliczka_mnozenia(4)
## 1 2 3 4
## 2 4 6 8
## 3 6 9 12
## 4 8 12 16
