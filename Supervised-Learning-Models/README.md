README.md
# Supervised Learning Model Examples

This folder contains examples of supervised machine learning models developed for a course module (MT412). 

## Input Data

* **inpFle_BCCP.csv:** A CSV file containing key financial metrics for credit card customers. This data serves as input for the  machine learning models.  The headings include:
    * credit_score
    * isCtry1
    * isCtry2
    * isFemale
    * age
    * tenure
    * balance
    * products_credit_car 
    * active_me
    * estimated_churn

## Models Implemented

* **K-Nearest Neighbors (K-NN):**  Used to classify new customers as likely to churn or not based on their similarity to existing customers in the dataset.
* **Naive Bayes (NB):**  Calculated the probability of a customer churning based on independent assumptions about the input features.
* **Support Vector Machines (SVM):**  Constructed a decision boundary (hyperplane) to separate customers likely to churn from those likely to remain.

## Usage

**Prerequisites:**

* Python 3.x
* NumPy
* pandas
* scikit-learn 

**Instructions:**

1. Clone this repository.
2. Install the required libraries (`pip install -r requirements.txt`)
3. Experiment with the provided model examples. Example notebooks might be included in the future.

## Contributions

This project is open to contributions and improvements. If you have suggestions or want to add other supervised learning models, please feel free to open a pull request.

## Contact 

For questions or feedback, please contact [Patrick Dam] at [viet.dam2@mail.dcu.ie]. 