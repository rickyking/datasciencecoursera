complete <- function(directory, id = 1:332) {
        ## 'directory' is a character vector of length 1 indicating
        ## the location of the CSV files

        ## 'id' is an integer vector indicating the monitor ID numbers
        ## to be used
        
        ## Return a data frame of the form:
        ## id nobs
        ## 1  117
        ## 2  1041
        ## ...
        ## where 'id' is the monitor ID number and 'nobs' is the
        ## number of complete cases
        file2read <- paste(directory, "/", sprintf("%03d", id), ".csv", sep = "")
        dat <- list()
        for (i in seq_along(file2read)) {
                dat[[i]] <- read.csv(file2read[i])
        }
        dat_df <- do.call(rbind, dat)
        dat_df <- dat_df[complete.cases(dat_df$sulfate, dat_df$nitrate),]
        count <- as.data.frame(table(dat_df$ID), stringsAsFactors = F)
        colnames(count) <- c("id", "nobs")
        count <- merge(data.frame(id = id), count, sort = F, by = "id", all.x = T)
        count <- merge(data.frame(id = id), count, sort = F, by = "id")
        count$nobs[is.na(count$nobs)] <- 0
        return(count)
}

# complete("specdata", 1)
# complete("specdata", c(2, 4, 8, 10, 12))
# complete("specdata", 30:25)
# complete("specdata", 3)
# complete("specdata")