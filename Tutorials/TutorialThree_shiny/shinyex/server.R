#### Server.R ########
library(shiny)
library(ggplot2)
library(googleVis)
data("Fruits")

# Define server logic required to draw a histogram
shinyServer(function(input, output) {
  
  output$plot <- renderPlot({
    selectedData <- subset(Fruits, Fruits$Year==input$integer)
    p <- ggplot(selectedData, aes(x=Sales, y=Expenses, colour=Fruit))+
      geom_point(aes(size=Profit))
    print(p)
  })
  
})