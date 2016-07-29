##############
#file carangid analyses
##############

#load libraries
library(plyr)
# library(vegan)
# library(BiodiversityR)
library(ggplot2)

#load and process data file
#data on lengths
path <- "D:/Projects/Pubs/Flounder Diet/Analysis/flounderlen.csv"
delim <- ","
data <- read.table(file = path, header = TRUE, sep = delim, stringsAsFactors = FALSE) #from SQL Server for stratum or region only
data.lf <- data[,2:4]
head(data.lf)
#data for logistic regression on empty vs full
#path <- "D:/Projects/Pubs/Carangid Feeding Paper/Analysis/datacontent.csv"
#delim <- ","

#generate plots
g.l1 <- ggplot(data = data.lf, aes(x = data.lf$sex, y = data.lf$flength)) + geom_violin() + geom_point() #violin plot with points
g.l1
g.l2 <- ggplot(data = data.lf, aes(x = data.lf$maturity, y = data.lf$flength)) + geom_violin() + geom_point() #violin plot with points
g.l2
