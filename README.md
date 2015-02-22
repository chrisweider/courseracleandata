# courseracleandata

This repo contains Chris Weider's submission for the Course Project for the February 2015 offering of the Coursera Getting and Cleaning Data course in the Data Scientist certification.

This repo contains three files: this README, an R file containing the run_analysis function required to transform the raw data as required by the Course Project, and a code book (in CodeBook.md) which describes where the raw data originates, what it means, and how it is transformed by the run_analysis function. 

The run_analysis function requires that the 8 raw data files be unzipped and available in the working directory. The run_analysis function takes no arguments, and outputs a text file called tidydata.txt that contains the transformed data. To run the run_analysis function, issue the commands:

source("run_analysis.R")
run_analysis()

in the R console or RStudio.