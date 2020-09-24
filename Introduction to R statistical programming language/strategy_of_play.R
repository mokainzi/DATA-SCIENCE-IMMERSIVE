# curr_player:  dealer, p1 or p2.
# stand_at:     The threshold where a player will stand at, 15 for example.

play <- function(curr_player, stand_at){
  
  score <- score_hand(hands[hands$player == "curr_player", ])
  
  while(score < stand_at){
    newcard <- deal_jacks(playjacks)
    newcard$player <- "curr_player"
    hands <- rbind(hands,newcard)
    
    score <- score_hand(hands[hands$player == "curr_player", ]) 
  }
  
  if (sum(hands$value[hands$player == "curr_player"], na.rm=TRUE) > 10){
    hands$value[hands$player == "curr_player" & hands$face == "ace"] <- 1
  }
  hands$value[hands$player == "curr_player" & hands$face == "ace"] <- 11
}
