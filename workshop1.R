install.packages("ape", dependencies=TRUE)
install.packages("binom", dependencies=TRUE)
install.packages("car", dependencies=TRUE)
install.packages("leaps", dependencies=TRUE)
install.packages("meta", dependencies=TRUE)
install.packages("pwr", dependencies=TRUE)
install.packages("visreg", dependencies=TRUE)
install.packages("lsmeans", dependencies=TRUE)

x <- 3

z <- "Wake up Neo"

y <- 2

z <- x * y

2 + 2 == 4     # Note double "==" for logical "is equal to"
3 <= 2         # less than or equal to
"A" > "a"      # greater than
"Hi" != "hi"   # not equal to (i.e., R is case sensitive)

x <- c(1,2,333,65,45,-88,-72,8,92,46)
is.vector(x)
x[1:3]  # 1:3 is a shortcut for c(1,2,3)
length(x) #answer is 10 because we have 10 numbers
x[length(x)] #gives you the last number in the string
x > 0 #gives you T/F for every number in the string
x[x > 0] #only gives you positive numbers from string
which(x > 0) #gives you the number order of postitive numbers from the string
x[5] <- 0
x[c(2,6,10)] <- c(1,2,3)
x[2] <- NA

y <- c(5,-6,85,32,47,654,79,65,-14,1)

z <- x * y #multiplies numbers in the same string order together
z <- y - 2 * x
z <- x >= y             # great than or equal to
z <- x[abs(x) < abs(y)] # absolute values

##making a data frame = like a spreadsheet
mydata <- data.frame(x = x, y = y, stringsAsFactors = FALSE)

#delete a vector, now stored in the dataframe "mydata"
rm(x)
rm(y)

#different commands once working with dataframe
length(mydata) #answer is 2 because 2 columns
length(mydata$x) #answer is 10 as in line 26

#Paradise tree snake data

#side to side undulation
hertz <- c(0.9,1.4,1.2,1.2,1.3,2.0,1.4,1.6)
length(hertz)
hist(hertz, right = FALSE) #creates left-closed, right-open intervals
#hertz to radians/sec (1 hertz = 2pi radians)
radians <- hertz * (2 * pi)
mean(radians)
sd(radians) # = 2.035985

#mean
sum(hertz) / 8
mean(hertz)

#standard deviation
step1 <- hertz - 1.375
step2 <- step1 ^ 2
step3 <- mean(step2)
step4 <- sqrt(step3)
sd(hertz)

sort(hertz)  ##puts in numerical order

median(hertz)

#standard error = standard deviation/sqrt sample size
sd(hertz) / sqrt(8)
sd(radians) / sqrt(8) # = 0.7198293

##Missing Data
length(radians)
radians[9] <- NA
length(radians)
mean(radians[1:8])
mean(radians, na.rm = TRUE) #same as above
sd(radians, na.rm = TRUE)
sd(radians, na.rm = TRUE) / sqrt(8) #you get the wrong answer if you use the sqrt of 9??


##ANOLIS LIZARDS on separate script file

