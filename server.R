library(matlab)
library(data.table)
x <- data.table
guess <- data.table
xx <- data.table

prime <- function(number) 
{
        x <- data.table(a=1:100000,b=1)
        x$b<-isprime(x$a)
        x <- subset(x, b==1)
        x$c<-abs(x$a-number)
        low<-min(x$c)
        guess <- subset(x, c==low)
        xx<-guess$a
}

shinyServer(
        function(input, output) {
                output$inputValue <- renderText({input$number})        
                output$prediction <- renderText({
                        input$goButton
                        isolate(prime(input$number))})
        }
)


