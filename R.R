1:50
seq(1,50, by = 3)
seq(1,50, by = 5)
seq(1,50, by = 10)

 #What are the different data objects in R? 
# write syntax and example for each and every object.

#There are 6 types of objects in R programming.
#They include vector, list, matrix, array, factor, and data frame.

# Atomic vector of type char.
print("abc");
# Atomic vector of type double.
print("12.5");
# Atomic vector of type integer.
print("63L");
# Atomic vector of type logical.
print("TRUE");
# Atomic vector of type complex.
print("2+3i");
# Atomic vector of type raw.
print(charToRaw('hello'))

# create a list containing strings, numbers, vectors, and a logical.
# values.
list_data <- list("Red", "green", c(21,32,11), TRUE, 51.23, 119.1)
print(list_data);

# create a list containing a vector, a matrix and a list.
list_data <- list(c("Jan", "Feb", "Mar"), matrix(c(3,9,5,1,-2,8), nrow = 2),
list("green", 12.3))

  # create names to the elements in the list.
names(list_data) <- c("1st Quarter", "A_Matrix", "A Inner list")
# show the list
print(list_data)
# Elements are arranged sequentially by row.
M <- matrix(c(3:14), nrow = 4, byrow = TRUE)
print(M)
# Elements are arranged sequentially by column.
N <- matrix(c(3:14), nrow = 4, byrow = FALSE)
print(N)
# Define the column and row names.
rownames = c("row1", "row2", "row3", "row4")
colnames = c("col1", "col2", "col3")
p <- matrix(c(3:14), nrow = 4, byrow = TRUE, dimnames = list(rownames, colnames))
print(p)

# create two vectors of different lengths
vector1 <- c(5,9,3)
vector2 <- c(10,11,12,13,14,15)
# Take these vectors as input to the array.
result <- array(c(vector1, vector2), dim = c(3,3,2))
print(result)

# create two vectors of different lengths.
vector1 <- c(5,9,3)
vector2 <- c(10,11,12,13,14,15)
column.names <- c("COL1","COL2","COL3")
row.names <- c("ROW1","ROW2","ROW3")
matrix.names <- c("Matrix1","Matrix2")
# Take these vectors as input to the array.
result <- array(c(vector1,vector2),dim = c(3,3,2),dimnames = list(row.names,column.names,matrix.names))
print(result)

# create a vector as input.
data <- c("East","West","East","North","North","East")
print(data)
print(is.factor(data))
# Apply the factor function.
factor_data <- factor(data)
print(factor_data)
print(is.factor(data))

# create the data frame.
height <- c(132,151,162,139,166,147,122)
weight <- c(48,49,66,53,67,52,40)
gender <- c("male","male","female","female","male","female","male")
# create the data frame.
input_data <- data.frame(height,weight,gender)
print(input_data)
# Test if the gender column is a factor.
print(is.factor(input_data$gender))
# print the gender column so see the levels.
print(input_data$gender)
# create the data frame.
emp_data <- data.frame(
 emp_id = c(1:5),  
 emp_name = c("Rick","Dan","Michelle","Ryan","Gary"),
 salary = c(623.3,515.2,611.0,729.0,843.25),
 start_date = as.Date(c("2012-01-01","2013-09-23","2014-11-15","2014-05-11","2015-03-27")),
 StringAsFactors = FALSE
)
# Print the data frame.
print(emp_data)

# create the data frame.
emp_data <- data.frame(
  emp_id = c(1:5),  
  emp_name = c("Rick","Dan","Michelle","Ryan","Gary"),
  salary = c(623.3,515.2,611.0,729.0,843.25),
  start_date = as.Date(c("2012-01-01","2013-09-23","2014-11-15","2014-05-11","2015-03-27")),
  StringAsFactors = FALSE
)
# print the summary.
print(summary(emp.data))
# create the data frame.
emp_data <- data.frame(
  emp_id = c(1:5),  
  emp_name = c("Rick","Dan","Michelle","Ryan","Gary"),
  salary = c(623.3,515.2,611.0,729.0,843.25),
  start_date = as.Date(c("2012-01-01","2013-09-23","2014-11-15","2014-05-11","2015-03-27")),
  StringAsFactors = FALSE
)
# Extract specific columns.
result <- data.frame(emp.data$emp_name,emp.data$salary)
print(result)

 # Create Data frame with 3 columns and 5 rows and write a code to fetch and delete row 
 #and a column using index and add new column and row to the existed data frame

# create the data frame.
emp_data <- data.frame(
  emp_id = c(1:5),  
  emp_name = c("Rick","Dan","Michelle","Ryan","Gary"),
  salary = c(623.3,515.2,611.0,729.0,843.25))
print(emp_data)
#deleting row
emp1 = emp_data[-c(2),]
print(emp1)
#deleting column
emp1 = emp_data[-2]
print(emp1)
#adding new data in existing table
emp_data <- data.frame(
  emp_id = c(1:5),  
  emp_name = c("Rick","Dan","Michelle","Ryan","Gary"),
  salary = c(623.3,515.2,611.0,729.0,843.25))

emp_data1 <- data.frame(emp_id = c(6:8), 
  emp_name = c("Nick", "jerry", "tom"),
  salary = c(222.3, 454.4, 787.9))

emp_newdata = rbind(emp_data, emp_data1)
print(emp_newdata)

# R if...else statement whether the given number is negative,positive,zero.
x <- -5
if(x > 0){
print("Non negative number")
} else {
  print("Negative number")
}  

x <- 5
if(x > 0){
  print("Positive number")
}  

x <- 0
if (x < 0) {
 print("Negative number")
} else if (x < 0) {
  print("Positive number")
} else
  print("Zero")

 #write a program to input any value and check whether it is character, numeric or special character
y = "3" 
if (y >= '0' && y <= '9')
{ 
  print("is a numeric")
} else {
  if(y>= 'a' && y <= 'z' || y >= 'A' && y <= 'Z')
    
{
print("is a character")
}
else
{
  print("this is a special character")
}
}

 # write difference between break and next also write examples for both.
# Difference between break and next.
Break = "A break statement is used inside a loop (repeat,for,while) to stop the interations and flow the control
outside of the loop"
 Next = "A next statement is useful when we want to skip the current iteration of a loop without terminating it"

# Examples of Break & Next.
  # Break
  x <- 1:5
 for (val in x) {
     if (val == 3){
         break 
     }
  print(val)
}  
  #Next
 x <- 1:5
  for (val in x) {
      if (val == 3){
          next
      }
    print(val)
  }    

 # write a program to print a given vector in reverse format  
 x= c(1,5.6,3,10,3.5,5)
 
 x = c(1,5,6,3,10,3,5,5)
 print("Original vector-1:")
 print(x)
 rx = rev(x)
 print("The said vector in reverse order:")
 print(rx)
 
Q.8 # write a program to get the mode value of the given vector,
# ("a","b","c","t","a","c","r","a","c","t","z","r","v","t","u","e","t")
 
 # create the function
 getmode <- function(v) {
   uniqv <- unique(v)
   uniqv[which.max(tabulate(match(v, uniqv)))]
 }   
 
#create the vectors with characters.
 v <- c("a","b","c","t","a","c","r","a","c","t","z","r","v","t","u","e","t")  
 
 # Calculate the mode using the user function.
  result <- getmode(v)
  print(result)

 # Write a function to filter only data belongs to 'setosa' in species of Iris dataset.( using dplyr package).
 
 names(iris) <- tolower(names(iris))
  library(dplyr)
  
#filter() the data for species setosa
  setosa <- filter(iris, species == "setosa")
  head(setosa) 
  # This displays the first six rows.
  
  
 # Create a new column for iris dataset with the name of Means_of_obs,
  # which contains mean value of each row.( using dplyr package).
  # Calculate a mean of each row.
  #and add an extra column called mean
  head(iris)
  iris_set$means_of_obs <- apply(iris_set, 1, mean)
  head(iris_set)
  
 # Filter data for the 'Versicolor' and get only 'sepel_length' and Sepel _width' columns.( using dplyr package).
  # To select the following columns.
  
  #filter() the data for species versicolor
  versicolor <- filter(iris, species == "versicolor")
  head(versicolor) 
  
  selected <- select(iris, sepal.length, sepal.width)
  head(selected)
  # To select columns sepal.length & sepal.width
  selected1 <- select(iris, sepal.length, sepal.width)
  # To print first 2 rows
  head(selected1, 3)
  
  
 # create below plots for the mtcars also write your inferences for each and every plot (use ggplot package)
 # Use Different ( Size , Colour )

 # The below script will create a "scatterplot" graph for the relation between wt(weight)
   #and mpg(miles per gallon)
x <- mtcars$wt
y <- mtcars$mpg
# plot with main and axis titles
# change point shape (pch = 19) and remove frame.
  plot(x,y, main = "Main title",
       xlab = "X axis title", ylab = "Y axis title",
       pch = 19, frame = FALSE)
# Add regression line
  plot(x,y, main = "main title",
       xlab = "X axis title", ylab = "Y axis title",
         pch = 19, frame = FALSE)
abline(lm(y ~ x, data = mtcars), col = "blue")
  
  
# The below script will create a "box plot" of MPG by car Cylinders.
boxplot(mpg~cyl,data=mtcars, main ="Car Mileage Data",
        xlab = "Number of Cylinders",
        ylab = "Miles Per Gallon")

# load library and data
data(mtcars)
dim(mtcars)

plot(mtcars$wt, mtcars$mpg)
abline(lm(mtcars$mpg~mtcars$wt))
title("Regression of MPG on Weight")

# Colored Histogram with Different Number of Bins
hist(mtcars$mpg, breaks=12, col="red")
hist(mtcars$hp, breaks=11, col="green")
hist(mtcars$wt, breaks=10, col="blue")

# Line Graph
 ggplot(data=mtcars, aes(x=cyl, y=disp, group=1)) +
     geom_line()+
    geom_point()
 
   # Bar plot
  counts <- table(mtcars$gear)
  barplot(counts, main="Car Distribution",
          xlab="Number of Gears")
     

       
   
 
  
  
  