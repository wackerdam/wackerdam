README-KMC.md
# K-Means Clustering and XGBoost Model on Wine Quality Dataset

This repository contains an R script ("K-meansclustering.R") that performs the following:

1. **Data Preprocessing:**
   * Loads the "winequality-red.csv" dataset.
   * Handles missing values using mean imputation.
   * Encodes a target feature (presumably representing wine quality) as a categorical factor.

2. **K-Means Clustering:**
   * Performs K-Means clustering with 2 centers on a subset of the dataset's features.
   * Visualizes the resulting clusters.
   * Adds cluster assignments back to the dataset.

3. **XGBoost Model Development:**
   * Splits the dataset into training and testing sets.
   * Defines a feature scaling function.
   * Trains an XGBoost model using cross-validation and grid search for hyperparameter tuning.  

**Prerequisites**

* **R:** The code is written in the R programming language  
* **R Packages:** The following should be installed:
    * `cluster`
    * `caTools`
    * `xgboost`
    * `caret` 

**Dataset**

* **"winequality-red.csv"**: This dataset contains features related to red wine quality. It should be placed in the  "C:/Users/patri/Desktop/repo/" directory or the `file_path` in the code adjusted accordingly.  The dataset is assumed to have:
   * A target column named "Exited" representing a categorical outcome (e.g., good/bad quality).
   * Relevant features in columns 5-12 for clustering.

**Instructions**

1. **Install Packages:** If needed, install the required R packages: `install.packages(c("cluster", "caTools", "xgboost", "caret"))` 
2. **Place Dataset:** Place the "winequality-red.csv" file in the correct directory.
3. **Run the Script:** Execute the "K-meansclustering.R" script in your R environment.

**Additional Notes:**

* **Adjust `file_path`:** Update the file path if your dataset is located elsewhere.
* **Exploratory Analysis:** Consider further data exploration and consider alternative imputation methods if missing values are common.
* **Clustering Validation:** Evaluate if K-Means with 2 clusters is the optimal approach using metrics like the silhouette coefficient. 

**Contributions**

Feel free to suggest improvements, explore different modeling techniques, or adapt the analysis for other datasets!  