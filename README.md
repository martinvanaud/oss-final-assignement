---
runme:
  id: 01HFXK7034X1XD8BF1KKAM40AE
  version: v2.0
---

# Tumor Classification Project

## Project Overview

This project aims to classify brain tumor images into four categories: glioma_tumor, meningioma_tumor, no_tumor, and pituitary_tumor. The classification is performed using machine learning algorithms from the scikit-learn library.

## Training Dataset

The training dataset consists of brain tumor images categorized into the following classes:

- glioma_tumor
- meningioma_tumor
- no_tumor
- pituitary_tumor

The images are preprocessed by resizing them to a fixed size of 64x64 pixels and converting them to grayscale.

## Classification Algorithm

The scikit-learn library is utilized for implementing the tumor classification. Three classifiers are considered in this project:

1. **Support Vector Machine (SVM)**:

_C-Support Vector Classification_

`sklearn.svc.SVM()`

The best hyperparameters found are:
```json
{
   "kernel": "poly", 
   "probability": true, 
   "shrinking": true
}
```
With an accuracy of: `0.84`

2. **Linear Model**:

`sklearn.linear_model.LogisticRegression()`

The best hyperparameters found are:
```json
{
  'criterion': 'entropy', 
  'max_depth': 20, 
  'min_samples_leaf': 1, 
  'min_samples_split': 5, 
  'splitter': 'random'
}
```
With an accuracy of: `0.82`

`sklearn.linear_model.Perceptron()`

The best hyperparameters found are:  
```json
{
   'C': 10, 
   'dual': false, 
   'intercept_scaling': true, 
   'max_iter': 10000, 
   'penalty': 'l2', 
   'solver': 'newton-cholesky'
}
```
With an accuracy of: `0.81`

3. **Ensemble**:

HistGradientBoostingClassifier 

The best hyperparameters found are:
```json
{
   'l2_regularization': 0.01, 
   'learning_rate': 0.2, 
   'max_depth': 5, 
   'max_leaf_nodes': None, 
   'scoring': 'loss'
}
```
With an accuracy of: `0.91`

RandomForestClassifier

The best hyperparameters found are:
```json
{
   'criterion': 'entropy', 
   'max_features': None, 
   'n_estimators': 10, 
   'n_jobs': -1
}
```
With an accuracy of: `0.71`


4. **Tree**:

`sklearn.tree.DecisionTreeClassifier()`

The best hyperparameters found are

```json
{
   'criterion': 'entropy',
   'max_depth': 20,
   'min_samples_leaf': 1,
   'min_samples_split': 5,
   'splitter': 'random'
}
```
With an accuracy of: `0.82`

5. **Neighbors**@

`sklearn.neighbors.KNeighborsClassifier()`

The best hyperparameters found are:
```json
{
   'algorithm': 'auto', 
   'n_jobs': -1, 
   'n_neighbors': 1
}
```
With an accuracy of: `0.90`

## Hyperparameter Tuning

#### **(GridSearchCV Methodology)**
GridSearchCV is utilized to systematically work through multiple combinations of hyperparameter tunes,
cross-validating as it goes to determine which tune gives the best performance. The best parameters are then selected based on the highest accuracy achieved on the training dataset.
You can read this value through the `grid_search.best_params_`

## Reproducibility

To ensure reproducibility, a fixed random seed of 42 is set where applicable. This ensures that the random processes involved in the training and evaluation of the models are consistent across different runs.

## How to Use

1. Ensure that the required libraries are installed:

```sh
pip install scikit-learn scikit-image matplotlib numpy
```

2. Run the jupyter notebook
```sh
jupyter notebook
```

Copyright and Licensing Information
This project is licensed under the GNU General Public License v3.0 License. See the LICENSE file for details.

## Contact Information

Martin VANAUD

martin.vanaud@cau.ac.kr

50231604