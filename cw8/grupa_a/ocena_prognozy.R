rmse <- function(rzeczywiste, predykcja) {
    if (length(rzeczywiste) != length(predykcja)) {
        warning("Wektory nie są tej samej długości.")
    }

    wartosc <- (rzeczywiste - predykcja) ^ 2
    blad <- sqrt(mean(wartosc, na.rm = TRUE))
    return(blad)
}

theil <- function(rzeczywiste, predykcja) {
    if (length(rzeczywiste) != length(predykcja)) {
        warning("Wektory nie są tej samej długości.")
    }

    rzeczywiste <- as.numeric(rzeczywiste)

    wynik <- rmse(rzeczywiste, predykcja) /
        rmse(rzeczywiste, dplyr::lag(rzeczywiste))
    return(wynik)
}
