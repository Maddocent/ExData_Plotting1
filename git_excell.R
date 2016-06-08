install.packages("xlsx")
library(xlsx)


id = c(1,2,3,4,5,6)
names = c("mas", "mic", "bim", "job", "ren", "las")
expression = c(102, 203, 309, 207, 408, 409)

data <- data.frame(id, names, expression)

# writing data as xlsx
write.xlsx(data, file = "./git_excell_trial.xlsx")
