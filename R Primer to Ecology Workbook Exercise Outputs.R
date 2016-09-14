
The downloaded binary packages are in
        C:\Users\Elizabeth\AppData\Local\Temp\RtmpWGxx5T\downloaded_packages
> '?' (mean)
starting httpd help server ... done
> help (mean)
> help("mean", htmlhelp = False)
Error in help("mean", htmlhelp = False) : 
  unused argument (htmlhelp = False)
> options(htmlhelp = FALSE)
> options(htmlhelp = FALSE)
> help.search("mean")
> apropos("mean")
 [1] ".colMeans"     ".rowMeans"     "colMeans"      "kmeans"        "mean"         
 [6] "mean.Date"     "mean.default"  "mean.difftime" "mean.POSIXct"  "mean.POSIXlt" 
[11] "rowMeans"      "weighted.mean"
> RSiteSearch("violin")
A search query has been submitted to http://search.r-project.org
The results page should open in your browser shortly
> RSitesSearch("violin", restrict = c("functions"))
Error: could not find function "RSitesSearch"
> RSiteSearch("violin", restrict = c("functions"))
A search query has been submitted to http://search.r-project.org
The results page should open in your browser shortly
> help(RSiteSearch)
> a <- 2+3
> a
[1] 5
> b<- a+a
> b
[1] 10
> a+b; a+a
[1] 15
[1] 10
> y <- c(8, 9, 10, 11, 12, 13, 14)
> y-1
[1]  7  8  9 10 11 12 13
> 1:4
[1] 1 2 3 4
> 4:1
[1] 4 3 2 1
> -(1:3)
[1] -1 -2 -3
> seq(from = 1, to = 3, by = 0.2)
 [1] 1.0 1.2 1.4 1.6 1.8 2.0 2.2 2.4 2.6 2.8 3.0
> seq(1, 3, length = 7)
[1] 1.000000 1.333333 1.666667 2.000000 2.333333 2.666667 3.000000
> rep(1, 3)
[1] 1 1 1
> rep (1:3, 2)
[1] 1 2 3 1 2 3
> rep(1:3, each = 2)
[1] 1 1 2 2 3 3
> mean(y) 
[1] 11
> summary(y) 
   Min. 1st Qu.  Median    Mean 3rd Qu.    Max. 
    8.0     9.5    11.0    11.0    12.5    14.0 
> class(y)
[1] "numeric"
> y>10
[1] FALSE FALSE FALSE  TRUE  TRUE  TRUE  TRUE
> y > mean(y)
[1] FALSE FALSE FALSE FALSE  TRUE  TRUE  TRUE
> y==11
[1] FALSE FALSE FALSE  TRUE FALSE FALSE FALSE
> a <- 1:3
> b <- 4:6
> a+b
[1] 5 7 9
> a*b
[1]  4 10 18
> a/2
[1] 0.5 1.0 1.5
> y[1]
[1] 8
> y[1:3]
[1]  8  9 10
> y[y > mean (y)]
[1] 12 13 14
> a <- c(5, 3, 6, NA)
> a
[1]  5  3  6 NA
> is.na(a)
[1] FALSE FALSE FALSE  TRUE
> a[!is.na(a)]
[1] 5 3 6
> na.exclude(a)
[1] 5 3 6
attr(,"na.action")
[1] 4
attr(,"class")
[1] "exclude"
> d <- na.exclude(a)
> mean(d)
[1] 4.666667
> matrix(letters[1:4], ncol = 2)
     [,1] [,2]
[1,] "a"  "c" 
[2,] "b"  "d" 
> M <- matrix(1:4, nrow = 2)
> M
     [,1] [,2]
[1,]    1    3
[2,]    2    4
> M2 <- matrix(1:4, nrow = 2, byrow = TRUE)
> M2
     [,1] [,2]
[1,]    1    2
[2,]    3    4
> 
> I <- diag(1, nrow = 2)
> I
     [,1] [,2]
[1,]    1    0
[2,]    0    1
> M[1,2]
[1] 3
> dat <- data.frame(species = c("S.altissima", "S.rugosa", "E. graminifolia", "A. pilosus"), treatment = facor(c("Control", "Water", "Control", "Water")), height = c(1.1, 0.8, 0.9, 1), width = c(1, 1.7, 0.6, 0.2))
Error in data.frame(species = c("S.altissima", "S.rugosa", "E. graminifolia",  : 
  could not find function "facor"
> dat <- data.frame(species = c("S.altissima", "S.rugosa", "E. graminifolia", "A. pilosus"), treatment = factor(c("Control", "Water", "Control", "Water")), height = c(1.1, 0.8, 0.9, 1), width = c(1, 1.7, 0.6, 0.2))
> dat
          species treatment height width
1     S.altissima   Control    1.1   1.0
2        S.rugosa     Water    0.8   1.7
3 E. graminifolia   Control    0.9   0.6
4      A. pilosus     Water    1.0   0.2
> dat[2,]
   species treatment height width
2 S.rugosa     Water    0.8   1.7
> dat[3,4]
[1] 0.6
> dat[dat[, 2] == "Water", ]
     species treatment height width
2   S.rugosa     Water    0.8   1.7
4 A. pilosus     Water    1.0   0.2
> subset(dat, treatment == "Water")
     species treatment height width
2   S.rugosa     Water    0.8   1.7
4 A. pilosus     Water    1.0   0.2
>