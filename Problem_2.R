#Problem_2_Georgi Dobrev - 700890

# a)
xmin <- c(23.0, 20.5, 28.2, 20.3, 22.4, 17.2, 18.2)
xmax <- c(25.0, 22.8, 31.2, 27.3, 28.4, 20.2, 24.1)

# b)
xmax - xmin
# 2.0 2.3 3.0 7.0 6.0 3.0 5.9

# c)
mean (xmax)
# 25.57143

mean (xmin)
# 21.4

# d)
## Certainly works, but its better to
## write it this way because it is easier to understand
xmin[xmin < mean(xmin)]

xmin [xmin<21.4]

# e)
xmin [xmax>25.57143]

xmax [xmax>25.57143]

# Use the subsetting operator [] to select those elements of xmin where
# the maximal temperature was above its weekly average. 
# Note: I think that xmin was supposed to be xmax. But I'm including both of them. 

## NOTE: For the first homework this is fine but in future including unnecessary code will lead to
## grade reductions.

# f)
## WARNING: the following lines do execute but you must be aware of what they do
## You create two variables called "Minimum temperatures" and "Maximum temeperatures"
## in the global environment. Avoid creating variables with blanks in the name unless you absolutely
## known what you are doing and why you are doing it...

"Minimum temperatures" <- xmin
"Maximum temperatures" <- xmax

## correct answer
dayNames <- c('03Mon18', '04Tue18', '05Wed18', '04Thu18', '05Fri18', '06Sat18', '07Sun18')
names(xmin) <- dayNames
names(xmax) <- dayNames


# g)
temperatures <- data.frame(xmin,xmax)

# h)
temperatures["xminFahrenheit"] <- temperatures$xmin*9/5+32
# I'm not sure if I had to create the new column in the temperatures dataframe, 
# but the principle is the same.

## This is ok.

# i)
fahrenheit <- data.frame(temperatures$xminFahrenheit)

# j)

## Easier:

fahrenheit[1:5, ]
fahrenheit[-(6:7), ]

fahrenheitFiveDays <- data.frame(fahrenheit$temperatures.xminFahrenheit[1:5])
