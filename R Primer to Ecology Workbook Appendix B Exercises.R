'?' (mean)
#links to R:Arthimetic online to describe the function
help (mean)
#same result
help.search("mean")
#search keywords online to find the exact name of a function
apropos("mean")
#produces lists inside R
RSiteSearch("violin")
#searches R online for related packages that are not installed on your desktop
RSiteSearch("violin", restrict = c("functions"))
#refine your serach by setting restrictions 
help(RSiteSearch)
#Learn more about the search function by applying "help"
a <- 2+3
# the arrow defines a term, which can be combined with an equation to create a new object
b<- a+a
#Once a has been defined, it can be used in equations and to define new variables
a+b; a+a
#the semi-colon allows you to calculate two equations on the same line
#TERM: scalar: a single real number
#TERM: vector: column of scalars
y <- c(8, 9, 10, 11, 12, 13, 14)
#This defines/creates a vector (y)
#Integer sequences can be created with a colon between the start and end scalar
1:4
4:1
-(1:3)
seq(from = 1, to = 3, by = 0.2)
# you can change the automated "1" interval by redefining it or indidicating the length of the sequence
seq(1, 3, length = 7)
#repetitive sequences
rep(1, 3)
rep (1:3, 2)
rep(1:3, each = 2)
#Once you have defined/created a vector, you can calculate sum, mean, max, length
mean(y)
summary(y) 
#Automatically gives min/max, quartiles, meadian and mean
#Vectors can be characters (TRUE, FALSE), dates, complex numbers, real numbers, integers or factors
class(y)
#Classifies the vector (y is "numeric")
y>10
#Determines TRUE or FALSE for each integer in the vector
y > mean(y)
y==11
# == is equal and != is not equal
#Once two vectors have been defined (and are equal in length), algebraic equations can be calculated between respective integers
a <- 1:3
b <- 4:6
#Scalars can be operated on vectors (applied to each integer in the vector)
a/2
#If the two vectors differ in length R recycles the shorter vector just enough to match the length of the longer vector
#A warning message will appear if one vector is recycled partially, however for vectors with lengths that are factors of each other (ie 2 and 4) R will not create a warning
y[1]
#Extracts the first integer in the sequence that defines the vector
y[1:3]
y[y > mean (y)]
#This extracts only the integers in the vector that are larger than the mean
#Missing data is always recognised and acknowledged by R
a <- c(5, 3, 6, NA
is.na(a)
#This tells us whether each integer/value in the vector is present or missing
a[!is.na(a)]
#This redefines a without the missing value
na.exclude(a)
#To calculate mean. sum, etc. you will have to define a separate vector as a without the NA
d <- na.exclude(a)
mean(d)
#TERM: matric: a two dimensional data set of elements, for which all elements are of the same type
matrix(letters[1:4], ncol = 2)
M <- matrix(1:4, nrow = 2)
#col versus row defines how the integers are distributed
M2 <- matrix(1:4, nrow = 2, byrow = TRUE)
I <- diag(1, nrow = 2)
I
#Extracion in a matrix, define the row and column (x, y)
M[1,2]
#Anything left blank or undefined R will return all rows (or columns)
#TERM: data frame: two dimensional, but each column can be a different data type (ie numeric, integer, character, complex, imaginary)
dat <- data.frame(species = c("S.altissima", "S.rugosa", "E. graminifolia", "A. pilosus"), treatment = factor(c("Control", "Water", "Control", "Water")), height = c(1.1, 0.8, 0.9, 1), width = c(1, 1.7, 0.6, 0.2))
dat[dat[, 2] == "Water", ]
subset(dat, treatment == "Water")
#Finds all data points associated with treatment = water