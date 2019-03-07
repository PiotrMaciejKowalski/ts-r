source('demo.R')

## TEST CASE 1
## miejsce zerowe dla y=2x-6
## funkcja ta ma miejsce zerowe rowne 3

a = 2
b = -6
exp_result = 3
result = miejsce_zerowe(a, b)
if (result == exp_result){
  print('SUKCES')
} else {
  print('PORAŻKA')
}

## TEST CASE 2
## miejsce zerowe dla y=0x+0
## funkcja ta ma nieskonczenie wiele miejsc zerowych
## przyjmuje zatem ze wtedy zwraca 0 jako przyklad takiego miejsca

a =0
b = 0
exp_result = 0
result = miejsce_zerowe(a, b)
if (result == exp_result){
  print('SUKCES')
} else {
  print('PORAŻKA')
} 
