#strategy for play #dealer

score<- score_hand(hands[hands$player== "dealer",])

while(score<17){
  newcard<-deal_jacks(playjacks)
  newcard$player<-"dealer"
  hands<- rbind(hands,newcard)

  score<- score_hand(hands[hands$player== "dealer",]) 

}

if (sum(hands$value[hands$player=="dealer"],na.rm=TRUE)>10){
  hands$value[hands$player=="dealer" & hands$face =="ace"]<- 1
}
  hands$value[hands$player=="dealer" & hands$face =="ace"]<- 11
  
  
#Player strategy will be to take another card any time hand is 15 or less.  
# This implies that the player will stand with any hand of 16 or greater.
  
score<- score_hand(hands[hands$player== "p1",])
  
while(score<16){
    newcard<-deal_jacks(playjacks)
    newcard$player<- "p1"
    hands<- rbind(hands,newcard)
    
score<- score_hand(hands[hands$player== "p1",])

  }
  
if (sum(hands$value[hands$player=="p1"],na.rm=TRUE)>10){
  hands$value[hands$player=="p1" & hands$face =="ace"]<- 1
}
hands$value[hands$player=="p1" & hands$face =="ace"]<- 11


#Player2 strategy will be to take another card any time hand is 15 or less.  
# This implies that the player will stand with any hand of 16 or greater.

score<- score_hand(hands[hands$player== "p2",])

while(score<16){
  newcard<-deal_jacks(playjacks)
  newcard$player<- "p2"
  hands<- rbind(hands,newcard)
  
  score<- score_hand(hands[hands$player== "p2",]) 
}

if (sum(hands$value[hands$player=="p2"],na.rm=TRUE)>10){
  hands$value[hands$player=="p2" & hands$face =="ace"]<- 1
}
hands$value[hands$player=="p2" & hands$face =="ace"]<- 11

