corr <- function(directory, threshold = 0) {
  directory <- paste(getwd(),directory, sep ="/")
  files <- list.files(directory)
  correlations <- c()
  
  for(i in 1:length(files)){
    allRows <- read.csv(paste(directory, files[i], sep = "/"))
    completeRows <- allRows[complete.cases(allRows),]
    if(nrow(completeRows) > threshold){
      correlation <- cor(completeRows[,"sulfate"], completeRows[, "nitrate"])
      correlations <- c(correlations, correlation)
    }
    
  }
  correlations
}