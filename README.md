# R programming assignments  

Name: Andrew Burson  
Course Number: LIS4370  
Description: Repository for R Programming Assignments

 # Assignment 2 – Debugging myMean

Tried the given `myMean` and got:  
`Error in myMean(assignment2) : object 'assignment' not found`

It broke because the function used the wrong names.  
Fixed it to:  
```r
myMean_fixed <- function(x) sum(x) / length(x)

Now it fully functional→ [1] 19.25

## Assignment 3 – Analyzing 2016 “Poll” Data in R

#I created a data frame in R with fake poll numbers and calculated summary stats like mean, median, and range.  

#Then I added a column to compare the difference between CBS and ABC polls.  

#Finally, I used ggplot2 to make a bar chart and saved it as an image for my blog.  




