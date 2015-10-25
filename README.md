# Getting and Cleaning Data Course Project

This project contains the following files:

- README.md: this document
- CodeBook.md: describes the data, data processing steps, and the features in the final data set
- run_analysis.R: performs an analysis on the data
- tidy_data_means.txt: the output of run_analysis.R

## Analysis details

The variables used in the analysis of the data are:

The analysis performed in run_analysis.R proceeds by unzipping and loading the data into the variables:
- X_train: all features, with samples from the training set
- y_train: the activity classification, with samples from the training set
- subj_train: the subject id, with samples from the training set
- X_test: all features, with samples from the test set
- y_test: the activity classification, with samples from the test set
- subj_test: the subject id, with samples from the test set

The data are then combined into a single data set, using the variables:
- X: all features, with samples from training and test combined
- y: the activity classification, with samples from training and test combined
- subj: the subject id, with samples from training and test combined

The list of features is then loaded from the dataset, and all of the features relating to mean and standard deviation are extracted into the following variables:
- features: table of feature IDs and feature names
- mean_features: features relating to mean of a measurement
- std_features: features relating to standard deviation of a measurement

These features are combined into a single feature list:
- comb_features: mean and standard deviation features combined

Using the new feature list, we extract only the desired features and store then in the variable:
- X_reduced: data for mean and standard deviation features, with samples from training and test combined

We aggregate the data using the activity and subj features of X_reduced, and calculate the mean for each feature, and store it in:
- X_means: summary data, containing the mean of features contained in X_reduced

Finally, we write the final data set to a file called "tidy_data_means.txt"