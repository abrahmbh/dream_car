#
# This is the user-interface definition of a Shiny web application. You can
# run the application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
#
#    http://shiny.rstudio.com/
#

library(shiny)

# Define UI for application that draws a histogram
shinyUI(fluidPage(

    # Application title
    titlePanel("CAN YOU AFFORD YOUR DREAM CAR?"),
    mainPanel(position = "center",
              h2("This is a very simply calculator that predicts if you can afford your dream car or not\n"), 
              h2("ASSUMPTIONS: Car mortgage per month is 2% of the msrp, mortgage is 60 months long, no downpayment is paid for the mortgage. All the remaining income is paid as car mortgage.\n"),
              h2("PLEASE ONLY ENTER NUMERIC VALUES IN THE FIELD\n")),
    # Sidebar with a user input, slider
    sidebarLayout(
        sidebarPanel(
            textInput("income", "What is your monthly income after taxes?", "2500"),
            sliderInput("ratio", "what is your income to debt ratio?", min = 1,
                        max = 100, value = 25, step = 1),
            textInput("price", "Enter MSRP of your dream car", "93749"),
            submitButton(text= "Submit")
        ),
        # Show a plot of the generated distribution
        mainPanel(
            textOutput("text")
        )
    )
))
