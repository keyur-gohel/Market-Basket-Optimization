# -*- coding: utf-8 -*-
"""
Created on Fri Nov  1 13:07:18 2019

@author: keyur
"""

# Association Rule Mining
# Apriori

# Data Preeprocessing

# Import libraries
import numpy as np
import matplotlib.pyplot as plt
import pandas as pd

# Import Dataset
dataset = pd.read_csv('Market_Basket_Optimisation.csv', header = None)
transaction = []
for i in range(0, 7501):
    transaction.append([str(dataset.values[i, j]) for j in range(0, 20)])

# Training Apriori for Dataset
from apyori import apriori
rules = apriori(transaction, min_support = 0.003, min_confidence = 0.2, min_lift = 3, min_length = 2)    

# Visualising Rules
results = list(rules)
rule = pd.DataFrame(results)
#results_list = []
#for i in range(0, len(results)):
#     results_list.append('\RESULTS:\t' + str(results[i][2]))