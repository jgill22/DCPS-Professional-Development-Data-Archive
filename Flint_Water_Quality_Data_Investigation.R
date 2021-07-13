# Title: Flint water quality data investigation
library(tidyverse)

#In April 2014, the city of Flint, Michigan changed their water supply from 
#Lake Huron to the Flint River. The Michigan #Department of Environmental 
#Quality (MDEQ) tested the water at the time and declared the water safe to drink. 
#Citizens #of Flint became concerned about the quality of their water and by 
#September 2015 a Virginia Tech (VT) researcher had #tested the water in 
#individual homes and declared the water unsafe for consumption. 
#In October of 2015, the city's water #supply was switched back to Lake Huron. 
#A state of emergency was declared by the Flint mayor in December 2015.  

#Among the many concerns with the quality of Flint's water, was high lead levels. 
#The Environmental Protection Agency #(EPA)'s Lead and Copper Rule (LCR) of 1991 
#requires that if more than 10% of tested homes in a jurisdiction have lead 
#levels greater than 15 parts per billion (ppb) then action must be taken to 
#mitigate the risks of lead poisoning.  
#When the source of Flint's water was first moved to the Flint River, the MDEQ 
#took water samples from 71 local taps. Two of these #were later dropped from 
#the full data set, one of 104 ppb was removed because it was taken from a house 
#with a filter, #as only unfiltered home taps were supposed to be sampled, 
#and a second of 20 ppb was removed because it was from a business, not a home. 

#The data set flint.mdeq.water.csv contains the lead levels of the 71 sampled 
#local taps in Flint. Here you will review loading data, working with data tables, 
#summarizing a variable, and plotting a variable. 

#1. Load (import) the flint water data into R:
flint <- read_csv("flint.mdeq.water.csv")

#2. What are the columns of the data table?  
#(These are the variables in the data set.)
#a. Which column corresponds to the local tap id number? 


#b. Which column corresponds to the lead level of a given tap? 


#c What do you think the "removed" variable represents?


#3 How many rows are in the data table? Is this what you expect? 


#4 Print in the console the first row of the data table using the following command:

flint[1, ]

# What are the values of the variables (i.e. columns) for this row?  

        
#5. What are the values of the variables for rows 2 and 27?
 
       
#6. What are values of the first 10 lead levels?
        
flint[1:10,2]

#7. What range (minimum to maximum) of lead values were measures by MDEQ?


#8. Find the mean and median lead levels.


#9. You can also find the variance using the var() function.
var(flint$lead)

#10. And you can find the standard deviation using the sd() function.
sd(flint$lead)

#11. Generate a boxplot of the lead values.  
#About how many data points are separate from the box? These are the outliers. 


#12. Generate a histogram of the lead values.  Note where the outliers are on 
#the histogram. Can you count how many there are from the histogram?


