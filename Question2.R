#Kyle Sommerfield and Farai Musariri

#Read the file into df
df <- read.csv(file="data.txt")

#Create a barchart for the means of the four populations
a=ggplot(df, aes(region,observations)) + stat_summary(geom="bar", fun.y="mean")
a

#Create a scatterplot for all observations
b=ggplot(df, aes(region,observations)) + geom_jitter()
b

#The two figures tell very different stories. The barchart implies that each of the regions are essentially the same, since the means are very similar. However, the scatterplot shows the distribution of the observations in each region are significantly different. For example, the observations in the north region are clumped around the mean and the observations in the south region are found in two separate clusters. This provides a more detailed description of the data.