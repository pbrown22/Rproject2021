###Analysis script
#load in the functions from supportingFunctions.R

source("supportingFunctions.R")

#choose any directory with .txt files not already in .csv format and create .csv

dir<-readline(prompt = "File name with .txt data: ")

cdmlfiles(dir)

