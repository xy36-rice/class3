# EBIO 338/538 Class 03 R Essentials Practice Exercises

#1 Clear all objects
rm(list=ls())
#2 Create a vector named A with a length of 6 that contains odd number integer values starting with 3.
A <- seq(3, 3 + 2 * (6 - 1), 2)
#3 Create a vector named B with the same values as A but using a different function 
B <- c(3, 5, 7, 9, 11, 13)
#4 Multiple B by 3 and save as a new vector called C
C <- B * 3
#5 Combine objects A and C into a dataframe called D
D <- data.frame(A, C)
#6 Extract the second column of D
D[, 2]
#7 Extract the third row of D
D[3, ]
#8 Extract the element of D that equals 33
D[5, 2]
#9 Extract the element of D that equals 7
D[3, 1]
#10 How many rows does D have?
dim(D)[1]
#11 How many columns does D have?
dim(D)[2]
#12 Extract all values of B greater than 7
B[B>7]
#13 Extract values of A less than 5 or greater than 11
A[(A<5) | (A>11)]
#14 Extract values of A greater than 5 and less than 11
A[(A>5) | (A<11)]
#15 What is the mean of A?
mean(A)
#16 What is the median of B?
median(B)
#17 What is the difference between the mean of A and the median of B?
mean(A) - median(B)
#18 Remove row 4 from D
D <- D[-4, ]
#19 Generate a vector with a length of 8 that contains the numbers 8, 9, 10, 11 repeated 
rep(8:11, 2)
#20 What is the square root of 4096?
sqrt(4096)
#21 What is 7 raised to the power of 7?
7 ^ 7
#22 What is 8 plus 2 times 27 divided by 4?
8 + (2 * 27 / 4)
#23 Is 4 raised to the power of 3 greater than 27 times 3?
4 ^ 3 > 27 * 3
#24 Is 12 divided by 4 equal to the square root of 9?  
12 / 4 == sqrt(9)
#25 Create a vector named fam that contains the name of each of your immediate family members
fam <- c("Ping Chu", "Guoying Yan", "Xiaoyang Yan")
#26 Create a vector named fam2 that repeats each family member's name 3x in a row
fam2 <- rep(fam, each = 3)
#27 Check the names of all objects you have created so far
ls()
#28 Does this list correspond to the values listed in the "Environment" tab in the upper right quadrant?
print("Yes")
#29 Remove the object fam2
rm(fam2)
#30 Check the name of all objects you have created again to see if fam2 has been removed
ls()
#31 What is the length of the vector fam2? 
length(fam2)
#32 Is fam numeric?
is.numeric(fam)
#33 Is fam a factor?
is.factor(fam)
#34 What class is fam?
class(fam)
#35 Convert fam2 to a factor
fam2 <- as.factor(fam2)
#36 Create an object named age that has the age in years for each family member
age <- c(58, 61, 30)
#37 Create an object named work that has each family member's job
work <- c(rep("retired", 2), "student")
#38 Create an object named hobby that has each family member's hobby
hobby <- c("dance", "photography", "coding")
#39 Create an object named hours that has each family members number of weekly hobby hours
hours <- c(3, 5, 20)
#40 Combine all family information into a single dataframe called fam_data
fam_data <- data.frame(fam, age, work, hobby, hours)
#41 Rename the columns as name, age, job, hobby, time
names(fam_data) <- c("name", "age", "job", "hobby", "time")
#42 What are the row names for fam_data?
row.names(fam_data)
#43 Assign family members' names as rownames for fam_data
row.names(fam_data) <- fam_data$name
#44 What are the dimensions of fam_data?
dim(fam_data)
#45 Now remove the column containing family members' names
fam_data <- fam_data[, -1]
#46 What are the dimensions of fam_data now?
dim(fam_data)
#47 Extract row 2 of fam_data for the family member based on the name of their hobby
fam_data[fam_data$hobby == sort(fam_data$hobby)[2],]
#48 Extract row 3 of fam_data for the family member based on the name of their work
fam_data[fam_data$job == sort(fam_data$job)[3],]
#49 Remove the youngest family member and their associate data from fam_data
fam_data <- fam_data[fam_data$age != sort(fam_data$age)[1],]
#50 Create a matrix of zeros that has 10 rows and 15 columns called mat
mat <- matrix(rep(0, 10 * 15), 10, 15)
#51 Add row names 1-10 and column names "Freshman", "Sophomore", "Junior" to the matrix
rownames(mat) <- 1:10
colnames(mat) <- rep(c("Freshman", "Sophomore", "Junior"), 15 / 3)
#52 Repopulation the matrix above with 7s
mat[] <- 7
#53 Multiple each row in mat by the value of its row number
mat <- mat[1:10, ] * 1:10
#54 Create a character vector called species that contains cat, horse, capuchin monkey, blue morpho butterfly, and coral snake. 
# Check to be sure it is a character vector.
species <- c("cat", "horse", "capuchin monkey", "blue morpho butterfly", "coral snake")
class(species)
#55 Create a numeric vector called abundance that contains the numbers 7, 2, 22, 45, 1, 8.
# There are 7 cats, 2 horses, 22 capuchin monkeys, 45 blue morpho butterflies and 1 rattlesnake.
# Check to be sure it is a numeric vector. 
abundance <- c(7, 2, 22, 45, 1)
class(abundance)
#56 Create a number vector called mass that specifies the average mass in kg for each animal in species. 
# Horse = 400 kg, Cat = 10 kg, Rattlesnake = 2.3 kg, Blue morpho = 0.003, Capuchin monkey = 2.7 kg. 
mass <- c(10, 400, 2.7, 0.003, 2.3)
#57 Create a dataframe called species_data that has abundance and mass information that corresponds to species. 
species_data <- data.frame(species, abundance, mass)
#58 Extract the coral snake data
species_data[species_data$species == "coral snake",]
#59 Create a new column of data in species_data called type that specifies whether each animal is domestic or wild
type <- c("domestic", "domestic", "wild", "wild", "wild")
species_data <- data.frame(species_data, type)
#60 Examine the structure of species_data. Is species_data$type of class character? What class is it?
class(species_data$type)
#61 Convert the kg mass measurements into grams. Add a new column to species_data that has weights stored in grams
weight <- species_data$mass * 1000
species_data <- data.frame(species_data[, 1:3], weight, type = species_data[, 4])
#62 Extract rows of species_data for species with more than 20 individuals
species_data[species_data$abundance > 20,]
#63 Extract rows of species_data for domestic species only
species_data[type == "domestic",]
#64 Extract rows of species_data for the horse and coral snake
#a) using species data
species_data[species_data$species == "horse" | species_data$species == "coral snake",]
#b) using mass
species_data[species_data$mass == 400 | species_data$mass == 2.3,]
#c) using abundance data
species_data[species_data$abundance <= 2,]

# Which approach was the most efficient and why?
# abundance because it required the least code

#65 Remove the horse observation from the data frame
species_data[-2,]
#66 Using code, show if the type for capuchin monkey is the same as the type for coral snake (TRUE/FALSE)
species_data[species_data$species == "capuchin monkey", ]$type == species_data[species_data$species == "coral snake", ]$type
#67 Using code, show if the mass for capuchin monkey is larger than the mass for cat (TRUE/FALSE)
species_data[species_data$species == "capuchin monkey", ]$mass > species_data[species_data$species == "cat", ]$mass
#68 Create a new data frame called species_data2 that contains all information from species_data twice
species_data2 <- rbind(species_data, species_data)
#69 Create a new data frame called species_data3 that contains all information from species_data and contains a second row with cat data
species_data3 <- rbind(species_data[1,],
                       species_data[species_data$species == "cat",],
                       species_data[2:5,])
rownames(species_data3) <- 1:6
#70 Remove the horse data from species_data3 
species_data3 <- species_data3[-3,]
#71 Identify duplicated rows of data in species_data3
duplicated(species_data3)
