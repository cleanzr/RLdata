# weird encoding stuff, done in terminal
# https://linux.die.net/man/1/enca
# http://jeremykendall.net/2015/05/08/detecting-and-converting-file-encoding/
# enconv -L belarusian inst/extdata/cd.csv -x UTF-8

# deal with \" by replacing with *
tt <- readLines("inst/extdata/cd.csv")
tt <- gsub('\\\\"',"\\1*",tt) # replace \" by *
tt <- gsub("\\\\","\\", tt) # get rid of the double escape due to readLines

# load in data
cd <- read.table(textConnection(tt), sep=";", quote='"', allowEscapes = FALSE,
                     header=TRUE, encoding="UTF-8", row.names=NULL,
                     na.strings = c("", "NA", "<NA>"), strip.white = TRUE, 
                     stringsAsFactors = FALSE, fill = TRUE)

# get " back instead of * and encode 
# https://stackoverflow.com/questions/6032296/how-to-read-quoted-text-containing-escaped-quotes
for (i in seq_len(ncol(cd))) {
  if (is.character(cd[[i]])) {
    x <- cd[[i]]
    cd[[i]] <- iconv(gsub('\\*', '\\"', x), from = "UTF-8", to = "ASCII") # add quotes back and convert encoding
  }
}

# save object
save(cd, file = "data/cd.RData")

# compression
tools::resaveRdaFiles("data/")

