roll<- function(){
  
dice1<-sample(die, size= 6, replace = TRUE)+sample(die2, size= 6, replace = TRUE) 


print(paste0("sum of dices rolled: ",sum(dice1) ))
}

roll()

countt<-function(){
  dice1<-sample(die, size= 6, replace = TRUE)
  dice2<-sample(die2, size= 6, replace = TRUE) 
  print('roll 10 sided dice:')
  print(dice1)
  
  print('roll 20 sided dice:')
  print(dice2)
  
c<- 0
n<- 0
  for ( i in c(dice1) ){
    if(i > 6 ){
      c<-c + 1
    }
   

  }

for ( i in c(dice2) ){
  if(i > 16 ){
    n<-n + 1
  }
  
  
}
print(paste0("dice rolled more than 6:  ",c))
print(paste0("dice rolled more than 16:  ",c))
}

countt()



