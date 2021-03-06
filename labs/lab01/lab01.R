# ===================================================
# Stat133: Lab 1
# Author: Gaston Sanchez
# Description: R basics with numeric vectors
# Data: Raiders statistics from season 2014-2015
# ===================================================

# In this session we'll see how to manipulate vectors
# (mostly numeric vectors)

# Start a new R session, and clean any existing objects
rm(list = ls())

# download RData file into your working directory
rdata <- "https://github.com/ucb-stat133/stat133-fall-2015/raw/master/data/raiders.RData"
download.file(url = rdata, destfile = 'raiders.RData')

# load data in your R session
load('raiders.RData')

# check loaded objects
# (if you saved previous workspaces, 
# you might have several objects in your current session)
ls()

# "raiders.RData" contains two vectors:
# 'scored': points scored by the raiders
scored

# 'against': points against raiders
against


# ===================================================
# Basic checkings
# ===================================================
# check the class of each vector
class(scored)
class(against)

# make sure they both have the same length
length(scored)
length(against)


# ===================================================
# Inspecting Scored points
# ===================================================

# Let's start with some indexing and subsetting operations

# what were the scored points of game 7
scored[7]

# what were the scored points of first 5 games
scored[1:5]
# alternatively
scored[c(1, 2, 3, 4, 5)]

# what were the scored points of games 2, 4, 6, ...
even_games <- seq(2, length(scored), by = 2)
scored[even_games]

# what happens if you specify an index=0
scored[0]

# what happens if you specify an index greater than the length 
scored[18]

# what were the scored points in the last game
last_game <- length(scored)
scored[last_game]

# create a copy of 'scored'
scored2 <- scored

# give numeric names to scored2
names(scored2) <- 1:length(scored)


# Now let's do some logical subsetting
# select those games with more than 14 points
scored2[scored2 > 14]

# select those games with less than 14 points
scored2[scored2 < 14]

# select those games with 14 points
scored2[scored2 == 14]

# select those games with 13 or 14 points
scored2[scored2 == 13 | scored2 == 14]

# select those games between 7 and 21 points
scored2[scored2 >= 7 & scored2 <= 21]


# Let's try other functions on numeric vectors
# sort scored2 in decreasing order
sort(scored2, decreasing = TRUE)

# what was the maximum value of points scored
max(scored)

# what was the minimum value of points scored
min(scored)

# what was the average scored points
mean(scored)

# what was the median scored points
median(scored)

# apply the function 'summary()' on scored points
summary(scored)

# plot a histogram with 'hist()'
hist(scored)

# Arithmetic operations on logical values
# how many games over 20 points
scored > 20
sum(scored > 20)

# how many games with less than 7 points
sum(scored < 7)

# how many games between 7 and 20 points
sum(scored >= 7 & scored <= 20)

# how many games with less than 7 or more than 20 points
sum(scored < 7 | scored > 20)

# is there any game with 7 scored points?
7 %in% scored

# approximate number of touchdowns in each game
scored / 7
# round it to two decimal digits
round(scored / 7, 2)

# take a sample (of size=6) of scored points
sample(scored, size = 6)



# ===================================================
# Against points
# Perform the same operations on vector 'against'
# ===================================================
# what were the points of game 7


# what were the points of first 5 games



# what were the points of odd games 1, 3, 5, ...


# what were the points in the last game


# create a copy of 'against'


# give names to 'against2'


# select those games with more than 21 points


# select those games with less than 21 points


# select those games between 14 and 21 points


# select those games with 13 or 14 points


# sort in decreasing order


# what was the maximum value


# what was the minimum value


# what was the average


# what was the median 


# apply the function 'summary()'


# plot a histogram


# how many games with more than 30 points 


# how many games with less than 14 points 


# how many games between 14 and 30 points


# how many games with less than 14 or more than 30 points


# is there any game with 14 received points?


# approximate number of touchdowns in each game

# round it to two decimal digits


# take a sample (size n=7) of points against



# ===================================================
# Points Difference
# ===================================================
# scatter plot scored-against
plot(scored, against)

# we haven't talked about plots but let's try this
plot(scored, against, pch = 19, col = "#62a4d6bb", cex = 2)

# create a new vector:  difference = scored - against
difference <- scored - against

# sort difference
sort(difference)

# plot the difference using a bar-chart
# is there anything that surprises you?
# is there anything that looks atypical?
barplot(difference)

# how many games the raiders won?
sum(difference > 0)

# how many games the raiders lost?
sum(difference < 0)

# what game had the largest negative difference?
which.min(difference)

# what game had the largest positive difference?
which.max(difference)

# what was the average point difference?
mean(difference)

