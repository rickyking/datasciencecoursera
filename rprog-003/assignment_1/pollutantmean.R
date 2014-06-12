pollutantmean <- function(directory, pollutant, id = 1:332) {
        ## 'directory' is a character vector of length 1 indicating
        ## the location of the CSV files

        ## 'pollutant' is a character vector of length 1 indicating
        ## the name of the pollutant for which we will calculate the
        ## mean; either "sulfate" or "nitrate".

        ## 'id' is an integer vector indicating the monitor ID numbers
        ## to be used

        ## Return the mean of the pollutant across all monitors list
        ## in the 'id' vector (ignoring NA values)
	file2read <- paste(directory, "/", sprintf("%03d", id), ".csv", sep = "")
	dat <- list()
	for (i in seq_along(file2read)) {
		dat[[i]] <- read.csv(file2read[i])
	}
	dat_df <- do.call(rbind, dat)
	vec <- dat_df[pollutant]
	vec <- vec[!is.na(vec)]
	mean(vec)
}

# directory <- "specdata"
# pollutant = "sulfate"

# pollutantmean("specdata", "sulfate", 1:10)
# pollutantmean("specdata", "nitrate", 70:72)
# pollutantmean("specdata", "nitrate", 23)