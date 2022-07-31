# R as a powerful calculator 

# Apply arithmetic operations to numbers

3*7
15/5
9/3
4+6
3-9
(3+5)*6
3^2
3**2
4^2

# What do you think about %% does? Try it out on a few examples.

1 %% 2 
2 %% 2
3 %% 2
4 %% 2
1 %% 3
2 %% 3
3 %% 3
4 %% 3
1 %% 5
2 %% 3
2 %% 4
4 %% 8

# In general if you don't know what something does, there are three things you can do:
# 1. Google it. Always add "in R" at the end of your search term. E.g. "%% in R".
# 2. Use the help() function to see if there is a help page on it. E.g., type help("%%") in the command
# prompt. This is the most important function in R.
# 3. Play around with it, changing the inputs until you figure out what it does.

# View R's built-in data sets
data()

mtcars
iris
trees

# Load data

data(mtcars)

names(mtcars)
head(mtcars)
nrow(mtcars)
ncol(mtcars)

# Assign variable values with <- (you can also use =, but only noobs do that)
# For example, assign a the value of 1
a <-1
# Type a now into the command prompt
a

# Create a sequence of numbers
b <- 1:10
b
# Create a plot
plot(x = 1:10, y = 11:20)

# Creating variables is useful because it allows you to reuse those values
# over and over again.

# Apply now arithmetic operations to variables as you would to numbers

x<-7
y<-9
x+y
x*y
x/y
x-y


## RStudio Options

# . RStudio will automatically save a bunch of leftover stuff when you exit it. 
# This is bad for reproducibility because you might be depending on code 
# that you ran in a previous session (which you no longer can view and may not 
# remember so you can't reproduce).

# We'll get rid of these silly options.
# . Open up "Tools > Global Options. . . > General" and
# - Uncheck "Restore .RData into workspace at startup".
# - Change "Save workspace to .RData on exit" to "Never".

# A package is a collection of functions that don't come with R by default.
# There are many many packages available. If you need to do any data analysis, 
# there is probably an R package for it.
# Using install.packages(), you can install packages that contain functions and
# datasets that are not available by default. 
# Do this now with the tidyverse package:

# Install packages in R through RStudio - steps
# 1. Click on "Tools" menu
# 2. Select "Install Packages"

install.packages()

# Tidyverse is a collection of open source R packages introduced by Hadley Wickham.
# readr,dplyr,tidyr,ggplot2 are subpackages included in the core tidyverse.

install.packages("tidyverse")

# Another example

# Visit CRAN: https://cran.r-project.org/
install.packages("audio")
library(audio)
play(sin(1:100000/20)) # play a short sound of a fixed frequency

# You will only need to install a package once per computer. Once it is 
# installed you can gain access to all of the functions and datasets in a
# package by using the library() function.

library(tidyverse)

# You will need to run library() at the start of every R session if you want 
# to use the functions in a package.

# Now you should SAVE your R code!!! and then terminate the current R session.




q() #or 
quit()




























































