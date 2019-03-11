## Zadanie

## Przygotowac funkcje, ktora w zaleznosci od podanego rysuje na ekranie odpowiednia duza choinke
## np dla n=5 powinno narysować
##    *
##   * *
##  * * *
## * * * *
##* * * * *
##    *

choinka = function(n)
{
  j <- 0
  for(i in 1:n)
  {
    times <- ifelse(floor(n) - i > 0,
                    floor(n) - i,
                    0)
    print(paste0(strrep(" ", times), ifelse(i == 1,
                                            strrep("*", i),
                                            strrep("*", i + j)),
                 strrep(" ", times)))
    j <-  j + 1
  }
  print(paste0(strrep(" ", floor(n) - 1), "*", strrep(" ", floor(n) - 1)))
}
