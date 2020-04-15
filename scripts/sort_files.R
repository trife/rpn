
library(data.table)

files <- list.files("C:/Users/Trevor/Documents/GitHub/rpn/active/exp-srpn/yield-agronomic-raw/1991", full.names = T, recursive = T, pattern = ".*.csv")

for(i in 1:length(files)) {
  print(i)
  
  transcribedFileDf = read.csv(file=files[i],header=T,check.names = F)
  transcribedFileDf = transcribedFileDf[order(transcribedFileDf[,5]),]
  transcribedFileDf[,1] = toupper(transcribedFileDf[,1])
  transcribedFileDf[,2] = toupper(transcribedFileDf[,2])
  transcribedFileDf[,3] = gsub("[^0-9\\.]", "", transcribedFileDf[,3])
  
  write.csv(transcribedFileDf, row.names = F, file=paste(dirname(files[i]),"/",basename(dirname(files[i])),".csv",sep=""))
}