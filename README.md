# Prediction of MPG using the `mtcars` dataset
### Course Project for Developing Data Products

This is a Shiny app that has been created as a part of the peer-assessed Course Project for the Developing Data Products course on Coursera.  
The app is deployed at [shinyapps.io](https://riglerandras.shinyapps.io/DataproductsCourseProject).  
Source code and other related material is hosted on [GitHub](https://github.com/riglerandras/DevelopingDataProducts.git).  
As a part of the course project a presentation describing the application has also been created using `slidify` and is available on [github.io](http://riglerandras.github.io/DevelopingDataProducts/mtcarsPrediction/index.html).  


## App description

The application uses the `mtcars` dataset (or a subset, see below) to predict miles per gallon (`mpg`) value for a car with a user-specified weight (`wt`). The application appropriately filters and  then plots the dataset, fits a linear regression line and predicts the expected `mpg` value for the weight specified by the user.

#### User controls

- **Type of transmission**: The user can decide to use the whole `mtcars` dataset by picking the *All* option, or to filter the dataset by one of the possible transmission types, *Automatic* and *Manual*. The appropriate subset of the dataset will be used to fit the linear model.
- **Car Weight**: The user can specify a value for the car weight variable (`wt`) which will be used to predict an expected `mpg` value based on the fitted linear model.

#### Operation

- First, the app echoes the user specified inputs (car weight and transmission type).
- Then, the `mtcars` dataset is filtered according to the user-specified transmission type.
- A linear model is fitted on the filtered dataset using `lm(mpg~wt)`
- The filtered dataset is plotted, and the fitted linear regression line is overlaid.
- Using the fitted model, the app calculates the expected value of `mpg` for the user-specified car weight.
- The resulting value is also displayed on the plot (see the big red dot) and the plot is also labelled with the coordinates of the fitted point.