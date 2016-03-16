pollutantmean <- function(directory,pollutant, id = 1:322)
  {
  #update the working directory
  setwd(directory)
  #read in all the file names
  filenames <- list.files()
  #read in the data from the file names 
  data <- do.call("rbind", lapply(filenames, read.csv, header = TRUE))
  #take out the NA rows 
  newdata <- data[complete.cases(data),]
  #average the ID numbers 
  avgs <- sapply(split(newdata$"pollutant", newdata$ID), mean)
  #average over the specified ID numbers 
  specified <- mean(avgs[id])
  #return the value 
  specified 
  }