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




