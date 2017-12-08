##PLOT 1
png("plot1.png", width=480, height=480)
data1<-read.csv("household_power_consumption.txt", header=T, sep=';', na.strings="?", 
                nrows=2075259, check.names=F, stringsAsFactors=F, comment.char="", quote='\"')
d<-subset(data1, Date %in% c("1/2/2007","2/2/2007"))
d$Date<-as.Date(d$Date, format="%d/%m/%Y")
hist(d$Global_active_power,main="Global Active Power",xlab="Global Active Power(kilowatts)", ylab="Frequency", col="Red")
dev.off()

##CODE FOR PNG FILE
##png("plot1.png", width=480, height=480)
##dev.off()