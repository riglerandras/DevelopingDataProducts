---
title       : MPG prediction on MTCARS dataset
subtitle    : Course Project for Developing Data Projects on Coursera
author      : Andras Rigler
job         : 
framework   : io2012        # {io2012, html5slides, shower, dzslides, ...}
highlighter : highlight.js  # {highlight.js, prettify, highlight}
hitheme     : tomorrow      # 
widgets     : []            # {mathjax, quiz, bootstrap}
mode        : selfcontained # {standalone, draft}
knit        : slidify::knit2slides
font-family : Arial
---

## Introduction
This presentation is the second part of the peer-assessed Course Project for the Developing Data Products course on Coursera.  
  
The goal of the presentation is to introduce the Shiny app that has been created as a part of the course project.   
  
The app is deployed at [shinyapps.io](https://riglerandras.shinyapps.io/DataproductsCourseProject).  
  
Source code and other related material is hosted on [GitHub](https://github.com/riglerandras/DevelopingDataProducts.git).  
  
As a part of the course project a presentation describing the application has also been created using `slidify` and is available on [github.io](http://riglerandras.github.io/DevelopingDataProducts/mtcarsPrediction/index.html).  

---

## Screenshot of the application

<img height = 500 src='assets/img/app_screenshot.png' /> 

---

## How it works
The application uses the `mtcars` dataset (or a subset, see below) to predict miles per gallon (`mpg`) value for a car with a user-specified weight (`wt`). The application appropriately filters and  then plots the dataset, fits a linear regression line and predicts the expected `mpg` value for the weight specified by the user.

#### User controls  
  
The application takes two user inputs:
- **Type of transmission** (*All, Automatic, Manual*) which will be used to filter the dataset
- **Car weight**, which will be used for the prediction of `mpg`

---
## Example

Providing that user inputs are `Automatic` for transmission type and `3.2` for car weight, the application will fit the following model:

```r
data(mtcars);d<-mtcars[mtcars$am==0,];fit<-lm(mpg~wt, data=d)
```
The resulting prediction will be calculated as:

```r
predict(fit, newdata=data.frame(wt=3.2))
```

```
##        1 
## 19.30115
```






