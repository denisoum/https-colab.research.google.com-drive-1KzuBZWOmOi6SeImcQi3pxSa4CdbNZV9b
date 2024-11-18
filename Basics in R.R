---
title: "Basics in R"
author: "BSITC01/1547/2022"
date: "2024-11-07"
output: word_document
---

```{r}
#creating dataframe
mydata <- data.frame(x=c(2,2.5,3,4,4.5,4.5,5,3,6,6.5),
                     y=c(22,34,33,37,40,45,49,30,58,58))
mydata
library(readr)
 Loan<- read_csv("bank-loan.csv")
 Loan
 head(Loan,5)
 tail(Loan,5)
 summary(Loan)
 dim(Loan)
 


  # R Chunk 3: Student Performance Data

# i. Input the data into R environment and output the table.
student_data <- data.frame(
  Gender = c("Female", "Female", "Female", "Male", "Male", "Female"),
  Race = c("Group B", "Group C", "Group B", "Group A", "Group C", "Group B"),
  Lunch = c("Standard", "Standard", "Standard", "Free", "Standard", "Standard"),
  Prep_Course = c("None", "Completed", "None", "None", "None", "None"),
  Statistics_Score = c(72, 69, 90, 47, 76, 71),
  Reading_Score = c(72, 90, 95, 57, 78, 83),
  Writing_Score = c(74, 88, 93, 44, 75, 78)
)
print(student_data)

# ii. Output the first 5 rows of the data.
head(student_data, 5)

# iii. Filter observations for female students.
female_students <- subset(student_data, Gender == "Female")
print(female_students)

# iv. Sort the observations using Statistics Scores in ascending order and Reading Scores in descending order.
sorted_data <- student_data[order(student_data$Statistics_Score, -student_data$Reading_Score), ]
print(sorted_data)

# v. Create a new column titled "Total Score" that calculates the total score for each student in the three subjects.
student_data$Total_Score <- student_data$Statistics_Score + student_data$Reading_Score + student_data$Writing_Score
print(student_data)

# vi. Perform correlation between Statistics score and Writing Score and plot a Scatter plot of the two variables.
correlation <- cor(student_data$Statistics_Score, student_data$Writing_Score)
print(correlation)
# Plot a Scatter plot
plot(student_data$Statistics_Score, student_data$Writing_Score,
     xlab = "Statistics Score", ylab = "Writing Score",
     main = "Scatter Plot of Statistics Score vs Writing Score",
     col = "blue", pch = 16)

# vii. Plot a histogram of the Statistics Score.
hist(student_data$Statistics_Score, main = "Histogram of Statistics Score",
     xlab = "Statistics Score", col = "lightblue", border = "black")

# R Chunk 4: DEALING WITH MATRICES

# (a) Mat1 tasks
# i. Input the data into R and form a 3x4 matrix named Mat1.
data_values <- c(5, 0, 6, 1, 3, 5, 9, 5, 7, 1, 5, 3)
Mat1 <- matrix(data_values, nrow = 3, ncol = 4)
print


# ii. Output the first row of Mat1.
first_row <- Mat1[1, ]
print(first_row)

# iii. Output the element in the 2nd row and 3rd column.
element_2_3 <- Mat1[2, 3]
print(element_2_3)

# iv. Find the inverse of a 3x3 matrix created from Mat1.
# Extract a 3x3 matrix from the first 9 elements for invertibility.
Mat1_3x3 <- matrix(data_values[1:9], nrow = 3, ncol = 3)
Mat1_inverse <- solve(Mat1_3x3)
print(Mat1_inverse)

# (b) R Chunk 5: Define and work with matrix mat2

# i. Input the matrix in R and name it mat2
mat2 <- matrix(c(3, 4, 1, 3, 1, 5, 2, 1, 1, 1, 0, 2, 1, 0, 2), nrow = 5, ncol = 3, byrow = TRUE)
print(mat2)
rownames(mat2) <- c("United States","Great Britain","Canada","Russia","Switzerland")
colnames(mat2) <- c("Gold","Silver","Bronze")
print(mat2)
first_row <- mat2[1, ]
first_row
dim(mat2)
matrixrbind <-rbind(c(1,2,3),c(4,5,6),c(7,8,9)) 
matrixrbind
matrixcbind <-cbind(c(1,4,7),c(2,5,8),c(3,6,9)) 
matrixcbind

```


