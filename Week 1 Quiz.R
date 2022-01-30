#Loading in the dataset
dataset <- read.csv('getdata.csv')

#Counting values greater than 1,000,000
x <- (dataset$VAL == 24)
sum(x, na.rm = TRUE)


#Excel library
install.packages('xlsx')
library('xlsx')

dat <- read.xlsx('getdata2.xlsx', sheetIndex = 1, rowIndex = 18:23, colIndex = 7:15)
sum(dat$Zip*dat$Ext,na.rm=T)


#Download file
DT <- data.table::fread('https://d396qusza40orc.cloudfront.net/getdata%2Fdata%2Fss06pid.csv')