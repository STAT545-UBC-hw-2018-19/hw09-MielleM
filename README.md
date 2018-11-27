using Makefiles
=============

 Most of the content of this repo was taken from [here](http://stat545-ubc.github.io/automation04_make-activity.html), through the [STAT 547](http://stat545-ubc.github.io) course at UBC. The purpose of this assignment was to use a Makefile to run a set of R files and generate data sets with accompanying images and reports. 
 
My alterations: 

  * Add an [R script](https://github.com/STAT545-UBC-students/hw09-MielleM/blob/master/suffix.R) to generate a [.tsv](https://github.com/STAT545-UBC-students/hw09-MielleM/blob/master/suffix.tsv) of English word suffixes
  * Add a [.md](https://github.com/STAT545-UBC-students/hw09-MielleM/blob/master/suffixreport.md) to generate a report and discuss my suffix data
  * Alter [Makefile](https://github.com/STAT545-UBC-students/hw09-MielleM/blob/master/Makefile) to run new scripts and create a histogram of suffixes
  * Alter Makefile to include appropriate dependencies and clear new outputs
