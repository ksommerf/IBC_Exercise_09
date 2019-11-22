#Kyle Sommerfield and Farai Musariri
#Creating a scatterplot of MLB Yearly Average Slugging Percentage and MLB Yearly Average Runs/Game

#Read data into MLB
MLB <- read.delim(file="MLB_Stats.txt",header=TRUE,stringsAsFactors=FALSE)

#Create vectors of Both Variables
runs <- MLB$MLB.Yearly.Average.Runs.Game
slug <- MLB$MLB.Yearly.Average.Slugging.Percentage

#Create plot of MLB data
plot(slug,runs,xlab="Slugging Percentage",ylab="Runs/Game")
#Create trendline for MLB data
abline(lm(runs~slug))