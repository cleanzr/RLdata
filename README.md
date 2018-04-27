# RLdata

## Package Description

This is a package that provides three data sets that can be used for entity resolution (record linkage or de-duplication). The three data sets include the following: cd, cora, and restaurants. The cd data set contains 9763 CDs randomly extracted from freeDB, which contains information such as cd name, artist, genre, year created, and more. The cora data set contains 1879 records with citation information on published papers, which includes features such as titles, authors, year published, and more. Lastly, the restaurants data set contains records on restaurants taken from Zagat and Fodors database, which has information about the location, food type, and more. Each of the data sets described has a respective "gold" data set that provides information on which records are a match based on id. 

## Package Installation

```{r}
# Install the development version from GitHub
devtools::install_github(“resteorts/RLdata”)
```

