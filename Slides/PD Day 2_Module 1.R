## Part 1 (Data Import)

# Create a folder and load datasets from Github!!!

# We will need Auto.data.txt, heights.csv, hate_crimes2.csv for the tasks below.


# Working Directories

getwd()

# Set working directory
# setwd("C:/Users/barouti/Desktop/PD Summer 2021/PD Learning Material/Day 2/Material on Canvas")


library(tidyverse)
data("mpg")
summary(mpg)

# Example: Make a scatterplot and then save it in the folder
pl <- ggplot(mpg, aes(x = hwy, y = cty)) +
  geom_point()
pl
ggsave(filename = "./my_saved_plot.pdf", plot = pl)

# Use R commands to import Data from an external location 

# readr

# Read txt files with read.table()

text_file <- read_table("./Auto.data.txt") 
text_file

nrow(text_file)
ncol(text_file)

text_file <- read.table("./Auto.data.txt", header = T) # header argument 
#specifies whether or not we have specified column names in the data file.
text_file

nrow(text_file)
ncol(text_file)

# Read csv files into R

# You might have heard that taller people earn more. Is it true? 

heights <- read_csv(file = "./heights.csv")

head(heights)

read_lines(file = "./heights.csv", n_max = 10)


# Special Considerations

# Another example
hate_crimes <- read_csv(file = "./hate_crimes2.csv")
hate_crimes
summary(hate_crimes)

head(hate_crimes,2)# 1st two rows of dataset
hate_crimes[,c("state","gini_index")] #extract two columns
hate_crimes[,c("state")]
hate_crimes[1:6,c("state")] #or
hate_crimes[1:6,"state"]

hate_crimes[1, 2:3]
hate_crimes[1,]
hate_crimes[,1]

# Always check your data immediately after importing it.
# - Check that the types are correct for each of the variable.
# - Check that the missing data were coded correctly.
# - Later on, when you notice something weird, consider that this might have
# resulted because of a problem during data import.

summarize_all(hate_crimes, class)
summarize_all(hate_crimes,funs(sum(is.na(.)))) #sum all the NA's(missing values) 
# under each variable

# Note: Sometimes the files code missing data other than NA. For example, it's common to 
# use periods ., or in some genomic settings they use -9 as missing.
 

# Data Export

write_csv(x = hate_crimes,"crimes.csv") # creates a csv file called crimes 

## Part 2 (EDA of embedded R datasets)

# General Strategies

#- Plot the distribution of every variable.
#- Plot the bivariate distribution of every pair of variables (to find which
#  variables are associated).
#- Color code by variables to try and see if relationships can be explained.
#- Calculate lots of summary statistics.
#- Look at missingness.
#- Look at outliers.
#- EDA is about **curiosity**. Ask *many* questions, use *many* plots, investigate *many* aspects of your data. 
# This will let you hone in on the few *interesting* questions you want to pursue deeper.

data("diamonds") # or without quotes
summary(diamonds)

# Distribution of each variable

# Quantitative: Use histogram

hist(diamonds$carat)

fivenum(diamonds$carat) #or
summary(diamonds$carat)

mean(diamonds$carat)
sd(diamonds$carat) #measures the amount of variation

# Categorical: Use bar chart

counts <- table(diamonds$color)
barplot(counts, main="Color Distribution",
        xlab="Color")
table(diamonds$color)

# How can we make a bar chart where now the y-axis will be the proportion?
# Reminder: proportion=count/sum(count)

# We can get the proportions as below
prop <- prop.table(table(diamonds$color))

barplot(prop, main="Color Distribution",
        xlab="Color")


# Bivariate distribution of every pair of variables

# Quantitative vs Quantitative: Use a scatterplot
# Categorical vs Quantitative: Use a boxplot
# Categorical vs Categorical: Use a mosaic plot or a count plot

#Example: Quantitative vs Quantitative 

# Logging is a useful tool to make some associations linear.
# If the relationship is (i) monotonic and (ii) curved, then try logging the x-variable 
# if the x-variable is all positive. If it is also (iii) more
# variable at larger y-values, then try logging the y-variable instead of the 
# x-variable if the y-variable is all positive. Try logging both if you still 
# see curvature if both variables are all positive.

# - Ask if an observed association can be explained by another variable?
# - Correlation coefficient (only appropriate if association is linear).

x <- log(diamonds$carat)
y <- log(diamonds$price)  
cor(x,y) 
plot(x,y,xlab="carat",ylab="price") 


# Next, you will use ggplot2 which is a R package dedicated to data visualization. 
# It can greatly improve the quality and aesthetics of your graphics,
# and will make you much more efficient in creating them. 
# ggplot2 offers many functions for this purpose,allowing to add all sorts 
# of text and shapes.

## Part 3 (Use R to create datasets)

# Using R code to create data tables

# (Two Methods)

# Method 1: Vector Construction - Data Frame Method

# Example

Name <- c("Jacob", "Elaine", "Alice", "Juan", "Ray", "Kate", "Leon")
Name

Age <- c(26,31,42,31,28,25,30)
Age

Department <- c("Accounting", "IT", "Sales", "IT", "Accounting", "Sales", "Personnel" )
Department

Salary <- c(70000, 75000, 72000, 68000, 67500, 68000, 63000)
Salary

data.frame(Name, Age, Department, Salary)

# Now assign your data table a variable name

EmployeeInformation <- data.frame(Name, Age, Department, Salary)
EmployeeInformation

mean(EmployeeInformation$Age)
median(EmployeeInformation$Salary)

# Method 2: Tribble Construction (Tidyverse Method)

tribble(~Name, ~Age, ~Department, ~Salary, 
        "Jacob", 26, "Accounting", 70000,
        "Elaine", 31, "IT", 75000,
        "Alice", 42, "Sales", 72000,
        "Juan", 31, "IT", 68000,
        "Ray", 28, "Accounting", 67500,
        "Kate", 25, "Sales", 68000,
        "Leon", 30, "Personnel", 63000)

# Now assign your data table a variable name

EmployeeInformation2 <- tribble(~Name, ~Age, ~Department, ~Salary, 
                               "Jacob", 26, "Accounting", 70000,
                               "Elaine", 31, "IT", 75000,
                               "Alice", 42, "Sales", 72000,
                               "Juan", 31, "IT", 68000,
                               "Ray", 28, "Accounting", 67500,
                               "Kate", 25, "Sales", 68000,
                               "Leon", 30, "Personnel", 63000)
EmployeeInformation2

# We can now generate desired summaries

mean(EmployeeInformation2$Age)
median(EmployeeInformation2$Salary)
max(EmployeeInformation2$Salary)
sd(EmployeeInformation2$Salary) # SD: measures the amount of variation of a set of values
# low standard deviation: values tend to be close to the mean 
# high standard deviation: values are spread out over a wider range.

summary(EmployeeInformation2$Salary)





















































































































































































































































































































































































































































































































































