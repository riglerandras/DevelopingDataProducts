shinyUI(
    pageWithSidebar(
        # Application title
        headerPanel("MPG prediction based on car weight"),
        
        sidebarPanel(
            h4('User inputs'),
            radioButtons('transmission','Type of transmission \n (used to filter data)',
                         choices=c("All"=2, "Automatic"=0, "Manual"=1)),
            sliderInput('weight', 'Car Weight (1000 lb)', 
                        value=3.5, min = 1, max = 6, step = .1)
        ),
        mainPanel(
            h3('Description'),
            p('This app uses the `mtcars` dataset to predict MPG (miles per 
              gallon) value based on
              the weight of a car. The app will filter the dataset according to
              user input, fit a linear model on the filtered dataset, and 
              calculate the expected value of MPG for the car weight specified by the 
              user. The filtered dataset and the expected MPG value will be
              plotted with the regression line overlaid.'),
            h3('User specified inputs'),
            p('Car weight:'),
            verbatimTextOutput('inputWT'),
            p('Filter by transmission type'),
            verbatimTextOutput('inputFilt'),
            h3('Prediction results'),
            plotOutput('newPlot')
            
        )
    )
)