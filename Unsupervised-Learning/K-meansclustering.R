# Importing the libraries
library(cluster)
library(caTools)
library(xgboost)
library(caret)



# Set the file path
file_path <- "C:/Users/patri/Desktop/repo/winequality-red.csv"

# Import the dataset
dataset <- read.csv(file_path, sep=";", header=TRUE)

# View the dataset
head(dataset) 


# Encoding the target feature as factor
dataset$Exited <- factor(dataset$Exited, levels = c(0, 1))  

# Identifying columns with missing values
cols_with_na <- colSums(is.na(dataset[, c(5, 6, 7, 8, 9, 10, 11, 12)])) > 0

# Imputation loop
for (col_index in which(cols_with_na)) {
  dataset[[col_index]][is.na(dataset[[col_index]])] <- mean(dataset[[col_index]], na.rm = TRUE) # Notice [[ ]] for column access
}

#Check
colSums(is.na(dataset[, c(5, 6, 7, 8, 9, 10, 11, 12)]))
colSums(is.infinite(dataset[, c(5, 6, 7, 8, 9, 10, 11, 12)])) 

# K-means clustering 
set.seed(123) 
kmeans_result <- kmeans(dataset[, c(5, 6, 7, 8, 9, 10, 11, 12)], centers = 2, iter.max = 300, nstart = 10)

# Visualising the clusters
clusplot(dataset[, c(5, 6, 7, 8, 9, 10, 11, 12)], kmeans_result$cluster, lines = 0, shade = TRUE, color = TRUE, labels = 2, plotchar = FALSE)

# Add cluster assignments
dataset$cluster <- kmeans_result$cluster 

# Splitting the dataset 
set.seed(123) 
split <- sample.split(dataset$Exited, SplitRatio = 0.8)
training_set <- subset(dataset, split == TRUE)
test_set <- subset(dataset, split == FALSE)

# Function for feature scaling within cross-validation 
scale_features <- function(data) { 
  data[-c(13, 14)] <- scale(data[-c(13, 14)]) 
  data 
}

# K-Fold Cross Validation with Grid Search
ctrl <- trainControl(method = "cv", number = 10)
grid <- expand.grid(nrounds = seq(10, 100, 20), # Hyperparameter tuning
                    eta = c(0.1, 0.3))

set.seed(123) 
classifier <- train(x = as.matrix(scale_features(training_set)[, c(5, 6, 7, 8, 9, 10, 11, 12, 14)]), 
                    y = training_set$Exited, 
                    method = "xgbTree", 
                    trControl = ctrl,
                    tuneGrid = grid) 

# Plots within groups sum of squares
wssplot <- function(data, nc=15, seed=1234){
  wss <- (nrow(data)-1)*sum(apply(data,2,var))
  for (i in 2:nc){
    set.seed(seed)
    wss[i] <- sum(kmeans(data, centers=i)$withinss)}
  plot(1:nc, wss, type="b", xlab="Number of Clusters",
       ylab="Within groups sum of squares")}


