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