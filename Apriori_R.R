# Apriori Association Rule Mining

# Data Preprocesing
# install.packages(arules)
library(arules)
dataset = read.csv('Market_Basket_Optimisation.csv', header = FALSE)
dataset = read.transactions('Market_Basket_Optimisation.csv', sep = ',', rm.duplicates = TRUE)
summary(dataset)
itemFrequencyPlot(dataset, topN = 20)

# Training Apriori for Dataset
rules = apriori(data = dataset,
                parameter = list(support = 0.004, confidence = 0.2))

# Visualising Rules
inspect(sort(rules, by = 'lift')[1:10])
