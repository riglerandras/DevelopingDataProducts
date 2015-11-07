
data(mtcars)

shinyServer(
    function(input, output) {
        output$inputWT <- renderPrint({input$weight})
        transText <- c("Automatic", "Manual", "All")
        output$inputFilt <- renderPrint({transText[(1+as.numeric(input$transmission))]})
        output$newPlot <- renderPlot({
            d <- mtcars
            if(input$transmission != 2){
                d <- mtcars[d$am == input$transmission,]
            }                
            fit <- lm(mpg~wt, data=d)
            predVal <- predict(fit, newdata=data.frame(wt=input$weight))
            plot(d$wt, d$mpg, col="steelblue", pch=19, cex=.9,
                 main = paste0("Prediction of MPG based on car weight\n",
                               "Filter by transmission: ", transText[(1+as.numeric(input$transmission))]),
                 cex.main=.9,xlim = c(1,6), ylim = c(5,35),
                 xlab="User Specified Car Weight", 
                 ylab = "MPG", cex.axis=.9, cex.lab=.9)
            abline(fit, col="darkred")
            abline(v=input$weight, col="gray")
            abline(h=predVal, col="gray")
            points(input$weight, predVal, pch=20, cex=3, col="darkred")
            text(6,30,pos=2,labels=paste("Weight:", input$weight), cex=1)
            text(6,28,pos=2,labels=paste("Predicted MPG:", round(predVal, 1)), cex=1)    
        })
    }
)