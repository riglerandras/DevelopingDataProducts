data(mtcars)

myValue = 6
filtBy <- "All"

d <- mtcars
fit <- lm(mpg~wt, data=d)
predVal <- predict(fit, newdata=data.frame(wt=myValue))



plot(d$wt, d$mpg, col="steelblue", pch=19, cex=.9,
     main = paste0("Prediction of MPG based on car weight\n",
                   "Filter by transmission: ", filtBy ),
     cex.main=.9,
     xlim = c(1,6), ylim = c(5,35),
     xlab="Car weight", ylab = "MPG", cex.axis=.9, cex.lab=.9)
abline(fit, col="darkred")
abline(v=myValue, col="gray")
abline(h=predVal, col="gray")
points(myValue, predVal, pch=20, cex=2, col="darkred")
text(6,30,pos=2,labels=paste("Weight:", myValue), cex=.8)
text(6,26,pos=2,labels=paste("MPG:", round(predVal, 1)), cex=.8)
