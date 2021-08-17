# Eclat

# Data Preprocessing
library(arules)
dataset = read.csv('Market_Basket_Optimisation.csv', header = FALSE)
dataset = read.transactions('Market_Basket_Optimisation.csv', sep = ',', rm.duplicates = TRUE)
summary(dataset)
itemFrequencyPlot(dataset, topN = 20)

# Training Eclat for Dataset
sets = eclat(dataset, parameter = list(support = 0.004, minlen = 2))

# Visualising Eclat Sets
inspect(sort(sets, by = 'support')[1:10])
