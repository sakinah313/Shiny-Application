library(shiny)

# Define UI for application that draws a histogram
shinyUI(fluidPage(
  
  # Application title
  titlePanel("Best car to buy"),
  
  # Sidebar with a slider input for the number of bins
  sidebarLayout(
    sidebarPanel(
      sliderInput("bins",
                  "Price of the dream cars (in $1000):",
                  min = 1,
                  max = 50,
                  value = 30),
      sliderInput("bins",
                  "Gasoline Price (per gallon):",
                  min = 20,
                  max = 1000,
                  value = 30),
      
      sliderInput("bins",
                  "Distance of the car (in Miles):",
                  min = 1,
                  max = 1000,
                  value = 30)
      
    ),
    
    # Show a plot of the generated distribution
    mainPanel(
      plotOutput("distPlot")
    )
  )
))