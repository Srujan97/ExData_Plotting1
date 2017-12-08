##PLOT 2
png("plot2.png", width=480, height=480)
data1<-read.csv("household_power_consumption.txt", header=T, sep=';', na.strings="?", 
                nrows=2075259, check.names=F, stringsAsFactors=F, comment.char="", quote='\"')
d<-subset(data1, Date %in% c("1/2/2007","2/2/2007"))
d$Date<-as.Date(d$Date, format="%d/%m/%Y")
dateTime<-paste(as.Date(d$Date),d$Time)
d$Datetime<-as.POSIXct(dateTime)
with(d,{plot(Global_active_power~Datetime, type="l", ylab="Global Active Power (kilowatts)", xlab="")})
dev.off()
##CODE FOR PNG FILE
##png("plot2.png", width=480, height=480)
##dev.off()