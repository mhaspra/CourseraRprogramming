complete <- function(directory, id = 1:332) {
  directory <- paste(getwd(),directory, sep ="/")
  files <- list.files(directory)
  data <- data.frame()
  
  for(i in 1:length(id)){
    allRows <- read.csv(paste(directory, files[id[i]], sep = "/"))
    completeRows <- allRows[complete.cases(allRows),]
    data <- rbind (data, data.frame(id[i], nrow(completeRows)))
  }
  
  names(data) <- c("id", "nobs")
  data
}