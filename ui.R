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
        mainPanel(tabsetPanel(
            tabPanel("Main",
                h3('User specified inputs'),
                p('Car weight:'),
                verbatimTextOutput('inputWT'),
                p('Filter by transmission type'),
                verbatimTextOutput('inputFilt'),
                h3('Prediction results'),
                plotOutput('newPlot')),
                tabPanel("Description", includeMarkdown("README.md"))
            )
        )
    )
)