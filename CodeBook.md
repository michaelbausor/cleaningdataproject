# CodeBook
This file describes the variables used in the analysis of data for the class project of the Coursera Getting and Cleaning Data Project

The data used were recorded using Samsung Galaxy S smartphones, and are available at this URL:
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

The variables used in the analysis of the data are:

- X_train: all features, with samples from the training set
- y_train: the activity classification, with samples from the training set
- subj_train: the subject id, with samples from the training set
- X_test: all features, with samples from the test set
- y_test: the activity classification, with samples from the test set
- subj_test: the subject id, with samples from the test set
- X: all features, with samples from training and test combined
- y: the activity classification, with samples from training and test combined
- subj: the subject id, with samples from training and test combined

- features: table of feature IDs and feature names
- mean_features: features relating to mean of a measurement
- std_features: features relating to standard deviation of a measurement

- comb_features: mean and standard deviation features combined

- X_reduced: data for mean and standard deviation features, with samples from training and test combined

- X_means: summary data, containing the mean of features contained in X_reduced
