# Load the required packages
library(ggplot2)
library(dplyr)
library(tidyr)
library(readr)
library(tidyverse)

# Read in the data
data <- read_excel("/workspaces/SolidWaste/BankChurners.xlsx")

# Create a new dataframe with only the columns we want
data <- data %>% select(Months_on_book, Credit_Limit, Education_Level, Marital_Status)

# Create a scatter plot
ggplot(data, aes(x = Months_on_book, y = Credit_Limit)) + geom_point() + facet_wrap(~Marital_Status)

# Save the plot
ggsave("ScatterPlot.png")


#Run hypothesis whether the Credit_Limit is independent of their Total_Revolving_Bal at .05 significance level. Use the “BankChurners” dataset above. 
Bankchurners <- read_excel("/workspaces/SolidWaste/BankChurners.xlsx")
cont_table <- table(Bankchurners$Credit_Limit, Bankchurners$Total_Revolving_Bal)
chi_sq_test <- chisq.test(cont_table)
chi_sq_test

ggplot


