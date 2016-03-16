complete <- function(directory,id = 1:322)
{
  #read in all the file names
  filenames <- list.files(path = "directory")
  #read in the data from the file names 
  data <- do.call("rbind", lapply(filenames, read.csv, header = TRUE))
  #take out the NA rows 
  newdata <- data[complete.cases(data),]
  #find the number of completed rows per ID number
  completed <- t(t(sapply(values,length)))
  completed
}