# Plot out a “Violin plot” to show relationship between “Months_on_book” and “Total_Amt_Chng_Q4_Q1” columns in the datasets in the “BankChurners” folder

# Load the required packages
library(ggplot2)
library(dplyr)
library(tidyr)
library(readr)
library(readxl)

# Read in the data
data <- read_excel("/workspaces/SolidWaste/BankChurners.xlsx")

# Create a new dataframe with only the columns we want
data <- data %>% select(Months_on_book, Total_Amt_Chng_Q4_Q1)

# Create a violin plot
ggplot(data, aes(x = Months_on_book, y = Total_Amt_Chng_Q4_Q1)) + geom_violin()

# Save the plot
ggsave("ViolinPlot.png")

# Path: Business Analytics/Finals.R 


#Using “Bank Churners" Dataset create a scatter plot using ggplot2, where each plot shows the relationship between “Months_on_book” and “Credit_Limit” and show the differnet education levels in your plot. Use facet_wrap() to arrange the plots based on Marital status. Save the plot as “ScatterPlot.png”

# Load the required packages
library(ggplot2)
library(dplyr)
library(tidyr)
library(readr)

# Read in the data
data <- read_excel("/workspaces/SolidWaste/BankChurners.xlsx")

# Create a new dataframe with only the columns we want
data <- data %>% select(Months_on_book, Credit_Limit, Education_Level, Marital_Status)

# Create a scatter plot
ggplot(data, aes(x = Months_on_book, y = Credit_Limit)) + geom_point() + facet_wrap(~Marital_Status) + ip;i

# Save the plot
ggsave("ScatterPlot.png")



