library(psych)
data = read.csv("data.csv")

#---------------------------Slider---------------------

slider = data[data$AutoPitchType=="Slider", ]

# -------(Horizontal Break, Vertical Break, and Release Speed) of slider Summary by Pitcher-------

describeBy(slider[c("HorzBreak","VertBreak", "RelSpeed")], group = slider$Pitcher)

#---------------------------Curveball---------------------

curve = data[data$AutoPitchType=="Curveball", ]

# -------(Horizontal Break, Vertical Break, and Release Speed) of slider Summary by Pitcher-------

describeBy(curve[c("HorzBreak","VertBreak", "RelSpeed")], group = curve$Pitcher)


#---------------------#the mean velocity of ALL pitches for EACH Pitcher-------------------
aggregate(data$RelSpeed~data$Pitcher, data = data, mean) 

                #------OUTPUT----------
                #   baseball$Pitcher baseball$RelSpeed
                #  1     Ortega, Nick          78.17913
                #  2      Parks, Evan          76.86553
                #  3    Sipling, Eric          79.68019
