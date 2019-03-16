## Zadanie

## Napisać program ktory dla zamienia znaki małej litery na wielkiej i odwrotnie w słowie 
## przekazanym przez parametr

zamiana_liter = function(slowo){
  wektor_liter <- strsplit(slowo,"")[[1]]
  paste(toupper(substring(wektor_liter, 1, 1)), substring(wektor_liter, 2),
        sep = "", collapse = "")

}