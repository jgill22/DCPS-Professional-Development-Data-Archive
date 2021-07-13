## Tidy Data & Untidy Data

library(tidyverse)

#Example of tidy data:

tidyr::table1 #:: allows you to access the exact function from the specific package

#Untidy data: Each unit is spread across multiple rows

print(tidyr::table2, n=12)

# Untidy data: Two variables are in one column

tidyr::table3

# Untidy data: Data are spread across two data frames. Within each data frame,
# multiple units are in one row.

tidyr::table4a
tidyr::table4b

## Intro to basic R code and techniques for Tidying Data

# Problem: One variable spread across multiple columns.
# table4a and table4b
# Solution: gather()
table4a
tidy4a <- gather(table4a, `1999`, `2000`, key = "Year", value = "cases")
tidy4a

table4b
tidy4b <- gather(table4b, `1999`, `2000`, key = "Year", value = "population")
tidy4b

# To join these two data frames

full_join(tidy4a, tidy4b)


# Problem: One observation is spread across multiple rows.
# table2
# Solution: spread()

table2
tidy2 <- spread(table2, key = "type", value = "count")
tidy2

# Problem: One column contains two (or more) variables.
# table3
# Solution: separate()

table3
tidy3 <- separate(table3, col = rate, into = c("cases", "population"), sep = "/")
tidy3

# Problem: One variable spread across multiple columns.
# table5
# Solution: unite()

table5
tidy5 <- unite(table5, century, year, col = "Year", sep = "")
tidy5







































































































































