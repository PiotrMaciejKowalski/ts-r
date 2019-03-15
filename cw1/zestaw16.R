dzien_nastepny = function(data){
  if(data[3]<1582){ #rok wprowadzenia kalendarza gregoriańskiego
    return(NA)
  }
  if(data[2]==10 & data[3]==1582){ #ominięcie tych dat miało na celu skorygowanie powstałego opóźnienia 
    #wynikającego z wcześniejszego użycia kalendarza juliańskiego
    i<-5
    while(i<=14){
      if(data[1]==i){
        return(NA)
      }
      i=i+1
    }
  }
  if (data[2]==2)
  { #obliczanie lat przestępnych według kalendarza gregoriańskiego
    if((data[1]==28 && data[3]%%4!=0) | (data[1]==28 && data[3]%%4==0 && data[3]%%100==0 && data[3]%%400!=0)
       | (data[1]==29 && data[3]%%4==0 && data[3]%%100==0 && data[3]%%400==0) | (data[1]==29 && data[3]%%4==0 && data[3]%%100!=0)){
      odp<-c(1,3,data[3])
      return(odp)
    }else if(data[1]==29 && data[3]%%4==0 && data[3]%%100==0 && data[3]%%400!=0 ){
      return(NA)
    }else if(data[1]>=1 && data[1]<28 | (data[1]==28 && data[3]%%4==0 && data[3]%%100==0 && data[3]%%400==0) |(data[1]==28 && data[3]%%4==0 && data[3]%%100!=0)){
      odp<-c(data[1]+1,2,data[3])
      return(odp)
    }else {
      return(NA)
    }
  }
  if(data[2]==1 | data[2]==3 | data[2]==5
     | data[2]==7 | data[2]== 8| data[2]==10 | data[2]==12){
    if(data[1]==31 & data[2] != 12){
      odp<-c(1,data[2]+1,data[3])
      return(odp)
    }
    else if(data[1]==31 & data[2] == 12){
      odp<-c(1,1,data[3]+1)
      return(odp)
    }
    else if(data[1]>=1 && data[1]<31){
      odp<-c(data[1]+1,data[2],data[3])
      return(odp)
    }else {
      return(NA)
    }
  }
  if(data[2]==4 | data[2]==6 | data[2]==9
     | data[2]==11){
    if(data[1]==30){
      odp<-c(1,data[2]+1,data[3])
      return(odp)
    }
    else if(data[1]>=1 && data[1]<30){
      odp<-c(data[1]+1,data[2],data[3])
      return(odp)
    }else {
      return(NA)
    }
  }
  if(data[2]<1 | data[2]>12){
    return(NA)
  }
}
