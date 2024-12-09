data = read.csv("data.csv")
library(psych)

# Filter data for the pitcher "Nick Ortega"

pitcher = data[data$Pitcher == "Ortega, Nick", ]

# Create a contingency table of PitcherSet vs AutoPitchType
table = table(pitcher$PitcherSet, pitcher$AutoPitchType)
table

row_sums = rowSums(table)

# Initialize a new matrix for the normalized table
normalized_table = matrix(NA, nrow = nrow(table), ncol = ncol(table))

for (i in 1:nrow(table)) {
  normalized_table[i, ] = (table[i, ] / row_sums[i]) * 100
}

rownames(normalized_table) = rownames(table)
colnames(normalized_table) = colnames(table)

#Print the Table
normalized_table

barplot(normalized_table, 
        beside = TRUE,                           # Group bars by category
        main = "Pitch Usage in Windup vs Stretch", # Title
        xlab = "Pitcher Set (Windup vs Stretch)", # X-axis label
        ylab = "Pitch Usage (%)",                  # Y-axis label
        col = c("skyblue", "orange"),            # Colors for each pitch type
        legend = rownames(table))                # Add legend for the rows


dev.off()
