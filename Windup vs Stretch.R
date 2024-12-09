data = read.csv("data.csv")
library(psych)

#Filter the pitcher "Evan Parks"
parks = data[data$Pitcher=="Parks, Evan", ]

table = table(parks$PitcherSet, parks$AutoPitchType)
table

barplot(table, 
        beside = TRUE,                           # Group bars by category
        main = "Pitch Frequency in Windup vs Stretch", # Title
        xlab = "Pitcher Set (Windup vs Stretch)", # X-axis label
        ylab = "Pitch Count",                    # Y-axis label
        col = c("skyblue", "orange"),            # Colors for each pitch type
        legend = rownames(table))                # Add legend for the rows


dev.off()
