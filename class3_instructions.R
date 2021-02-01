# EBIO338/358: Analysis and Visualization of Biological Data
# Class 3: R Essentials Continued

# Type in your own versions of the code examples yourself; passively following along won't build your R muscles.

## Using the dollar sign operator to extract information

# Rebuild dataframe from previous class: 
cities <- c("Houston", "New York", "Atlanta", "Seattle")
population <-  c(2.1, 8.2, 0.4, 6.1)
area <- c(637, 468, 134, 142)
density <- (population/area)*1000000
mydataframe <- data.frame(cities, population, area, density)
mydataframe
# add column names
names(mydataframe) <- c("City","people","sq_miles", "pop_density")
mydataframe

# We can identify elements, rows, columns, etc in dataframes just like in matrices and vectors

mydataframe [1,2]        # element
mydataframe [2, ]        # row
mydataframe [ ,4]        # column
mydataframe [1:3, 3:4]   # subset

# Additionally, we can use $ to extract specific information based on names and elements
# First examine the structure of the data frame

str(mydataframe)

# Extract columns using column names
mydataframe$City        # Extracts column named City
mydataframe$pop_density # Extracts column named pop_density

# We can apply logical operators while extracting data
mydataframe$pop_density[mydataframe$pop_density > 3000] # Extracts population values above given value
mydataframe$area        # Null value because column does not occur in dataframe

# To add a new column to a data frame, either re-define the dataframe or use the c() function just like adding an element to a vector
mydataframe <- data.frame(mydataframe, area) # or mydataframe <- c(mydataframe, area)

# Extract rows based on labeled information
mydataframe[mydataframe$City == "Houston", ]                                  # Extracts entire row where the City is Houston
mydataframe[mydataframe$City == "Houston" | mydataframe$City == "Seattle", ]  # Extracts rows where the City is Houston or Seattle
mydataframe[mydataframe$pop_density > 3000, ]                                 # Extracts rows where population density is above a given value

