## Zadanie

## Przygotuj funkcję, która przeprowadza konwersję liczb całkowitych w zakresie 0-1mln do zapisu
## liczb rzymskich

na_rzymskie <- function(numbers) {
    # Udało mi się znależć niektóre źródła, które mówią o symbolach dla 5000 wzwyż,
    # zwykle z linią nad, ale nie mam pojęcia na implementację. Stąd skrócony zakres
    # obsługi liczb wejściowych.
    if (!is.numeric(numbers) || !numbers %in% 1:3999) {
        stop("Liczby muszą być naturalne i nie większe niż 3999.")
    }

    single <- function(number) {
        breakpoints <- c(1000, 500, 100, 50, 10, 5, 1)
        signs <- c("M", "D", "C", "L", "X", "V", "I")
        counts <- numeric(length(breakpoints))

        for (i in seq_along(breakpoints)) {
            counts[i] <- number %/% breakpoints[i]
            number <- number %% breakpoints[i]
        }

        roman <- rep(signs[1], counts[1])

        for (i in c(3, 5, 7)) {
            if (counts[i] * counts[i - 1] == 4) {
                roman <- c(roman, signs[i], signs[i - 2])
            } else if (counts[i] == 4) {
                roman <- c(roman, signs[i], signs[i - 1])
            } else if (counts[i - 1] == 1) {
                roman <- c(roman, signs[i - 1])
            }

            if (counts[i] != 4) {
                roman <- c(roman, rep(signs[i], counts[i]))
            }
        }

        roman <- paste(roman, collapse = "")
        return(roman)
    }

    result <- sapply(numbers, single)
    return(result)
}


# numbers <- c(1, 3, 4, 5, 8, 9, 10)
# numbers <- c(numbers, numbers * 10, numbers * 100, 3000, 3700, 3999)
# setNames(na_rzymskie(numbers), numbers)
