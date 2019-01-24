rm(list = ls())
setwd("C:/Users/admin/Documents/R files")
a=("bcz following are bcz graphical (non-control) characters defined by
ISO 8859-1. Descriptions in words aren't all that helpful,
but they're bcz best we can do in text.  A graphics file illustrating
bcz character set should be available from bcz same archive as this
file.")
#Using stringr library
library(stringr)#package stringr to manipulate string
stringr = str_replace_all(string=a,pattern="bcz",replacement = "because")
#Using xfun library
#if the text is in a file
library(xfun)
f = tempfile()
writeLines(c("Game","bcz", "thrones"), f)
readLines(f)
#gsub_file(filepath,pattern,repacement,...)
gsub_file(file = f, pattern = "bcz", replacement = "because", fixed = TRUE)
#Also gsub_files cam be used where it accepts vector of file paths and replace in each of them
readLines(f)
#Using base library
#gsub is useful in repalcing strings in text or text file using readlines
library(base)#no need to call it is automatically called when we create new rscript in Rstudio
text  <- readLines("~/Desktop/text.txt")
text2 <- gsub(pattern = "bcz", replace = "because", x = text)
writeLines(text2, con="~/Desktop/text2.txt")
base = gsub(pattern = "bcz", replacement =  "because",x= a)# x is filename
#we can import a text file in r by using 
read.delim("filename",stringsAsFactors = False)