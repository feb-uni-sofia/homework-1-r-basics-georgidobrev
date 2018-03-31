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
xmin [xmin<21.4]

# e)
xmin [xmax>25.57143]

xmax [xmax>25.57143]

# Use the subsetting operator [] to select those elements of xmin where
# the maximal temperature was above its weekly average. 
# Note: I think that xmin was supposed to be xmax. But I'm including both of them. 

# f)

"Minimum temperatures" <- xmin
"Maximum temperatures" <- xmax

# g)
temperatures <- data.frame(xmin,xmax)

# h)
temperatures["xminFahrenheit"] <- temperatures$xmin*9/5+32
# I'm not sure if I had to create the new column in the temperatures dataframe, 
# but the principle is the same.

# i)
fahrenheit <- data.frame(temperatures$xminFahrenheit)

# j)
fahrenheitFiveDays <- data.frame(fahrenheit$temperatures.xminFahrenheit[1:5])
