#Write a function to summarize the compiled data set in terms of number of screens run, 
#percent of patients screened that were infected, male vs. female patients, and the age distribution of patients.
#Alldata.csv is the compiled file

install.packages("ggplot2")

library(ggplot2)

setwd("~/Desktop/Rproject2021-master")

numscreens<-read.table("allData.txt", header=TRUE, sep="\t", stringsAsFactors=FALSE)

colnames(numscreens)

# bar plot showing counts of screens conducted (still has male vs female)
ggplot(numscreens, aes(x = gender)) +
  geom_bar() +
  theme_bw() +
  xlab("numberofscreens") +
  theme(axis.text.x = element_text(angle=65, vjust=0.6))

#percent of patients screened that were infected
for (i in numscreens){
  x=row(numscreens)
  if(x<1){
    print("infected")
  }else{
    print("not infected")
  }
}

# bar plot showing counts of screens conducted male vs female
ggplot(numscreens, aes(x = gender)) +
  geom_bar() +
  theme_bw() +
  xlab("numberofscreens") +
  theme(axis.text.x = element_text(angle=65, vjust=0.6))

#the age distribution of patients
ggplot(numscreens, aes(x=dayofYear, y=age))+ 
  geom_point()+ 
  stat_smooth(method="lm", formula="y~x")+
  xlab("day of year")+
  ylab("age")
theme_classic()