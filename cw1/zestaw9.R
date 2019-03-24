## Zadanie

## Napisać program ktory dla zamienia znaki małej litery na wielkiej i odwrotnie w słowie 
## przekazanym przez parametr

zamiana_liter = function(slowo){
  wektor_liter <- strsplit(slowo,"")[[1]]
  for (i in 1:length(wektor_liter)){
    if (wektor_liter[i]==toupper(wektor_liter[i])){
      wektor_liter[i] <- tolower(wektor_liter[i])
    }
    else {
      if (wektor_liter[i]==tolower(wektor_liter[i])){
        wektor_liter[i] <- toupper(wektor_liter[i])
      }
    }
  }
  zamienione_slowo <- paste(wektor_liter,collapse = "",sep = "")
  return(zamienione_slowo)
}