cmdlfiles<-function(directory){
  y<-setwd(./directory)
  x<-list.files(path = y, pattern = "*.txt")
 
   for(i in x){
   
   a<-read.table(i, header = TRUE)
   b<-gsub(pattern = "\\.txt$","",i)
   c<-assign(b,paste(b,".csv",sep = ""))
   write.csv(a, file = c, quote = FALSE)
   }
}
  
  
  
  
  