# v0.0.2

# -----

# POT with 10 tickets.


draw = TRUE  # Generates winning numbers if set true

message("--------------------------------------------------------------\n")
print(Sys.time())                                                       # Current datetime

number.of.tickets = 10                                                  # Number of tickets
house.share.to.pot = 5
ticket.price = 1                                                        # Ticket price
size.of.pot = (ticket.price * number.of.tickets) + house.share.to.pot   # Size of the pot

winner.share = c(0.5, 0.3, 0.1)                                         # Winning proportion
winner.title = c(
        "**** First winner  **** :",
        "**** Second winner **** :",
        "**** Third winner  **** :"
)
winners = sample(1:number.of.tickets, size = 3, replace = FALSE)



if (!draw) {
        winners = rep("--", 3)
        message("\t--- No draw made --- ")
}

message("--------------------------------------------------------------\n")
for (index in 1:length(winners)) {
        winner.text = paste(
                c(
                        winner.title[index],
                        "(",
                        winners[index],
                        ") ||",
                        size.of.pot * winner.share[index],
                        " == (",
                        size.of.pot,
                        "CTHOR) X ",
                        winner.share[index]
                ),
                col = ""
        )
        message(winner.text)
        
}

