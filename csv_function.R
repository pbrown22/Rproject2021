cmdlfiles<-function(input){
  y<-getwd()
  x<-list.files(path = y, pattern = "*.txt")
 
   for(i in x){
   
   a<-read.table(i, header = TRUE)
   b<-gsub(pattern = "\\.txt$","",i)
   c<-assign(b,paste(b,".csv",sep = ""))
   write.csv(a, file = c, quote = FALSE)
   
  }
  
  list.files(path = ".", pattern = "*.txt")
  path.expand("./countryY")
  screen_120.csv
  
  