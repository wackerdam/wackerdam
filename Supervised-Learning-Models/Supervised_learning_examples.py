#Supervised_learning_examples.py
#########################
# K-Nearest Neighbors
#########################

# import libraries
import pandas as pd
from sklearn.model_selection import train_test_split
from sklearn.neighbors import KNeighborsClassifier
from sklearn.metrics import accuracy_score
# Import the Dataset
inpPath = 'C:/.../data/'  # Update with correct file path
xDf, yDf = load_data(inpPath + 'inpFle_BCCP.csv')

xDf = inpDf.drop(columns='churn')
yDf = inpDf['churn']
# Split between train and test set
X_train, X_test, y_train, y_test = train_test_split(xDf, yDf, test_size=0.3, random_state=0)
# Set the algorithm parameters
clf = KNeighborsClassifier(n_neighbors=3)
# Fit the data
clf.fit(X_train, y_train)
# Analyse the output's score
print(clf.score(X_test, y_test))
# or
y_pred = clf.predict(X_test)
accuracy = accuracy_score(y_test, y_pred)
print(f'Accuracy: {accuracy}')

#########################
# Naive Bayes Algorithm
#########################

# import libraries
import pandas as pd
from sklearn.model_selection import train_test_split
from sklearn.naive_bayes import GaussianNB
from sklearn.metrics import accuracy_score

# Import the Dataset
inpPath = 'C:/.../data/'
inpDf = pd.read_csv(inpPath + 'inpFle_BCCP.csv', sep=',', header=0, index_col=0)

xDf = inpDf.drop(columns='churn')
yDf = inpDf['churn']
# Split between train and test set
X_train, X_test, y_train, y_test = train_test_split(xDf, yDf, test_size=0.3, random_state=0)
# Set the algorithm parameters
clf = GaussianNB(priors=None)
# Fit the data
clf.fit(X_train, y_train)
# Analyse the output's score
print(clf.score(X_test, y_test))
# or
y_pred = clf.predict(X_test)
accuracy = accuracy_score(y_test, y_pred)
print(f'Accuracy: {accuracy}')


#########################
# Support Vector machine
#########################
# import libraries
import pandas as pd
from sklearn.model_selection import train_test_split
from sklearn import svm
from sklearn.metrics import accuracy_score

# Import the Dataset
inpPath = 'C:/.../data/'
inpDf = pd.read_csv(inpPath + 'inpFle_BCCP.csv', sep=',', header=0, index_col=0)

xDf = inpDf.drop(columns='churn')
yDf = inpDf['churn']
# Split between train and test set
X_train, X_test, y_train, y_test = train_test_split(xDf, yDf, test_size=0.3, random_state=0)
# Set the algorithm parameters
clf = svm.SVC(C=1, kernel='rbf')
# Fit the data
clf.fit(X_train, y_train)
# Analyse the output's score
print(clf.score(X_test, y_test))
# or
y_pred = clf.predict(X_test)
accuracy = accuracy_score(y_test, y_pred)
print(f'Accuracy: {accuracy}')
