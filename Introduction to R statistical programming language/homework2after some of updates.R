
#1 functions for shuffling the deck
shuffle <- function(deck) { 
  random <- sample(1:52, size = 52)
  deck[random, ]
}

shuffle(deck)

#1 functions for shuffling the hearts, Because its size are difference
shuffleHearts <- function(NewHearts) { 
  random <- sample(1:28, size = 28)
  NewHearts[random, ]
}


#2 function for dealing cards to 2 players in hearts

#In Two Player Hearts, 3's, 5's, 7's, 9's, Jacks, and, Kings are removed from the deck,
#leaving 13 cards to be dealt to each player.

incude<-c("queen","ten","eight","six","four","two","ace")
NewHearts<-hearts[hearts$face %in% incude, ]

deal <- function(NewHearts) {
  playehearts<-shuffleHearts(NewHearts)
  hand1 <-playehearts[1:14,]
  hand2<-playehearts[15:28,]
  print("Hearts hand1: ") 
 print(hand1)
 print("Hearts hand2: ")
 print(hand2)
}

deal(NewHearts)

#Deal two players & dealer from blackjack deck.

deal_jacks<- function() {
  playjacks<- shuffle(blackjack)
  hand1<- playjacks[1:2,]
  hand2<- playjacks[51:52,]
  dealer<- playjacks[14:15,]
  print("Blackjack hand1: ")
  print(hand1)
  print("Blackjack hand2: ")
  print(hand2)
  print("Blackjack dealer: ")
  print(dealer)
  
  
}
deal_jacks()

