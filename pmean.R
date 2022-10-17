pmean <- function(directory, pollutant, id = 1:332) {
  filepaths <- sprintf("%s/%03d.csv", directory, id)
  pollutant_data <- c()

  for (filepath in filepaths) {
    csv_data <- read.csv(filepath)
    pollutant_data <- append(pollutant_data, csv_data[,pollutant])
  }


  mean(pollutant_data, na.rm = T)
}

complete <- function(directory, id = 1:332) {
   filepaths <- sprintf("%s/%03d.csv", directory, id)
   completed_rows = c()

   for (filepath in filepaths) {
    csv_data <- read.csv(filepath)
    completed_rows <- append(completed_rows, sum(complete.cases(csv_data)))
   }

   data.frame(id, completed_rows)
}

corr <- function(directory, threshold) {
  filepaths <- sprintf("%s/%03d.csv", directory, 1:332)
  correlations = numeric()

    for (filepath in filepaths) {
        csv_data <- read.csv(filepath)
        completed_rows <- na.omit(csv_data)

        if (nrow(completed_rows) > threshold) {
            correlations = append(correlations, cor(completed_rows$sulfate, completed_rows$nitrate))
        }
    }

    return(correlations)
}

