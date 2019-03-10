## Zadanie 

## Napisac funkcje, ktora dla podanego dnia, miesiaca i roku podaje jaki jest dzien nastepny

dzien_nastepny = function(data){
  if(data[3]<0){
    print("Program nie działa dla lat p.n.e!!!")
    break
  }

  if (data[2]==2)
  { 
    if(data[1]==28 && data[3]%%4!=0){
      odp<-c(1,3,data[3])
      print(odp)
    }else if(data[1]==29 && data[3]%%4==0){
      odp<-c(1,3,data[3])
      print(odp)
    }else if(data[1]>=1 && data[1]<=28){
      odp<-c(data[1]+1,2,data[3])
      print(odp)
    }else {
      print("Nie ma takiej daty!!!!!")
    }
  }
  if(data[2]==1 | data[2]==3 | data[2]==5
     | data[2]==7 | data[2]== 8| data[2]==10 | data[2]==12){
    if(data[1]==31 & data[2] != 12){
      odp<-c(1,data[2]+1,data[3])
      print(odp)
    }
    else if(data[1]==31 & data[2] == 12){
      odp<-c(1,1,data[3]+1)
      print(odp)
    }
    else if(data[1]>=1 && data[1]<31){
      odp<-c(data[1]+1,data[2],data[3])
      print(odp)
    }else {
      print("Nie ma takiej daty!!!!!")
    }
  }
  if(data[2]==4 | data[2]==6 | data[2]==9
     | data[2]==11){
    if(data[1]==30){
      odp<-c(1,data[2]+1,data[3])
      print(odp)
    }
    else if(data[1]>=1 && data[1]<30){
      odp<-c(data[1]+1,data[2],data[3])
      print(odp)
    }else {
      print("Nie ma takiej daty!!!!!")
    }
  }
  if(data[2]<1 | data[2]>12){
    print("Nie ma takiego miesiąca!!!")
  }
}


## przykladowa_data = c(28,2,2019) #28 luty 2019
## poprawna_odpowiedz = c(1,3,2019) #nastepny dzien to 1 marca 2019
