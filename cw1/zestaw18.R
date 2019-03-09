## Zadanie

## Napisz program generujacy macierz z tabliczka mnozenia o okreslonym rozmiarze

tabliczka_mnozenia = function(rozmiar){

    if (rozmiar > 0) {
        rozmiar_calk <- as.integer(rozmiar)
        x <- 1:rozmiar_calk
        A <- outer(x, x, FUN = "*")
        return(A)
    } else {
        print("Nie można skonstruować tabliczki mnożenia o takich wymiarach")
    }

}

## np. tabliczka_mnozenia(4)
## 1 2 3 4
## 2 4 6 8
## 3 6 9 12
## 4 8 12 16
