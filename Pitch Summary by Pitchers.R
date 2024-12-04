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


