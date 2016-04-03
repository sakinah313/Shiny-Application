library(shiny)
library(datasets)
library(dplyr)
# Define server logic required to draw a histogram
shinyServer(function(input, output) {
  
  
  output$distPlot <- renderPlot({
    x    <- faithful[, 2]  # Old Faithful Geyser data
    x<-mtcars$mpg
    bins <- seq(min(x), max(x), length.out = input$bins + 1)
    # draw the histogram with the specified number of bins
    hist(x, breaks = bins, col = 'blue', border = 'white')
    
    x<-mtcars$hp
    bins <- seq(min(x), max(x), length.out = input$bins + 1)
    # draw the histogram with the specified number of bins
    hist(x, breaks = bins, col = 'red', border = 'white')
    plot(mtcars$mpg)
  })
})
