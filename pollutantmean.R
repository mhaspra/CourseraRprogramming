pollutantmean <- function(directory, pollutant, id = 1:332){
  directory <- paste(getwd(),directory, sep ="/")
  files <- list.files(directory)
  data <- data.frame()

  for(i in 1:length(id)){
    data <- rbind (data, read.csv(paste(directory, files[id[i]], sep = "/")))
  }
  
  round(mean(data[, pollutant], na.rm=TRUE), 3)
}