#
# This is the server logic of a Shiny web application. You can run the
# application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
#
#    http://shiny.rstudio.com/
#

library(shiny)

# Define server logic required to draw a histogram
shinyServer(function(input, output) {
    output$text <- renderText({
        income <- as.numeric(input$income)
        ratio <- as.numeric(input$ratio)
        price <- as.numeric(input$price)
        income <- income * (1-(ratio/100))
        mortgage <- (price * 0.02)
        price <- income/0.02
        if(income > mortgage){
            outputText <- paste("CONGRATULATIONS! YOU CAN AFFORD YOUR DREAM CAR. You can buy car as expensive as", price)
        }else{
            
            outputText<- paste("SORRY! UNFORTUNATELY YOU CAN AFFORD A CAR WITH MSRP ", price)
        }
    })
})
