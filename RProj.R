setwd("~/Biocomputing/Rproject2021/countryX/")
filename=c(list.files(pattern = "*.csv"))
for (i in filename) {
  Xdf<-lapply(filename, read.csv)
  CountryX.final<-do.call("rbind",Xdf)
}
