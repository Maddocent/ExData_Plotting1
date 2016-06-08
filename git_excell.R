# install.packages("xlsx")
# install.packages("rio")
library(xlsx)
library(rio)

id = c(1,2,3,4,5,6)
names = c("mas", "mic", "bim", "job", "ren", "las")
expression = c(102, 203, 309, 207, 408, 409)

data <- data.frame(id, names, expression)

# writing data as xlsx
write.xlsx(data, file = "./git_excel_trial.xlsx")

# changing an entry in the data frame "data"

data[3,3] <- c(789)

# look at the change: the expression level for "bim" has been changed 
# from 309 to 789
head(data)

# writing the changed file
write.xlsx(data, file = "./git_excel_trial.xlsx", row.names = 1)

### ---> Git can not handle excel files in dif...

#### using package "rio" to export as xml

??rio

convert("git_excel_trial.xlsx", "git_excel_trial.xml")

head(import("git_excel_trial.xml", format = "xml", row.names = 1))



##### what would happen if we would use CSV as format

